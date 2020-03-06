local json = require("cjson")

local SearchResults = {}
SearchResults.__index = SearchResults

function SearchResults.new (kuzzle, request, options, response, previouslyFetched)
  local self = setmetatable(SearchResults, {
    __index = {
      kuzzle = kuzzle,
      request = request,
      options = options,
      scrollAction = "scroll",
      aggregations = response.result.aggregations,
      hits = response.result.hits,
      total = response.result.total,
      fetched = table.getn(response.result.hits),
      scrollId = response.result.scrollId
    },
    __tostring = function (t)
      return json.encode(t.hits)
    end
  })

  return self
end

function SearchResults:getScrollRequest ()
  return {
    controller = self.request.controller,
    action = self.scrollAction,
    scrollId = self.scrollId
  }
end

local _getSearchAfterRequest = function (searchResults)
  local searchAfter = {}

  for k, v in pairs(searchResults.request.body.sort) do
    print(k, v)
  end

  searchResults.request.search_after = searchAfter
  return searchResults
end

function SearchResults:next ()
  if self.fetched >= self.total then
    return nil
  end

  local nextRequest = nil

  self.request.body = json.decode(self.request.body)
  print(self.request.body.sort)
  if self.scrollId then
    nextRequest = self:getScrollRequest()
  elseif self.options.size and self.request.body.sort then
    nextRequest = _getSearchAfterRequest(self)
  elseif self.options.size then
    if self.options.from and self.options.from > self.total then
      return nil
    end

    self.options.from = self.fetched
    self.request = self.nextRequest
  end

  if nextRequest == nil then
    return nil
  end

  for k, v in pairs(self.options) do
    nextRequest[k] = v
  end

  local response = self.kuzzle:query(nextRequest)

  if response.error ~= json.null then
    error(response.error.message)
  end
  return self.new(self.kuzzle, nextRequest, self.options, response, self.fetched)
end

return SearchResults
local searchResult = require('/Kuzzle/API/DataObjects/SearchResults')
local json = require("cjson")

local Document = {}
Document.__index = Document

function Document.new (kuzzle)
  local self = setmetatable(Document, {
    __index = {
      kuzzle = kuzzle
    }
  })

  return self
end

function Document:count (index, collection, query)
  return self.kuzzle:query(
    {
      controller = "document",
      action = "count",
      body = query,
      index = index,
      collection = collection
    }
  )
end

function Document:create (index, collection, content, id, options)
  return self.kuzzle:query(
    {
      controller = "document",
      action = "create",
      body = content,
      index = index,
      collection = collection,
      _id = id
    },
    options
  )
end

function Document:createOrReplace (index, collection, id, content, options)
  return self.kuzzle:query(
    {
      controller = "document",
      action = "createOrReplace",
      body = content,
      index = index,
      collection = collection,
      _id = id
    },
    options
  )
end

function Document:delete (index, collection, id, options)
  return self.kuzzle:query(
    {
      controller = "document",
      action = "delete",
      index = index,
      collection = collection,
      _id = id
    },
    options
  )
end

function Document:deleteByQuery (index, collection, query, options)
  return self.kuzzle:query(
    {
      controller = "document",
      action = "deleteByQuery",
      index = index,
      body = query,
      collection = collection
    },
    options
  )
end

function Document:get (index, collection, id, options)
  return self.kuzzle:query(
    {
      controller = "document",
      action = "get",
      index = index,
      collection = collection,
      _id = id
    },
    options
  )
end

function Document:mCreate (index, collection, documents, options)
  return self.kuzzle:query(
    {
      controller = "document",
      action = "mCreate",
      body = {
        documents = documents
      },
      index = index,
      collection = collection
    },
    options
  )
end

function Document:mCreateOrReplace (index, collection, documents, options)
  return self.kuzzle:query(
    {
      controller = "document",
      action = "mCreateOrReplace",
      body = {
        documents = documents
      },
      index = index,
      collection = collection
    },
    options
  )
end

function Document:mDelete (index, collection, ids, options)
  return self.kuzzle:query(
    {
      controller = "document",
      action = "mDelete",
      body = {
        ids = ids
      },
      index = index,
      collection = collection
    },
    options
  )
end

function Document:mGet (index, collection, ids, options)
  return self.kuzzle:query(
    {
      controller = "document",
      action = "mGet",
      body = {
        ids = ids
      },
      index = index,
      collection = collection
    },
    options
  )
end

function Document:mReplace (index, collection, documents, options)
  return self.kuzzle:query(
    {
      controller = "document",
      action = "mReplace",
      body = {
        documents = documents
      },
      index = index,
      collection = collection
    },
    options
  )
end

function Document:mUpdate (index, collection, documents, options)
  return self.kuzzle:query(
    {
      controller = "document",
      action = "mUpdate",
      body = {
        documents = documents
      },
      index = index,
      collection = collection
    },
    options
  )
end

function Document:replace (index, collection, id, content, options)
  return self.kuzzle:query(
    {
      controller = "document",
      action = "replace",
      body = content,
      index = index,
      collection = collection,
      _id = id
    },
    options
  )
end

function Document:search (index, collection, query, options)
  query = query or {}
  options = setmetatable(options or {}, {
    __index = {
      from = 0,
      size = 10,
      scroll = ""
    }
  })

  local request = {
    controller = "document",
    action = "search",
    body = query,
    index = index,
    collection = collection
  }

  local response = self.kuzzle:query(
    request,
    options
  )


  if response.error ~= json.null then
    error(response.error.message)
  end
  return searchResult.new(self.kuzzle, request, options, response)
end

return Document
return {
  auth = {
    login = {
      verb = "POST",
      url = "/_login/ =strategy"
    },
    logout = {
      url = "/_logout",
      verb = "POST"
    },
    getCurrentUser = {
      url = "/users/_me",
      verb = "GET"
    },
    getMyRights = {
      url = "/users/_me/_rights",
      verb = "GET"
    },
    checkToken = {
      url = "/_checkToken",
      verb = "POST"
    },
    updateSelf = {
      url = "/_updateSelf",
      verb = "PUT"
    },
    getStrategies = {
      url = "/strategies",
      verb = "GET"
    },
    createMyCredentials = {
      url = "/credentials/ =strategy/_me/_create",
      verb = "POST"
    },
    updateMyCredentials = {
      url = "/credentials/ =strategy/_me/_update",
      verb = "PUT"
    },
    credentialsExist = {
      url = "/credentials/ =strategy/_me/_exists",
      verb = "GET"
    },
    validateMyCredentials = {
      url = "/credentials/ =strategy/_me/_validate",
      verb = "POST"
    },
    deleteMyCredentials = {
      url = "/credentials/ =strategy/_me",
      verb = "DELETE"
    },
    getMyCredentials = {
      url = "/credentials/ =strategy/_me",
      verb = "GET"
    }
  },
  bulk = {
    import = {
      verb = "POST",
      url = "/ =index/ =collection/_bulk"
    }
  },
  document = {
    create = {
      verb = "POST",
      url = "/ =index/ =collection/_create"
    },
    search = {
      url = "/ =index/ =collection",
      verb = "GET"
    },
    scroll = {
      url = "/_scroll/ =scrollId",
      verb = "GET"
    },
    exists = {
      url = "/ =index/ =collection/ =_id/_exists",
      verb = "GET"
    },
    get = {
      url = "/ =index/ =collection/ =_id",
      verb = "GET"
    },
    mGet = {
      url = "/ =index/ =collection/_mGet",
      verb = "POST"
    },
    count = {
      url = "/ =index/ =collection/_count",
      verb = "POST"
    },
    mCreate = {
      url = "/ =index/ =collection/_mCreate",
      verb = "POST"
    },
    createOrReplace = {
      url = "/ =index/ =collection/ =_id",
      verb = "PUT"
    },
    mCreateOrReplace = {
      url = "/ =index/ =collection/_mCreateOrReplace",
      verb = "PUT"
    },
    update = {
      url = "/ =index/ =collection/ =_id/_update",
      verb = "PUT"
    },
    mUpdate = {
      url = "/ =index/ =collection/_mUpdate",
      verb = "PUT"
    },
    replace = {
      url = "/ =index/ =collection/ =_id/_replace",
      verb = "PUT"
    },
    mReplace = {
      url = "/ =index/ =collection/_mReplace",
      verb = "PUT"
    },
    delete = {
      url = "/ =index/ =collection/ =_id",
      verb = "DELETE"
    },
    mDelete = {
      url = "/ =index/ =collection/_mDelete",
      verb = "DELETE"
    },
    deleteByQuery = {
      url = "/ =index/ =collection/_query",
      verb = "DELETE"
    },
    validate = {
      url = "/ =index/ =collection/_validate",
      verb = "POST"
    }
  },
  security = {
    createFirstAdmin = {
      verb = "POST",
      url = "/_createFirstAdmin"
    },
    createRestrictedUser = {
      verb = "POST",
      url = "/users/_createRestricted"
    },
    createUser = {
      verb = "POST",
      url = "/users/_create"
    },
    getRoleMapping = {
      url = "/roles/_mapping",
      verb = "GET"
    },
    updateRoleMapping = {
      url = "/roles/_mapping",
      verb = "PUT"
    },
    getProfileMapping = {
      url = "/profiles/_mapping",
      verb = "GET"
    },
    updateProfileMapping = {
      url = "/profiles/_mapping",
      verb = "PUT"
    },
    getUserMapping = {
      url = "/users/_mapping",
      verb = "GET"
    },
    updateUserMapping = {
      url = "/users/_mapping",
      verb = "PUT"
    },
    getRole = {
      url = "/roles/ =_id",
      verb = "GET"
    },
    mGetRoles = {
      url = "/roles/_mGet",
      verb = "POST"
    },
    searchRoles = {
      url = "/roles/_search",
      verb = "POST"
    },
    createOrReplaceRole = {
      url = "/roles/ =_id",
      verb = "PUT"
    },
    createRole = {
      url = "/roles/ =_id/_create",
      verb = "POST"
    },
    deleteRole = {
      url = "/roles/ =_id",
      verb = "DELETE"
    },
    getProfile = {
      url = "/profiles/ =_id",
      verb = "GET"
    },
    mGetProfiles = {
      url = "/profiles/_mGet",
      verb = "POST"
    },
    createOrReplaceProfile = {
      url = "/profiles/ =_id",
      verb = "PUT"
    },
    createProfile = {
      url = "/profiles/ =_id/_create",
      verb = "POST"
    },
    deleteProfile = {
      url = "/profiles/ =_id",
      verb = "DELETE"
    },
    searchProfiles = {
      url = "/profiles/_search",
      verb = "POST"
    },
    getUser = {
      url = "/users/ =_id",
      verb = "GET"
    },
    getProfileRights = {
      url = "/profiles/ =_id/_rights",
      verb = "GET"
    },
    getUserRights = {
      url = "/users/ =_id/_rights",
      verb = "GET"
    },
    searchUsers = {
      url = "/users/_search",
      verb = "POST"
    },
    deleteUser = {
      url = "/users/ =_id",
      verb = "DELETE"
    },
    updateUser = {
      url = "/users/ =_id/_update",
      verb = "PUT"
    },
    replaceUser = {
      url = "/users/ =_id/_replace",
      verb = "PUT"
    },
    updateProfile = {
      url = "/profiles/ =_id/_update",
      verb = "PUT"
    },
    updateRole = {
      url = "/roles/ =_id/_update",
      verb = "PUT"
    },
    mDeleteProfiles = {
      url = "/profiles/_mDelete",
      verb = "POST"
    },
    mDeleteRoles = {
      url = "/roles/_mDelete",
      verb = "POST"
    },
    mDeleteUsers = {
      url = "/users/_mDelete",
      verb = "POST"
    },
    scrollUsers = {
      url = "/users/_scroll/ =scrollId",
      verb = "GET"
    },
    scrollProfiles = {
      url = "/profiles/_scroll/ =scrollId",
      verb = "GET"
    },
    createCredentials = {
      url = "/credentials/ =strategy/ =_id/_create",
      verb = "POST"
    },
    updateCredentials = {
      url = "/credentials/ =strategy/ =_id/_update",
      verb = "PUT"
    },
    hasCredentials = {
      url = "/credentials/ =strategy/ =_id/_exists",
      verb = "GET"
    },
    validateCredentials = {
      url = "/credentials/ =strategy/ =_id/_validate",
      verb = "POST"
    },
    deleteCredentials = {
      url = "/credentials/ =strategy/ =_id",
      verb = "DELETE"
    },
    getCredentials = {
      url = "/credentials/ =strategy/ =_id",
      verb = "GET"
    },
    getCredentialsById = {
      url = "/credentials/ =strategy/ =_id/_byId",
      verb = "GET"
    },
    getCredentialFields = {
      url = "/credentials/ =strategy/_fields",
      verb = "GET"
    },
    getAllCredentialFields = {
      url = "/credentials/_fields",
      verb = "GET"
    }
  },
  collection = {
    updateMapping = {
      url = "/ =index/ =collection/_mapping",
      verb = "PUT"
    },
    getMapping = {
      url = "/ =index/ =collection/_mapping",
      verb = "GET"
    },
    getSpecifications = {
      url = "/ =index/ =collection/_specifications",
      verb = "GET"
    },
    searchSpecifications = {
      url = "/validations/_search",
      verb = "POST"
    },
    scrollSpecifications = {
      url = "/validations/_scroll/ =scrollId",
      verb = "GET"
    },
    updateSpecifications = {
      url = "/_specifications",
      verb = "PUT"
    },
    deleteSpecifications = {
      url = "/ =index/ =collection/_specifications",
      verb = "DELETE"
    },
    validateSpecifications = {
      url = "/_validateSpecifications",
      verb = "POST"
    },
    truncate = {
      url = "/ =index/ =collection/_truncate",
      verb = "DELETE"
    },
    list = {
      url = "/ =index/_list",
      verb = "GET"
    },
    exists = {
      url = "/ =index/ =collection/_exists",
      verb = "GET"
    },
    create = {
      url = "/ =index/ =collection",
      verb = "PUT"
    }
  },
  index = {
    mDelete = {
      url = "/_mdelete",
      verb = "DELETE"
    },
    create = {
      url = "/ =index/_create",
      verb = "POST"
    },
    delete = {
      url = "/ =index",
      verb = "DELETE"
    },
    refresh = {
      url = "/ =index/_refresh",
      verb = "POST"
    },
    list = {
      url = "/_list",
      verb = "GET"
    },
    refreshInternal = {
      url = "/_refreshInternal",
      verb = "POST"
    },
    getAutoRefresh = {
      url = "/ =index/_autoRefresh",
      verb = "GET"
    },
    setAutoRefresh = {
      url = "/ =index/_autoRefresh",
      verb = "POST"
    },
    exists = {
      url = "/ =index/_exists",
      verb = "GET"
    }
  },
  ms = {
    append = {
      url = "/ms/_append/ =_id",
      verb = "POST"
    },
    bitcount = {
      url = "/ms/_bitcount/ =_id",
      verb = "GET"
    },
    bitop = {
      url = "/ms/_bitop/ =_id",
      verb = "POST"
    },
    bitpos = {
      url = "/ms/_bitpos/ =_id",
      verb = "GET"
    },
    dbsize = {
      url = "/ms/_dbsize",
      verb = "GET"
    },
    decrby = {
      url = "/ms/_decrby/ =_id",
      verb = "POST"
    },
    del = {
      url = "/ms",
      verb = "DELETE"
    },
    expire = {
      url = "/ms/_expire/ =_id",
      verb = "POST"
    },
    expireat = {
      url = "/ms/_expireat/ =_id",
      verb = "POST"
    },
    flushdb = {
      url = "/ms/_flushdb",
      verb = "POST"
    },
    geoadd = {
      url = "/ms/_geoadd/ =_id",
      verb = "POST"
    },
    geodist = {
      url = "/ms/_geodist/ =_id/ =member1/ =member2",
      verb = "GET"
    },
    geohash = {
      url = "/ms/_geohash/ =_id",
      verb = "GET"
    },
    georadius = {
      url = "/ms/_georadius/ =_id",
      verb = "GET"
    },
    georadiusbymember = {
      url = "/ms/_georadiusbymember/ =_id",
      verb = "GET"
    },
    getbit = {
      url = "/ms/_getbit/ =_id",
      verb = "GET"
    },
    getrange = {
      url = "/ms/_getrange/ =_id",
      verb = "GET"
    },
    hdel = {
      url = "/ms/_hdel/ =_id",
      verb = "DELETE"
    },
    hmget = {
      url = "/ms/_hmget/ =_id",
      verb = "GET"
    },
    hexists = {
      url = "/ms/_hexists/ =_id/ =field",
      verb = "GET"
    },
    hincrby = {
      url = "/ms/_hincrby/ =_id",
      verb = "POST"
    },
    hmset = {
      url = "/ms/_hmset/ =_id",
      verb = "POST"
    },
    hset = {
      url = "/ms/_hset/ =_id",
      verb = "POST"
    },
    hstrlen = {
      url = "/ms/_hstrlen/ =_id/ =field",
      verb = "GET"
    },
    keys = {
      url = "/ms/_keys/ =pattern",
      verb = "GET"
    },
    lindex = {
      url = "/ms/_lindex/ =_id/ =idx",
      verb = "GET"
    },
    linsert = {
      url = "/ms/_linsert/ =_id",
      verb = "POST"
    },
    lpush = {
      url = "/ms/_lpush/ =_id",
      verb = "POST"
    },
    lrange = {
      url = "/ms/_lrange/ =_id",
      verb = "GET"
    },
    lrem = {
      url = "/ms/_lrem/ =_id",
      verb = "DELETE"
    },
    lset = {
      url = "/ms/_lset/ =_id",
      verb = "POST"
    },
    ltrim = {
      url = "/ms/_ltrim/ =_id",
      verb = "POST"
    },
    mget = {
      url = "/ms/_mget",
      verb = "GET"
    },
    mset = {
      url = "/ms/_mset",
      verb = "POST"
    },
    object = {
      url = "/ms/_object/ =_id",
      verb = "GET"
    },
    pexpire = {
      url = "/ms/_pexpire/ =_id",
      verb = "POST"
    },
    pexpireat = {
      url = "/ms/_pexpireat/ =_id",
      verb = "POST"
    },
    pfadd = {
      url = "/ms/_pfadd/ =_id",
      verb = "POST"
    },
    pfmerge = {
      url = "/ms/_pfmerge/ =_id",
      verb = "POST"
    },
    ping = {
      url = "/ms/_ping",
      verb = "GET"
    },
    psetex = {
      url = "/ms/_psetex/ =_id",
      verb = "POST"
    },
    randomkey = {
      url = "/ms/_randomkey",
      verb = "GET"
    },
    rename = {
      url = "/ms/_rename/ =_id",
      verb = "POST"
    },
    renamenx = {
      url = "/ms/_renamenx/ =_id",
      verb = "POST"
    },
    rpoplpush = {
      url = "/ms/_rpoplpush",
      verb = "POST"
    },
    sadd = {
      url = "/ms/_sadd/ =_id",
      verb = "POST"
    },
    scan = {
      url = "/ms/_scan",
      verb = "GET"
    },
    sdiff = {
      url = "/ms/_sdiff/ =_id",
      verb = "GET"
    },
    sdiffstore = {
      url = "/ms/_sdiffstore/ =_id",
      verb = "POST"
    },
    set = {
      url = "/ms/_set/ =_id",
      verb = "POST"
    },
    setex = {
      url = "/ms/_setex/ =_id",
      verb = "POST"
    },
    setnx = {
      url = "/ms/_setnx/ =_id",
      verb = "POST"
    },
    sinterstore = {
      url = "/ms/_sinterstore",
      verb = "POST"
    },
    sismember = {
      url = "/ms/_sismember/ =_id/ =member",
      verb = "GET"
    },
    smove = {
      url = "/ms/_smove/ =_id",
      verb = "POST"
    },
    sort = {
      url = "/ms/_sort/ =_id",
      verb = "POST"
    },
    spop = {
      url = "/ms/_spop/ =_id",
      verb = "POST"
    },
    srandmember = {
      url = "/ms/_srandmember/ =_id",
      verb = "GET"
    },
    srem = {
      url = "/ms/_srem/ =_id",
      verb = "DELETE"
    },
    sscan = {
      url = "/ms/_sscan/ =_id",
      verb = "GET"
    },
    sunion = {
      url = "/ms/_sunion",
      verb = "GET"
    },
    sunionstore = {
      url = "/ms/_sunionstore",
      verb = "POST"
    },
    time = {
      url = "/ms/_time",
      verb = "GET"
    },
    touch = {
      url = "/ms/_touch",
      verb = "POST"
    },
    zadd = {
      url = "/ms/_zadd/ =_id",
      verb = "POST"
    },
    zcount = {
      url = "/ms/_zcount/ =_id",
      verb = "GET"
    },
    zincrby = {
      url = "/ms/_zincrby/ =_id",
      verb = "POST"
    },
    zinterstore = {
      url = "/ms/_zinterstore/ =_id",
      verb = "POST"
    },
    zlexcount = {
      url = "/ms/_zlexcount/ =_id",
      verb = "GET"
    },
    zrange = {
      url = "/ms/_zrange/ =_id",
      verb = "GET"
    },
    zrangebylex = {
      url = "/ms/_zrangebylex/ =_id",
      verb = "GET"
    },
    zrangebyscore = {
      url = "/ms/_zrangebyscore/ =_id",
      verb = "GET"
    },
    zrem = {
      url = "/ms/_zrem/ =_id",
      verb = "DELETE"
    },
    zremrangebylex = {
      url = "/ms/_zremrangebylex/ =_id",
      verb = "DELETE"
    },
    zremrangebyrank = {
      url = "/ms/_zremrangebyrank/ =_id",
      verb = "DELETE"
    },
    zremrangebyscore = {
      url = "/ms/_zremrangebyscore/ =_id",
      verb = "DELETE"
    },
    zrevrangebylex = {
      url = "/ms/_zrevrangebylex/ =_id",
      verb = "GET"
    },
    zrevrangebyscore = {
      url = "/ms/_zrevrangebyscore/ =_id",
      verb = "GET"
    },
    zrevrank = {
      url = "/ms/_zrevrank/ =_id/ =member",
      verb = "GET"
    },
    zunionstore = {
      url = "/ms/_zunionstore/ =_id",
      verb = "POST"
    },
    zcard = {
      url = "/ms/_zcard/ =_id",
      verb = "GET"
    },
    type = {
      url = "/ms/_type/ =_id",
      verb = "GET"
    },
    ttl = {
      url = "/ms/_ttl/ =_id",
      verb = "GET"
    },
    strlen = {
      url = "/ms/_strlen/ =_id",
      verb = "GET"
    },
    smembers = {
      url = "/ms/_smembers/ =_id",
      verb = "GET"
    },
    scard = {
      url = "/ms/_scard/ =_id",
      verb = "GET"
    },
    rpop = {
      url = "/ms/_rpop/ =_id",
      verb = "POST"
    },
    pttl = {
      url = "/ms/_pttl/ =_id",
      verb = "GET"
    },
    persist = {
      url = "/ms/_persist/ =_id",
      verb = "POST"
    },
    lpop = {
      url = "/ms/_lpop/ =_id",
      verb = "POST"
    },
    llen = {
      url = "/ms/_llen/ =_id",
      verb = "GET"
    },
    incr = {
      url = "/ms/_incr/ =_id",
      verb = "POST"
    },
    hvals = {
      url = "/ms/_hvals/ =_id",
      verb = "GET"
    },
    hlen = {
      url = "/ms/_hlen/ =_id",
      verb = "GET"
    },
    hkeys = {
      url = "/ms/_hkeys/ =_id",
      verb = "GET"
    },
    hgetall = {
      url = "/ms/_hgetall/ =_id",
      verb = "GET"
    },
    get = {
      url = "/ms/ =_id",
      verb = "GET"
    },
    decr = {
      url = "/ms/_decr/ =_id",
      verb = "POST"
    },
    rpushx = {
      url = "/ms/_rpushx/ =_id",
      verb = "POST"
    },
    lpushx = {
      url = "/ms/_lpushx/ =_id",
      verb = "POST"
    },
    getset = {
      url = "/ms/_getset/ =_id",
      verb = "POST"
    },
    sinter = {
      url = "/ms/_sinter",
      verb = "GET"
    },
    pfcount = {
      url = "/ms/_pfcount",
      verb = "GET"
    },
    incrbyfloat = {
      url = "/ms/_incrbyfloat/ =_id",
      verb = "POST"
    },
    incrby = {
      url = "/ms/_incrby/ =_id",
      verb = "POST"
    },
    geopos = {
      url = "/ms/_geopos/ =_id",
      verb = "GET"
    },
    hget = {
      url = "/ms/_hget/ =_id/ =field",
      verb = "GET"
    },
    hsetnx = {
      url = "/ms/_hsetnx/ =_id",
      verb = "POST"
    },
    msetnx = {
      url = "/ms/_msetnx",
      verb = "POST"
    },
    rpush = {
      url = "/ms/_rpush/ =_id",
      verb = "POST"
    },
    hincrbyfloat = {
      url = "/ms/_hincrbyfloat/ =_id",
      verb = "POST"
    },
    zrevrange = {
      url = "/ms/_zrevrange/ =_id",
      verb = "GET"
    },
    zrank = {
      url = "/ms/_zrank/ =_id/ =member",
      verb = "GET"
    },
    zscore = {
      url = "/ms/_zscore/ =_id/ =member",
      verb = "GET"
    },
    zscan = {
      url = "/ms/_zscan/ =_id",
      verb = "GET"
    },
    hscan = {
      url = "/ms/_hscan/ =_id",
      verb = "GET"
    },
    exists = {
      url = "/ms/_exists",
      verb = "GET"
    }
  },
  memoryStorage = {
    append = {
      url = "/ms/_append/ =_id",
      verb = "POST"
    },
    bitcount = {
      url = "/ms/_bitcount/ =_id",
      verb = "GET"
    },
    bitop = {
      url = "/ms/_bitop/ =_id",
      verb = "POST"
    },
    bitpos = {
      url = "/ms/_bitpos/ =_id",
      verb = "GET"
    },
    dbsize = {
      url = "/ms/_dbsize",
      verb = "GET"
    },
    decrby = {
      url = "/ms/_decrby/ =_id",
      verb = "POST"
    },
    del = {
      url = "/ms",
      verb = "DELETE"
    },
    expire = {
      url = "/ms/_expire/ =_id",
      verb = "POST"
    },
    expireat = {
      url = "/ms/_expireat/ =_id",
      verb = "POST"
    },
    flushdb = {
      url = "/ms/_flushdb",
      verb = "POST"
    },
    geoadd = {
      url = "/ms/_geoadd/ =_id",
      verb = "POST"
    },
    geodist = {
      url = "/ms/_geodist/ =_id/ =member1/ =member2",
      verb = "GET"
    },
    geohash = {
      url = "/ms/_geohash/ =_id",
      verb = "GET"
    },
    georadius = {
      url = "/ms/_georadius/ =_id",
      verb = "GET"
    },
    georadiusbymember = {
      url = "/ms/_georadiusbymember/ =_id",
      verb = "GET"
    },
    getbit = {
      url = "/ms/_getbit/ =_id",
      verb = "GET"
    },
    getrange = {
      url = "/ms/_getrange/ =_id",
      verb = "GET"
    },
    hdel = {
      url = "/ms/_hdel/ =_id",
      verb = "DELETE"
    },
    hmget = {
      url = "/ms/_hmget/ =_id",
      verb = "GET"
    },
    hexists = {
      url = "/ms/_hexists/ =_id/ =field",
      verb = "GET"
    },
    hincrby = {
      url = "/ms/_hincrby/ =_id",
      verb = "POST"
    },
    hmset = {
      url = "/ms/_hmset/ =_id",
      verb = "POST"
    },
    hset = {
      url = "/ms/_hset/ =_id",
      verb = "POST"
    },
    hstrlen = {
      url = "/ms/_hstrlen/ =_id/ =field",
      verb = "GET"
    },
    keys = {
      url = "/ms/_keys/ =pattern",
      verb = "GET"
    },
    lindex = {
      url = "/ms/_lindex/ =_id/ =idx",
      verb = "GET"
    },
    linsert = {
      url = "/ms/_linsert/ =_id",
      verb = "POST"
    },
    lpush = {
      url = "/ms/_lpush/ =_id",
      verb = "POST"
    },
    lrange = {
      url = "/ms/_lrange/ =_id",
      verb = "GET"
    },
    lrem = {
      url = "/ms/_lrem/ =_id",
      verb = "DELETE"
    },
    lset = {
      url = "/ms/_lset/ =_id",
      verb = "POST"
    },
    ltrim = {
      url = "/ms/_ltrim/ =_id",
      verb = "POST"
    },
    mget = {
      url = "/ms/_mget",
      verb = "GET"
    },
    mset = {
      url = "/ms/_mset",
      verb = "POST"
    },
    object = {
      url = "/ms/_object/ =_id",
      verb = "GET"
    },
    pexpire = {
      url = "/ms/_pexpire/ =_id",
      verb = "POST"
    },
    pexpireat = {
      url = "/ms/_pexpireat/ =_id",
      verb = "POST"
    },
    pfadd = {
      url = "/ms/_pfadd/ =_id",
      verb = "POST"
    },
    pfmerge = {
      url = "/ms/_pfmerge/ =_id",
      verb = "POST"
    },
    ping = {
      url = "/ms/_ping",
      verb = "GET"
    },
    psetex = {
      url = "/ms/_psetex/ =_id",
      verb = "POST"
    },
    randomkey = {
      url = "/ms/_randomkey",
      verb = "GET"
    },
    rename = {
      url = "/ms/_rename/ =_id",
      verb = "POST"
    },
    renamenx = {
      url = "/ms/_renamenx/ =_id",
      verb = "POST"
    },
    rpoplpush = {
      url = "/ms/_rpoplpush",
      verb = "POST"
    },
    sadd = {
      url = "/ms/_sadd/ =_id",
      verb = "POST"
    },
    scan = {
      url = "/ms/_scan",
      verb = "GET"
    },
    sdiff = {
      url = "/ms/_sdiff/ =_id",
      verb = "GET"
    },
    sdiffstore = {
      url = "/ms/_sdiffstore/ =_id",
      verb = "POST"
    },
    set = {
      url = "/ms/_set/ =_id",
      verb = "POST"
    },
    setex = {
      url = "/ms/_setex/ =_id",
      verb = "POST"
    },
    setnx = {
      url = "/ms/_setnx/ =_id",
      verb = "POST"
    },
    sinterstore = {
      url = "/ms/_sinterstore",
      verb = "POST"
    },
    sismember = {
      url = "/ms/_sismember/ =_id/ =member",
      verb = "GET"
    },
    smove = {
      url = "/ms/_smove/ =_id",
      verb = "POST"
    },
    sort = {
      url = "/ms/_sort/ =_id",
      verb = "POST"
    },
    spop = {
      url = "/ms/_spop/ =_id",
      verb = "POST"
    },
    srandmember = {
      url = "/ms/_srandmember/ =_id",
      verb = "GET"
    },
    srem = {
      url = "/ms/_srem/ =_id",
      verb = "DELETE"
    },
    sscan = {
      url = "/ms/_sscan/ =_id",
      verb = "GET"
    },
    sunion = {
      url = "/ms/_sunion",
      verb = "GET"
    },
    sunionstore = {
      url = "/ms/_sunionstore",
      verb = "POST"
    },
    time = {
      url = "/ms/_time",
      verb = "GET"
    },
    touch = {
      url = "/ms/_touch",
      verb = "POST"
    },
    zadd = {
      url = "/ms/_zadd/ =_id",
      verb = "POST"
    },
    zcount = {
      url = "/ms/_zcount/ =_id",
      verb = "GET"
    },
    zincrby = {
      url = "/ms/_zincrby/ =_id",
      verb = "POST"
    },
    zinterstore = {
      url = "/ms/_zinterstore/ =_id",
      verb = "POST"
    },
    zlexcount = {
      url = "/ms/_zlexcount/ =_id",
      verb = "GET"
    },
    zrange = {
      url = "/ms/_zrange/ =_id",
      verb = "GET"
    },
    zrangebylex = {
      url = "/ms/_zrangebylex/ =_id",
      verb = "GET"
    },
    zrangebyscore = {
      url = "/ms/_zrangebyscore/ =_id",
      verb = "GET"
    },
    zrem = {
      url = "/ms/_zrem/ =_id",
      verb = "DELETE"
    },
    zremrangebylex = {
      url = "/ms/_zremrangebylex/ =_id",
      verb = "DELETE"
    },
    zremrangebyrank = {
      url = "/ms/_zremrangebyrank/ =_id",
      verb = "DELETE"
    },
    zremrangebyscore = {
      url = "/ms/_zremrangebyscore/ =_id",
      verb = "DELETE"
    },
    zrevrangebylex = {
      url = "/ms/_zrevrangebylex/ =_id",
      verb = "GET"
    },
    zrevrangebyscore = {
      url = "/ms/_zrevrangebyscore/ =_id",
      verb = "GET"
    },
    zrevrank = {
      url = "/ms/_zrevrank/ =_id/ =member",
      verb = "GET"
    },
    zunionstore = {
      url = "/ms/_zunionstore/ =_id",
      verb = "POST"
    },
    zcard = {
      url = "/ms/_zcard/ =_id",
      verb = "GET"
    },
    type = {
      url = "/ms/_type/ =_id",
      verb = "GET"
    },
    ttl = {
      url = "/ms/_ttl/ =_id",
      verb = "GET"
    },
    strlen = {
      url = "/ms/_strlen/ =_id",
      verb = "GET"
    },
    smembers = {
      url = "/ms/_smembers/ =_id",
      verb = "GET"
    },
    scard = {
      url = "/ms/_scard/ =_id",
      verb = "GET"
    },
    rpop = {
      url = "/ms/_rpop/ =_id",
      verb = "POST"
    },
    pttl = {
      url = "/ms/_pttl/ =_id",
      verb = "GET"
    },
    persist = {
      url = "/ms/_persist/ =_id",
      verb = "POST"
    },
    lpop = {
      url = "/ms/_lpop/ =_id",
      verb = "POST"
    },
    llen = {
      url = "/ms/_llen/ =_id",
      verb = "GET"
    },
    incr = {
      url = "/ms/_incr/ =_id",
      verb = "POST"
    },
    hvals = {
      url = "/ms/_hvals/ =_id",
      verb = "GET"
    },
    hlen = {
      url = "/ms/_hlen/ =_id",
      verb = "GET"
    },
    hkeys = {
      url = "/ms/_hkeys/ =_id",
      verb = "GET"
    },
    hgetall = {
      url = "/ms/_hgetall/ =_id",
      verb = "GET"
    },
    get = {
      url = "/ms/ =_id",
      verb = "GET"
    },
    decr = {
      url = "/ms/_decr/ =_id",
      verb = "POST"
    },
    rpushx = {
      url = "/ms/_rpushx/ =_id",
      verb = "POST"
    },
    lpushx = {
      url = "/ms/_lpushx/ =_id",
      verb = "POST"
    },
    getset = {
      url = "/ms/_getset/ =_id",
      verb = "POST"
    },
    sinter = {
      url = "/ms/_sinter",
      verb = "GET"
    },
    pfcount = {
      url = "/ms/_pfcount",
      verb = "GET"
    },
    incrbyfloat = {
      url = "/ms/_incrbyfloat/ =_id",
      verb = "POST"
    },
    incrby = {
      url = "/ms/_incrby/ =_id",
      verb = "POST"
    },
    geopos = {
      url = "/ms/_geopos/ =_id",
      verb = "GET"
    },
    hget = {
      url = "/ms/_hget/ =_id/ =field",
      verb = "GET"
    },
    hsetnx = {
      url = "/ms/_hsetnx/ =_id",
      verb = "POST"
    },
    msetnx = {
      url = "/ms/_msetnx",
      verb = "POST"
    },
    rpush = {
      url = "/ms/_rpush/ =_id",
      verb = "POST"
    },
    hincrbyfloat = {
      url = "/ms/_hincrbyfloat/ =_id",
      verb = "POST"
    },
    zrevrange = {
      url = "/ms/_zrevrange/ =_id",
      verb = "GET"
    },
    zrank = {
      url = "/ms/_zrank/ =_id/ =member",
      verb = "GET"
    },
    zscore = {
      url = "/ms/_zscore/ =_id/ =member",
      verb = "GET"
    },
    zscan = {
      url = "/ms/_zscan/ =_id",
      verb = "GET"
    },
    hscan = {
      url = "/ms/_hscan/ =_id",
      verb = "GET"
    },
    exists = {
      url = "/ms/_exists",
      verb = "GET"
    }
  },
  realtime = {
    list = {
      url = "/_listSubscriptions",
      verb = "GET"
    },
    publish = {
      url = "/ =index/ =collection/_publish",
      verb = "POST"
    }
  },
  server = {
    getStats = {
      url = "/_getStats",
      verb = "GET"
    },
    getLastStats = {
      url = "/_getLastStats",
      verb = "GET"
    },
    getAllStats = {
      url = "/_getAllStats",
      verb = "GET"
    },
    getConfig = {
      url = "/_getConfig",
      verb = "GET"
    },
    adminExists = {
      url = "/_adminExists",
      verb = "GET"
    },
    now = {
      url = "/_now",
      verb = "GET"
    },
    healthCheck = {
      url = "/_healthCheck",
      verb = "GET"
    },
    info = {
      url = "/",
      verb = "GET"
    }
  },
  admin = {
    resetKuzzleData = {
      url = "/admin/_resetKuzzleData/",
      verb = "POST"
    },
    resetCache = {
      url = "/admin/_resetCache",
      verb = "POST"
    },
    resetSecurity = {
      url = "/admin/_resetSecurity/",
      verb = "POST"
    },
    resetDatabase = {
      url = "/admin/_resetDatabase/",
      verb = "POST"
    },
    dump = {
      url = "/admin/_dump",
      verb = "POST"
    },
    shutdown = {
      url = "/admin/_shutdown/",
      verb = "POST"
    }
  }
}
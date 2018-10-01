Official Kuzzle LUA SDK - ALPHA VERSION
======

## About Kuzzle

A backend software, self-hostable and ready to use to power modern apps.

You can access the Kuzzle repository on [Github](https://github.com/kuzzleio/kuzzle)

## SDK Documentation

The complete SDK documentation is available [here](http://docs.kuzzle.io/sdk-reference/)

## Protocol used

The LUA SDK implements the websocket protocol.

### Dependencies

You need the liblua5.3-dev.

### Build

Execute the following snippet to clone the GIT repository, and build the SDK. It will then be available in the "build/" directory

```sh
git clone --recursive git@github.com:kuzzleio/sdk-lua.git
git submodule update --init --recursive
cd sdk-lua
make
```

### Example

```lua
require('kuzzlesdk');

kuzzle = kuzzlesdk.Kuzzle("localhost");

-- connect
kuzzle:connect();
-- get Kuzzle timestamp
timestamp = kuzzle.server:now();
print(timestamp);

-- Create an index
kuzzle.index:create("index");
-- Create a collection in the index
kuzzle.collection:create("index", "collection")

-- Create a document in the collection
res = kuzzle.document:create("index", "collection", "", "{\"name\": \"Joe\"}");
-- Print the json response
print(res);
-- Disconnect from Kuzzle
kuzzle:disconnect();

```

local websocket = require "http.websocket"
local socket    = require "socket" 


local ws, err = websocket.new_from_uri("ws://localhost:8765")

assert(ws:connect())            

assert(ws:send("Hello world! 1"))
assert(ws:send("Hello world! 2"))

socket.sleep(5)              


for i = 1, 2 do
    local msg = assert(ws:receive())
    print("received:", msg)
end

ws:close()
print("closed")

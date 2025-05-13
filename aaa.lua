

function Main()
    local websocket = require "http.websocket"
    local socket    = require "socket"  

    -- 接続
    local ws, err = websocket.new_from_uri("ws://localhost:8765")
    assert(ws:connect())
    print("connected")

    -- 送信
    assert(ws:send("Hello world! 1"))
    assert(ws:send("Hello world! 2"))

    -- 受信
    for i = 1, 2 do
        print("received:", assert(ws:receive()))
    end

    ws:close()
    print("closed")
end

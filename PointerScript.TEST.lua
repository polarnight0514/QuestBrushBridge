-- HelloEcho.lua
local done = false

function Main()
    if done then return end
    done = true

    -- ここをあなたの PC のローカル IP に合わせる
    local PC_IP = "192.168.1.35"
    local msg   = "Hello world!"
    local url   = string.format(
        "http://%s:8765/echo?msg=%s",
        PC_IP,
        WebRequest:UrlEncode(msg)
    )

    WebRequest:Get(
        url,
        function(_, response)
            print("[HelloEcho] got:", response)
        end,
        function(_, err)
            print("[HelloEcho] err:", err)
        end
    )
end


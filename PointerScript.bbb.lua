-- PointerScript.HelloSync.lua
local socket   = require("socket.http")

function Main()
  if Brush.triggerPressedThisFrame then
    print("hello-sync")
    -- ブロッキングでリクエスト
    local body, code = socket.request("http://192.168.1.30:8765/echo?msg=hello")
    if code == 200 then
      print("[HelloSync] OK →", body)
    else
      print("[HelloSync] ERR →", code)
    end
  end
end

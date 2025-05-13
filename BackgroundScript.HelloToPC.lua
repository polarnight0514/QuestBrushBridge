-- BackgroundScript.HelloHTTP.lua
local sent = false

function Main()
  if sent then return end
  sent = true

  -- 一度だけ非同期リクエスト
  WebRequest:Get(
    "http://192.168.1.30:8765/echo?msg=hello",
    function(_, resp) print("[HelloHTTP] OK →", resp) end,
    function(_, err ) print("[HelloHTTP] ERR →", err) end
  )
end

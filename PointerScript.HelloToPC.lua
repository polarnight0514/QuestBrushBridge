-- PointerScript.HelloTLS.lua

function Main()
    if Brush.triggerPressedThisFrame then
      -- ngrok の HTTPS URL を直接指定
      local url = "https://809c-133-9-187-225.ngrok-free.app/echo?msg=hello"
  
      WebRequest:Get(
        url,
        function(_, resp)
          print("[HelloTLS] OK →", resp)
        end,
        function(_, err)
          print("[HelloTLS] ERR →", err)
        end
      )
    end
  end
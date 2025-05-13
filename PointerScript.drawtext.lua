function Main()
  local handle = io.popen("python3 python_script.py")
  local result = handle:read("*a")
  handle:close()
  print("result")

  if result == "hello" then
    return print("result")
  else
  end
end

Main()






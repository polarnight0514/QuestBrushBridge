local called = false

function Main()
  if not called then
    WebRequest:Get(
      "http://localhost:40074/api/v1?draw.text=hello",
      function(ctx, resp) print("drew 'hello'") end,
      function(ctx, err) print("error drawing text: "..err) end
    )
    called = true
  end
end
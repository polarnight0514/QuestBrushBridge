local called = false

function Main()
    if not called then
        WebRequest:Get(
            "http://192.168.1.30:8765/echo?msg=hello",
            function(context, response)
                print("drew 'hello'")
            end,
            function(context, err)
                print("error drawing text: " .. err)
            end
        )
        called = true
    end
end

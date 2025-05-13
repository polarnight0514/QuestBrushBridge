-- Luaコード例（Open Brushプラグイン内で動作するコード）
function onButtonPressed()
    -- Pythonスクリプトのパスと引数（イベント情報）を指定
    local command = "python python_script.py button_pressed"
    
    -- io.popenでPythonスクリプトを実行し、その出力を取得
    local handle = io.popen(command)
    local result = handle:read("*a")
    handle:close()
    
    -- 取得した結果を出力またはプラグイン内で利用
    print("Pythonからの返答: " .. result)
  end
  
  -- ここではシミュレーションのために直接呼び出し
  onButtonPressed()
import requests

# Quest（Open Brush）のIPアドレスとAPIポート
OB_HOST = "192.168.1.28"
OB_PORT = 40074

# APIベースURL
API_BASE = f"http://{OB_HOST}:{OB_PORT}/api/v1"

# シーンのエクスポート命令を投げる
def export_scene():
    resp = requests.get(f"{API_BASE}?export.all")
    resp.raise_for_status()
    print("Export command sent. Status code:", resp.status_code)

# 実行例
if __name__ == "__main__":
    export_scene()

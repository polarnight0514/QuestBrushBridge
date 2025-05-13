# echo_server_minimal.py
from http.server import BaseHTTPRequestHandler, HTTPServer
import urllib.parse

class EchoHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        # URL が /echo?msg=xxx ならメッセージを取り出して返す
        parsed = urllib.parse.urlparse(self.path)
        if parsed.path == '/echo':
            qs = urllib.parse.parse_qs(parsed.query)
            msg = qs.get('msg', [''])[0]
            print(f"[Server] Received: {msg}")
            self.send_response(200)
            self.send_header('Content-Type', 'text/plain; charset=utf-8')
            self.end_headers()
            self.wfile.write(msg.encode('utf-8'))
        else:
            self.send_response(404)
            self.end_headers()

if __name__ == '__main__':
    addr = ('0.0.0.0', 8765)
    print(f"Starting server on http://{addr[0]}:{addr[1]}/echo?msg=...")
    HTTPServer(addr, EchoHandler).serve_forever()

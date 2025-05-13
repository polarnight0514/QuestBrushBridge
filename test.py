# !/usr/bin/env python

import asyncio
import websockets

async def hello():
    uri = "ws://localhost:8765"
    async with websockets.connect(uri) as websocket:
        await websocket.send("Hello world! 1")
        await websocket.send("Hello world! 2")
        await asyncio.sleep(5.0)
        print(await websocket.recv())
        print(await websocket.recv())

asyncio.run(hello())

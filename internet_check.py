# -*- coding: utf-8 -*-
"""
Created on Wed Jul 29 07:42:12 2026

@author: 1111
"""

import asyncio
import socket
from datetime import datetime

import chime

CHECK_INTERVAL = 10
FAILURE_THRESHOLD = 3

DNS_SERVERS = [
    ("Google", "8.8.8.8", 53),
    ("Cloudflare", "1.1.1.1", 53),
]


async def check_server(name, host, port):
    try:
        await asyncio.to_thread(
            socket.create_connection,
            (host, port),
            3,
        )
        return True
    except OSError:
        return False


async def is_connected():
    results = await asyncio.gather(
        *[check_server(name, host, port) for name, host, port in DNS_SERVERS]
    )

    # If at least one independent DNS server is reachable,
    # assume that the internet connection is working.
    return any(results)


def log(message):
    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    print(f"[{timestamp}] {message}")


async def main():
    chime.theme("zelda")

    consecutive_failures = 0
    is_offline = False

    while True:
        connected = await is_connected()

        if connected:
            consecutive_failures = 0

            if is_offline:
                log("✅ Internet connection restored!")
                is_offline = False
            else:
                log("✅ Internet is available.")

        else:
            consecutive_failures += 1

            if not is_offline:
                if consecutive_failures < FAILURE_THRESHOLD:
                    log(
                        f"⚠️ Possible network problem... "
                        f"checking ({consecutive_failures}/{FAILURE_THRESHOLD})"
                    )
                else:
                    is_offline = True
                    log("❌ No internet connection!")
                    chime.error()

            else:
                log("❌ No internet connection!")
                chime.error()

        await asyncio.sleep(CHECK_INTERVAL)


if __name__ == "__main__":
    asyncio.run(main())

#!/usr/bin/env python3
"""Serve the built site in docs/ for local preview.

Run from anywhere:  python3 scripts/serve_docs.py [port]

Uses an explicit chdir into docs/ rather than http.server's --directory flag,
because os.getcwd() raises PermissionError when the process starts inside the
OneDrive CloudStorage tree, and http.server's argument parser calls getcwd()
at import time.
"""

import http.server
import os
import socketserver
import sys

PORT = int(sys.argv[1]) if len(sys.argv) > 1 else 4321

# __file__ is absolute when launched with an absolute path, which avoids any
# getcwd() call while resolving the docs directory.
DOCS = os.path.join(os.path.dirname(os.path.dirname(__file__)), "docs")
os.chdir(DOCS)


class Handler(http.server.SimpleHTTPRequestHandler):
    def end_headers(self):
        # The site is rebuilt in place; don't let the browser serve stale slides.
        self.send_header("Cache-Control", "no-store")
        super().end_headers()


class Server(socketserver.TCPServer):
    allow_reuse_address = True


with Server(("127.0.0.1", PORT), Handler) as httpd:
    print(f"Serving {DOCS} at http://localhost:{PORT}/", flush=True)
    httpd.serve_forever()

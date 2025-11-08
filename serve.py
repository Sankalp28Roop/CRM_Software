#!/usr/bin/env python3

import http.server
import socketserver
import os

# Change to the frontend dist directory
os.chdir(os.path.join(os.path.dirname(__file__), 'frontend', 'dist'))

# Define the port
PORT = 8080

# Create the server
Handler = http.server.SimpleHTTPRequestHandler

# Start the server
with socketserver.TCPServer(("", PORT), Handler) as httpd:
    print(f"Server running at http://localhost:{PORT}/")
    print("Press Ctrl+C to stop the server")
    try:
        httpd.serve_forever()
    except KeyboardInterrupt:
        print("\nServer stopped.")
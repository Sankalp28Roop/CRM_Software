#!/usr/bin/env python3

import socket
import subprocess
import sys
import time
import os

def is_port_in_use(port):
    """Check if a port is in use"""
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        return s.connect_ex(('localhost', port)) == 0

def start_server():
    """Start the CRM demo server"""
    project_dir = os.path.dirname(os.path.abspath(__file__))
    
    print("🚀 Starting CRM System Demo...")
    print("=" * 50)
    
    # Check if port 8080 is available
    if is_port_in_use(8080):
        print("⚠️  Port 8080 is already in use!")
        print("Please free up the port or change it in server.js")
        return False
    
    # Start the Node.js server
    try:
        print("🔄 Starting Node.js server...")
        server_process = subprocess.Popen(
            ['node', 'server.js'],
            cwd=project_dir,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE
        )
        
        # Give the server a moment to start
        time.sleep(2)
        
        # Check if server started successfully
        if server_process.poll() is None:
            print("✅ Server started successfully!")
            print("🌐 Access the CRM System at: http://localhost:8080")
            print("📁 Landing Page: http://localhost:8080")
            print("📱 CRM App: http://localhost:8080/app/")
            print("\n🛑 Press Ctrl+C to stop the server")
            
            try:
                # Keep the script running
                server_process.wait()
            except KeyboardInterrupt:
                print("\n🛑 Stopping server...")
                server_process.terminate()
                server_process.wait()
                print("✅ Server stopped.")
                
            return True
        else:
            stdout, stderr = server_process.communicate()
            print("❌ Server failed to start!")
            print("Error:", stderr.decode())
            return False
            
    except FileNotFoundError:
        print("❌ Node.js not found. Please install Node.js")
        return False
    except Exception as e:
        print(f"❌ Error starting server: {e}")
        return False

if __name__ == "__main__":
    success = start_server()
    if not success:
        sys.exit(1)
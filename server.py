import http.server
import socketserver

# Set the server port
PORT = 8000

# Create a simple HTTP server
Handler = http.server.SimpleHTTPRequestHandler
httpd = socketserver.TCPServer(("", PORT), Handler)

print(f"Server running on port {PORT}")

# Start the server
httpd.serve_forever()
#!/bin/bash

# Script to organize frontend build files

# Create app directory
mkdir -p frontend/dist/app

# Move assets to app directory
mv frontend/dist/assets frontend/dist/app/

# Move the built index.html to app directory as app.html
mv frontend/dist/index.html frontend/dist/app/index.html

# Create landing page in root
cat > frontend/dist/index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRM System - Demo Access</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: #333;
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f5f5f5;
        }
        .container {
            background-color: white;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
            margin-top: 50px;
        }
        h1 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 30px;
        }
        .access-links {
            text-align: center;
            margin: 30px 0;
        }
        .btn {
            display: inline-block;
            padding: 12px 24px;
            margin: 10px;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s;
        }
        .btn:hover {
            background-color: #2980b9;
        }
        .btn-secondary {
            background-color: #95a5a6;
        }
        .btn-secondary:hover {
            background-color: #7f8c8d;
        }
        .instructions {
            background-color: #ecf0f1;
            padding: 20px;
            border-radius: 5px;
            margin: 20px 0;
        }
        .credentials {
            background-color: #e8f5e9;
            padding: 20px;
            border-radius: 5px;
            margin: 20px 0;
        }
        code {
            background-color: #f8f9fa;
            padding: 2px 5px;
            border-radius: 3px;
            font-family: 'Courier New', monospace;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>CRM System - Demo Access</h1>
        
        <div class="access-links">
            <a href="./app/" class="btn">Launch CRM Application</a>
            <a href="../api-docs" class="btn btn-secondary">API Documentation</a>
        </div>
        
        <div class="instructions">
            <h2>How to Run the Demo</h2>
            <p>To access the full CRM system, you need to start the backend and frontend servers:</p>
            
            <h3>Option 1: Quick Start (Recommended)</h3>
            <p>Run the following command in your terminal:</p>
            <code>npm run demo</code>
            
            <h3>Option 2: Manual Start</h3>
            <p>Start the backend server:</p>
            <code>cd backend && npm run dev</code>
            
            <p>In a new terminal, start the frontend server:</p>
            <code>cd frontend && npm run dev</code>
            
            <p>Then access the application at <a href="http://localhost:3000">http://localhost:3000</a></p>
        </div>
        
        <div class="credentials">
            <h2>Default User Credentials</h2>
            <p><strong>Admin User:</strong> admin@crm.com / Admin123!</p>
            <p><strong>Manager User:</strong> manager@crm.com / Manager123!</p>
            <p><strong>Sales Executive User:</strong> sales@crm.com / Sales123!</p>
        </div>
        
        <div class="instructions">
            <h2>Features Available</h2>
            <ul>
                <li>JWT-based authentication with role-based access control</li>
                <li>Dashboard with KPI visualization</li>
                <li>Lead management (CRUD operations)</li>
                <li>Activity timeline tracking</li>
                <li>Real-time notifications</li>
                <li>User management (Admin only)</li>
            </ul>
        </div>
    </div>
</body>
</html>
EOF

echo "Frontend files organized successfully!"
echo "Access the landing page at: frontend/dist/index.html"
echo "Access the CRM app at: frontend/dist/app/index.html"
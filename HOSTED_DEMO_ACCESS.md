# CRM System - Hosted Demo Access

## Overview
The CRM system has been successfully built and is ready for demonstration. This document provides all the necessary information to access and run the hosted demo.

## File Structure
The frontend has been built and organized as follows:
```
frontend/dist/
├── index.html          # Landing page with instructions
├── app/                # React application
│   ├── index.html      # Main React app entry point
│   └── assets/         # Built JavaScript, CSS, and other assets
```

## Access Methods

### Method 1: Using Node.js Server (Recommended)
1. Start the server:
   ```bash
   cd /Users/sankalpswaroop/Documents/CRM Software
   node server.js
   ```

2. Access the application:
   - Landing Page: http://localhost:8080
   - CRM Application: http://localhost:8080/app/

### Method 2: Using Python Server
1. Start the server:
   ```bash
   cd /Users/sankalpswaroop/Documents/CRM Software
   python3 serve.py
   ```

2. Access the application:
   - Landing Page: http://localhost:8080
   - CRM Application: http://localhost:8080/app/

### Method 3: Using npm serve
1. Install serve globally (if not already installed):
   ```bash
   npm install -g serve
   ```

2. Serve the application:
   ```bash
   cd /Users/sankalpswaroop/Documents/CRM Software/frontend/dist
   serve -s . -l 8080
   ```

3. Access the application:
   - Landing Page: http://localhost:8080
   - CRM Application: http://localhost:8080/app/

### Method 4: Development Servers
1. Start backend and frontend development servers:
   ```bash
   # Terminal 1 - Backend
   cd /Users/sankalpswaroop/Documents/CRM Software/backend
   npm run dev
   
   # Terminal 2 - Frontend
   cd /Users/sankalpswaroop/Documents/CRM Software/frontend
   npm run dev
   ```

2. Access the application:
   - Frontend: http://localhost:3000
   - Backend API: http://localhost:5000
   - API Docs: http://localhost:5000/api-docs

## Default User Credentials

- **Admin User:**
  - Email: admin@crm.com
  - Password: Admin123!

- **Manager User:**
  - Email: manager@crm.com
  - Password: Manager123!

- **Sales Executive User:**
  - Email: sales@crm.com
  - Password: Sales123!

## Features Available in Demo

1. **Authentication & Role-based Access Control**
   - JWT-based login/logout
   - Three user roles with different permissions

2. **Dashboard Analytics**
   - KPI visualization with interactive charts
   - Lead trends and conversion metrics

3. **Lead Management**
   - Create, view, update, and delete leads
   - Assign leads to team members
   - Track lead status through the sales pipeline

4. **Activity Timeline**
   - Log calls, meetings, notes, and emails
   - View chronological activity history

5. **Real-time Notifications**
   - Instant notification updates
   - Notification center with read/unread status

6. **User Management** (Admin only)
   - View and manage all system users
   - Role assignment and user permissions

## Troubleshooting

If you encounter any issues:

1. **Port Conflicts:**
   - Change the PORT in server.js or use a different port

2. **Missing Dependencies:**
   ```bash
   cd /Users/sankalpswaroop/Documents/CRM Software
   npm install
   
   cd backend
   npm install
   
   cd ../frontend
   npm install
   ```

3. **Build Issues:**
   ```bash
   cd /Users/sankalpswaroop/Documents/CRM Software/frontend
   npm run build
   ```

4. **Server Not Starting:**
   - Check if the port is already in use
   - Try a different port number

## Additional Documentation

- HOSTING_INSTRUCTIONS.md - Detailed hosting and deployment instructions
- WORKING_LINK.md - Quick access information
- FRONTEND_STRUCTURE.md - Frontend architecture and components
- CRM_FRONTEND_FINAL_SUMMARY.md - Complete frontend implementation summary

For any additional support, please refer to the documentation files in the project root directory.
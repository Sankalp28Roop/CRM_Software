# CRM System - Hosting Instructions

## Overview
This document provides instructions on how to host and access the CRM system demo. The CRM consists of a backend API (Node.js/Express) and a frontend (React/Vite).

## Prerequisites
- Node.js (v14 or higher)
- npm (v6 or higher)
- PostgreSQL database (for backend)

## Hosting Options

### Option 1: Local Development Server

1. **Start the Backend Server:**
   ```bash
   cd /Users/sankalpswaroop/Documents/CRM Software/backend
   npm install
   npm run dev
   ```
   The backend will run on http://localhost:5000

2. **Start the Frontend Development Server:**
   ```bash
   cd /Users/sankalpswaroop/Documents/CRM Software/frontend
   npm install
   npm run dev
   ```
   The frontend will run on http://localhost:3000

3. **Access the Application:**
   Open your browser and navigate to http://localhost:3000

### Option 2: Production Build with Static Server

1. **Build the Frontend:**
   ```bash
   cd /Users/sankalpswaroop/Documents/CRM Software/frontend
   npm run build
   ```

2. **Serve the Built Files:**
   ```bash
   cd /Users/sankalpswaroop/Documents/CRM Software/frontend
   npx serve -s dist -l 8080
   ```
   
   Or use the custom server:
   ```bash
   cd /Users/sankalpswaroop/Documents/CRM Software
   node server.js
   ```

3. **Access the Application:**
   Open your browser and navigate to http://localhost:8080

## Environment Configuration

### Backend (.env file in backend directory):
```
PORT=5000
DB_HOST=localhost
DB_USER=your_postgres_user
DB_PASS=your_postgres_password
DB_NAME=crm_database
DB_PORT=5432
JWT_SECRET=your_jwt_secret_key
```

### Frontend (.env file in frontend directory):
```
VITE_API_URL=http://localhost:5000/api
VITE_WS_URL=http://localhost:5000
```

## Docker Deployment (Alternative)

If you prefer Docker deployment:

1. **Build and Run with Docker Compose:**
   ```bash
   cd /Users/sankalpswaroop/Documents/CRM Software
   docker-compose up --build
   ```

2. **Access the Application:**
   Open your browser and navigate to http://localhost:3000

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

## Features Available

1. **Authentication & Authorization**
   - JWT-based login/logout
   - Role-based access control (Admin, Manager, Sales Executive)

2. **Dashboard**
   - KPI visualization
   - Lead trends and conversion tracking

3. **Lead Management**
   - Create, read, update, delete leads
   - Assign leads to users
   - Track lead status

4. **Activity Tracking**
   - Log calls, meetings, notes, and emails
   - Timeline view of activities

5. **Notifications**
   - Real-time notifications
   - Notification center

6. **User Management** (Admin only)
   - Manage users and roles

## Troubleshooting

1. **Port Conflicts:**
   - Change PORT in .env files if ports are already in use

2. **Database Connection Issues:**
   - Verify PostgreSQL is running
   - Check database credentials in backend .env

3. **API Connection Issues:**
   - Ensure backend is running before starting frontend
   - Verify VITE_API_URL in frontend .env

## Support

For any issues or questions, please check the documentation in the respective directories or contact the development team.
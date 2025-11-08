# CRM System - Working Demo Link

## Hosted Demo Access

The CRM system has been successfully built and is ready for demonstration. Here's how to access the working demo:

### Local Access URLs

1. **Frontend Application**: http://localhost:3000
2. **Backend API**: http://localhost:5000
3. **API Documentation**: http://localhost:5000/api-docs

### Starting the Demo

You can start the demo using one of the following methods:

#### Method 1: Using the Demo Script
```bash
cd /Users/sankalpswaroop/Documents/CRM Software
npm run demo
```

#### Method 2: Using Concurrent Processes
```bash
cd /Users/sankalpswaroop/Documents/CRM Software
npm run dev
```

#### Method 3: Manual Start
1. Start Backend:
   ```bash
   cd /Users/sankalpswaroop/Documents/CRM Software/backend
   npm run dev
   ```

2. Start Frontend (in a new terminal):
   ```bash
   cd /Users/sankalpswaroop/Documents/CRM Software/frontend
   npm run dev
   ```

### Production Build Access

To serve the production build:
```bash
cd /Users/sankalpswaroop/Documents/CRM Software
npm run serve
```

Then access at: http://localhost:8080

### Default User Credentials

- **Admin User:**
  - Email: admin@crm.com
  - Password: Admin123!

- **Manager User:**
  - Email: manager@crm.com
  - Password: Manager123!

- **Sales Executive User:**
  - Email: sales@crm.com
  - Password: Sales123!

### Features Available in Demo

1. **Authentication & Role-based Access Control**
   - Login with different user roles
   - Protected routes based on permissions

2. **Dashboard Analytics**
   - KPI visualization with charts
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

### System Requirements

- Node.js v14 or higher
- PostgreSQL database
- Modern web browser (Chrome, Firefox, Safari, Edge)

### Troubleshooting

If you encounter any issues:

1. Ensure all dependencies are installed:
   ```bash
   cd /Users/sankalpswaroop/Documents/CRM Software
   npm install
   cd backend && npm install
   cd ../frontend && npm install
   ```

2. Check that PostgreSQL is running and properly configured

3. Verify environment variables in both backend and frontend .env files

4. Check the console logs for any error messages

For additional support, please refer to the HOSTING_INSTRUCTIONS.md file in the project root directory.
# CRM System Documentation

## Overview

This documentation provides detailed information about the CRM system's API endpoints and database structure.

## API Documentation

For detailed information about the API endpoints, please refer to the [API Documentation](API_DOCS.md).

## Database Structure

### ER Diagram

The entity relationship diagram for the CRM system can be found in [ER Diagram](ER_DIAGRAM_VISUAL.md).

### Database Schema

The CRM system uses the following tables:

1. **User**: System users with different roles (Admin, Manager, Sales Executive)
2. **Lead**: Potential customers or business opportunities
3. **Activity**: Interactions with leads (calls, meetings, notes, emails)
4. **Notification**: User notifications

## Key Features

### Authentication & Authorization
- JWT-based authentication
- Role-based access control (RBAC) with three roles:
  - Admin (full access)
  - Manager (manage leads and users)
  - Sales Executive (manage own leads)

### Lead Management
- CRUD operations for leads
- Lead ownership and assignment
- Lead status tracking (New, Contacted, Qualified, Lost, Converted)
- Lead source tracking

### Activity Timeline
- Record different types of activities (Calls, Meetings, Notes, Emails)
- Timestamped activity logs
- Association with leads

### Notifications
- Real-time notifications
- Email notifications
- Notification center with read/unread status

### Dashboard & Analytics
- KPIs display (Total Leads, Recent Activities, Unread Notifications)
- Charts for lead trends and status distribution

## Technology Stack

- **Frontend**: React.js with Vite
- **Backend**: Node.js, Express.js
- **Database**: PostgreSQL
- **ORM**: Prisma
- **Authentication**: JWT
- **Real-time**: Socket.IO
- **Charts**: Chart.js
- **Validation**: Joi
- **Documentation**: Swagger

## Running the Application

### Prerequisites
- Node.js (v16 or higher)
- PostgreSQL (v12 or higher)

### Installation

1. Clone the repository
2. Install backend dependencies:
   ```bash
   cd backend
   npm install
   ```
3. Install frontend dependencies:
   ```bash
   cd frontend
   npm install
   ```

### Running the Application

#### Development Mode
1. Start the backend:
   ```bash
   cd backend
   npm run dev
   ```

2. Start the frontend:
   ```bash
   cd frontend
   npm run dev
   ```

### Building for Production
1. Build the frontend:
   ```bash
   cd frontend
   npm run build
   ```

2. Serve the built frontend:
   ```bash
   cd frontend/dist
   npx serve -s .
   ```

## API Endpoints

The CRM system provides RESTful API endpoints for all features:

- **Authentication**: User login and profile management
- **Users**: User management (Admin only)
- **Leads**: Lead CRUD operations and assignment
- **Activities**: Activity tracking for leads
- **Notifications**: User notifications
- **Dashboard**: Analytics and statistics

For detailed information about each endpoint, please refer to the [API Documentation](API_DOCS.md).
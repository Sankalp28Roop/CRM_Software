# CRM Software Setup Guide

## Prerequisites

- Node.js (v16 or higher)
- PostgreSQL (v12 or higher)
- Docker (optional, for containerized deployment)
- npm or yarn

## Installation

### 1. Clone the Repository

```bash
git clone <repository-url>
cd crm-software
```

### 2. Backend Setup

```bash
cd backend
npm install
```

### 3. Database Setup

1. Create a PostgreSQL database:
```sql
CREATE DATABASE crm_db;
CREATE USER crm_user WITH ENCRYPTED PASSWORD 'crm_password';
GRANT ALL PRIVILEGES ON DATABASE crm_db TO crm_user;
```

2. Update the `.env` file with your database credentials:
```bash
cp .env.example .env
# Edit .env with your configuration
```

3. Run Prisma migrations:
```bash
npx prisma migrate dev --name init
```

### 4. Frontend Setup

```bash
cd ../frontend
npm install
```

## Running the Application

### Development Mode

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

### Production Mode with Docker

```bash
cd ..
docker-compose up -d
```

## Environment Variables

### Backend (.env)
```env
# Database Configuration
DATABASE_URL=postgresql://username:password@localhost:5432/crm_db?schema=public

# JWT Configuration
JWT_SECRET=your_jwt_secret_key
JWT_EXPIRES_IN=7d

# Server Configuration
PORT=5000
NODE_ENV=development

# Email Configuration (for notifications)
EMAIL_HOST=smtp.gmail.com
EMAIL_PORT=587
EMAIL_USERNAME=your_email@gmail.com
EMAIL_PASSWORD=your_app_password

# Frontend URL (for CORS)
FRONTEND_URL=http://localhost:3000
```

### Frontend (.env)
```env
VITE_API_URL=http://localhost:5000/api
```

## API Documentation

Once the backend is running, you can access the Swagger documentation at:
```
http://localhost:5000/api-docs
```

## Default Admin User

After the first run, you may want to create an admin user manually through the API or database:

```json
{
  "name": "Admin User",
  "email": "admin@example.com",
  "password": "admin123",
  "role": "ADMIN"
}
```

## Testing

### Backend Tests

```bash
cd backend
npm test
```

## Deployment

### Manual Deployment

1. Build the frontend:
```bash
cd frontend
npm run build
```

2. Deploy the backend and built frontend to your server.

### Docker Deployment

```bash
docker-compose up -d
```

## Troubleshooting

1. **Database Connection Issues**: Verify your DATABASE_URL in the .env file
2. **Port Conflicts**: Change the PORT in .env if 5000 is already in use
3. **CORS Issues**: Ensure FRONTEND_URL matches your frontend URL
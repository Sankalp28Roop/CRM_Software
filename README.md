# Production-Grade CRM System

A comprehensive CRM solution built with the MERN stack and PostgreSQL, designed for startups requiring scalable, modular, and secure operations.

## Tech Stack
- **Frontend**: React.js with Vite
- **Backend**: Node.js, Express.js
- **Database**: PostgreSQL with Prisma ORM
- **Authentication**: JWT
- **Real-time**: Socket.io
- **Charts**: Chart.js
- **Logging**: Winston
- **Validation**: Joi
- **Documentation**: Swagger

## Features
- Role-based access control (Admin, Manager, Sales Executive)
- Lead management with CRUD operations and ownership tracking
- Activity timeline with notes, calls, and meetings
- Real-time notifications with email triggers
- Dashboard with KPIs and analytics
- RESTful API with comprehensive documentation
- Dockerized deployment

## Project Structure
```
crm-software/
├── backend/
│   ├── controllers/
│   ├── models/
│   ├── routes/
│   ├── services/
│   ├── middleware/
│   ├── utils/
│   ├── config/
│   ├── prisma/
│   └── tests/
├── frontend/
│   ├── public/
│   └── src/
│       ├── components/
│       ├── pages/
│       ├── assets/
│       ├── utils/
│       ├── services/
│       ├── contexts/
│       ├── hooks/
│       ├── styles/
│       └── config/
├── docker/
└── docs/
```

## Key Components

### Backend API
- RESTful API built with Express.js
- PostgreSQL database with Prisma ORM
- JWT-based authentication and RBAC
- Real-time notifications with Socket.IO
- Comprehensive logging with Winston
- Input validation with Joi
- API documentation with Swagger

### Frontend Dashboard
- React.js with Vite build tool
- Responsive design
- Interactive charts with Chart.js
- Role-based UI components
- Real-time notification updates

## Getting Started

### Prerequisites
- Node.js (v16 or higher)
- PostgreSQL (v12 or higher)
- Docker (optional, for containerized deployment)

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd crm-software
```

2. Backend setup:
```bash
cd backend
npm install
cp .env.example .env
# Edit .env with your configuration
npx prisma migrate dev --name init
```

3. Frontend setup:
```bash
cd ../frontend
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

#### Production Mode with Docker
```bash
docker-compose up -d
```

## Documentation

- [Setup Guide](SETUP.md)
- [File Structure](FILE_TREE.md)
- [Prisma Schema](PRISMA_SCHEMA.md)
- [API Endpoints](API_ENDPOINTS.md)
- [System Summary](SUMMARY.md)

## API Documentation

Once the backend is running, you can access the Swagger documentation at:
```
http://localhost:5000/api-docs
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

## Environment Variables

See `.env.example` files in backend and frontend directories for required environment variables.

## License
MIT

## Author
Sankalp Swaroop# CRM_Software
# CRM_Software

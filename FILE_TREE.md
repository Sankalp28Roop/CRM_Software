# CRM Software File Structure

```
crm-software/
├── README.md
├── package.json
├── docker-compose.yml
├── docker/
│   └── init.sql
├── backend/
│   ├── Dockerfile
│   ├── .dockerignore
│   ├── .env.example
│   ├── package.json
│   ├── server.js
│   ├── prisma/
│   │   └── schema.prisma
│   ├── config/
│   │   ├── db.js
│   │   ├── jwt.js
│   │   ├── logger.js
│   │   └── swagger.js
│   ├── controllers/
│   │   ├── userController.js
│   │   ├── leadController.js
│   │   ├── activityController.js
│   │   ├── notificationController.js
│   │   └── dashboardController.js
│   ├── routes/
│   │   ├── userRoutes.js
│   │   ├── leadRoutes.js
│   │   ├── activityRoutes.js
│   │   ├── notificationRoutes.js
│   │   └── dashboardRoutes.js
│   ├── services/
│   │   ├── userService.js
│   │   ├── leadService.js
│   │   ├── activityService.js
│   │   └── notificationService.js
│   ├── middleware/
│   │   ├── auth.js
│   │   └── validation.js
│   ├── utils/
│   │   └── notificationHandler.js
│   ├── logs/
│   └── tests/
├── frontend/
│   ├── Dockerfile
│   ├── .dockerignore
│   ├── nginx.conf
│   ├── package.json
│   ├── vite.config.js
│   ├── index.html
│   ├── src/
│   │   ├── main.jsx
│   │   ├── App.jsx
│   │   ├── index.css
│   │   ├── config/
│   │   │   └── api.js
│   │   ├── contexts/
│   │   │   └── AuthContext.jsx
│   │   ├── components/
│   │   │   ├── Header.jsx
│   │   │   └── Sidebar.jsx
│   │   ├── pages/
│   │   │   ├── Dashboard.jsx
│   │   │   ├── Leads.jsx
│   │   │   ├── LeadDetail.jsx
│   │   │   ├── Activities.jsx
│   │   │   ├── Notifications.jsx
│   │   │   ├── Users.jsx
│   │   │   ├── Login.jsx
│   │   │   └── Register.jsx
│   │   ├── styles/
│   │   │   └── main.css
│   │   ├── assets/
│   │   ├── services/
│   │   ├── hooks/
│   │   └── utils/
│   └── public/
└── docs/
```
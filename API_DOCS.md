# CRM System API Documentation

## Authentication

### Login
```
POST /api/users/login
```

**Request Body:**
```json
{
  "email": "string",
  "password": "string"
}
```

**Response:**
```json
{
  "success": true,
  "data": {
    "user": {
      "id": "uuid",
      "name": "string",
      "email": "string",
      "role": "ADMIN|MANAGER|SALES_EXECUTIVE",
      "isActive": true,
      "createdAt": "datetime",
      "updatedAt": "datetime"
    },
    "token": "jwt_token"
  }
}
```

### Get Profile
```
GET /api/users/profile
```

**Headers:**
```
Authorization: Bearer <jwt_token>
```

**Response:**
```json
{
  "success": true,
  "data": {
    "id": "uuid",
    "name": "string",
    "email": "string",
    "role": "ADMIN|MANAGER|SALES_EXECUTIVE",
    "isActive": true,
    "createdAt": "datetime",
    "updatedAt": "datetime"
  }
}
```

## Users

### Get All Users
```
GET /api/users
```

**Headers:**
```
Authorization: Bearer <jwt_token>
```

**Query Parameters:**
- `role`: Filter by role (ADMIN|MANAGER|SALES_EXECUTIVE)
- `isActive`: Filter by active status (true|false)

**Response:**
```json
{
  "success": true,
  "data": [
    {
      "id": "uuid",
      "name": "string",
      "email": "string",
      "role": "ADMIN|MANAGER|SALES_EXECUTIVE",
      "isActive": true,
      "createdAt": "datetime",
      "updatedAt": "datetime"
    }
  ]
}
```

### Get User by ID
```
GET /api/users/:id
```

**Headers:**
```
Authorization: Bearer <jwt_token>
```

**Response:**
```json
{
  "success": true,
  "data": {
    "id": "uuid",
    "name": "string",
    "email": "string",
    "role": "ADMIN|MANAGER|SALES_EXECUTIVE",
    "isActive": true,
    "createdAt": "datetime",
    "updatedAt": "datetime"
  }
}
```

## Leads

### Create Lead
```
POST /api/leads
```

**Headers:**
```
Authorization: Bearer <jwt_token>
```

**Request Body:**
```json
{
  "name": "string",
  "email": "string",
  "phone": "string", // Optional
  "company": "string", // Optional
  "source": "string" // Optional
}
```

**Response:**
```json
{
  "success": true,
  "data": {
    "id": "uuid",
    "name": "string",
    "email": "string",
    "phone": "string",
    "company": "string",
    "status": "NEW|CONTACTED|QUALIFIED|LOST|CONVERTED",
    "source": "string",
    "assignedTo": {
      "id": "uuid",
      "name": "string",
      "email": "string"
    },
    "createdBy": {
      "id": "uuid",
      "name": "string",
      "email": "string"
    },
    "createdAt": "datetime",
    "updatedAt": "datetime"
  }
}
```

### Get All Leads
```
GET /api/leads
```

**Headers:**
```
Authorization: Bearer <jwt_token>
```

**Query Parameters:**
- `page`: Page number (default: 1)
- `limit`: Items per page (default: 10)
- `status`: Filter by status
- `search`: Search in name, email, or company
- `assignedTo`: Filter by assigned user ID

**Response:**
```json
{
  "success": true,
  "data": {
    "leads": [
      {
        "id": "uuid",
        "name": "string",
        "email": "string",
        "phone": "string",
        "company": "string",
        "status": "NEW|CONTACTED|QUALIFIED|LOST|CONVERTED",
        "source": "string",
        "assignedTo": {
          "id": "uuid",
          "name": "string",
          "email": "string"
        },
        "createdBy": {
          "id": "uuid",
          "name": "string",
          "email": "string"
        },
        "createdAt": "datetime",
        "updatedAt": "datetime"
      }
    ],
    "pagination": {
      "currentPage": 1,
      "totalPages": 1,
      "totalLeads": 1,
      "hasNext": false,
      "hasPrev": false
    }
  }
}
```

### Get Lead by ID
```
GET /api/leads/:id
```

**Headers:**
```
Authorization: Bearer <jwt_token>
```

**Response:**
```json
{
  "success": true,
  "data": {
    "id": "uuid",
    "name": "string",
    "email": "string",
    "phone": "string",
    "company": "string",
    "status": "NEW|CONTACTED|QUALIFIED|LOST|CONVERTED",
    "source": "string",
    "assignedTo": {
      "id": "uuid",
      "name": "string",
      "email": "string"
    },
    "createdBy": {
      "id": "uuid",
      "name": "string",
      "email": "string"
    },
    "activities": [
      {
        "id": "uuid",
        "type": "CALL|MEETING|NOTE|EMAIL",
        "subject": "string",
        "description": "string",
        "leadId": "uuid",
        "createdBy": {
          "id": "uuid",
          "name": "string",
          "email": "string"
        },
        "createdAt": "datetime",
        "updatedAt": "datetime"
      }
    ],
    "createdAt": "datetime",
    "updatedAt": "datetime"
  }
}
```

### Update Lead
```
PUT /api/leads/:id
```

**Headers:**
```
Authorization: Bearer <jwt_token>
```

**Request Body:**
```json
{
  "name": "string",
  "email": "string",
  "phone": "string",
  "company": "string",
  "status": "NEW|CONTACTED|QUALIFIED|LOST|CONVERTED"
}
```

**Response:**
```json
{
  "success": true,
  "data": {
    "id": "uuid",
    "name": "string",
    "email": "string",
    "phone": "string",
    "company": "string",
    "status": "NEW|CONTACTED|QUALIFIED|LOST|CONVERTED",
    "source": "string",
    "assignedTo": {
      "id": "uuid",
      "name": "string",
      "email": "string"
    },
    "createdBy": {
      "id": "uuid",
      "name": "string",
      "email": "string"
    },
    "createdAt": "datetime",
    "updatedAt": "datetime"
  }
}
```

### Delete Lead
```
DELETE /api/leads/:id
```

**Headers:**
```
Authorization: Bearer <jwt_token>
```

**Response:**
```json
{
  "success": true,
  "message": "Lead deleted successfully"
}
```

### Assign Lead
```
PUT /api/leads/:id/assign
```

**Headers:**
```
Authorization: Bearer <jwt_token>
```

**Request Body:**
```json
{
  "assignToId": "uuid"
}
```

**Response:**
```json
{
  "success": true,
  "data": {
    "id": "uuid",
    "name": "string",
    "email": "string",
    "phone": "string",
    "company": "string",
    "status": "NEW|CONTACTED|QUALIFIED|LOST|CONVERTED",
    "source": "string",
    "assignedTo": {
      "id": "uuid",
      "name": "string",
      "email": "string"
    },
    "createdBy": {
      "id": "uuid",
      "name": "string",
      "email": "string"
    },
    "createdAt": "datetime",
    "updatedAt": "datetime"
  }
}
```

## Activities

### Create Activity
```
POST /api/activities
```

**Headers:**
```
Authorization: Bearer <jwt_token>
```

**Request Body:**
```json
{
  "type": "CALL|MEETING|NOTE|EMAIL",
  "subject": "string",
  "description": "string", // Optional
  "leadId": "uuid"
}
```

**Response:**
```json
{
  "success": true,
  "data": {
    "id": "uuid",
    "type": "CALL|MEETING|NOTE|EMAIL",
    "subject": "string",
    "description": "string",
    "lead": {
      "id": "uuid",
      "name": "string",
      "email": "string"
    },
    "createdBy": {
      "id": "uuid",
      "name": "string",
      "email": "string"
    },
    "createdAt": "datetime",
    "updatedAt": "datetime"
  }
}
```

### Get All Activities
```
GET /api/activities
```

**Headers:**
```
Authorization: Bearer <jwt_token>
```

**Query Parameters:**
- `page`: Page number (default: 1)
- `limit`: Items per page (default: 10)
- `type`: Filter by activity type
- `leadId`: Filter by lead ID

**Response:**
```json
{
  "success": true,
  "data": {
    "activities": [
      {
        "id": "uuid",
        "type": "CALL|MEETING|NOTE|EMAIL",
        "subject": "string",
        "description": "string",
        "lead": {
          "id": "uuid",
          "name": "string",
          "email": "string"
        },
        "createdBy": {
          "id": "uuid",
          "name": "string",
          "email": "string"
        },
        "createdAt": "datetime",
        "updatedAt": "datetime"
      }
    ],
    "pagination": {
      "currentPage": 1,
      "totalPages": 1,
      "totalActivities": 1,
      "hasNext": false,
      "hasPrev": false
    }
  }
}
```

### Get Activities by Lead
```
GET /api/activities/lead/:leadId
```

**Headers:**
```
Authorization: Bearer <jwt_token>
```

**Response:**
```json
{
  "success": true,
  "data": [
    {
      "id": "uuid",
      "type": "CALL|MEETING|NOTE|EMAIL",
      "subject": "string",
      "description": "string",
      "lead": {
        "id": "uuid",
        "name": "string",
        "email": "string"
      },
      "createdBy": {
        "id": "uuid",
        "name": "string",
        "email": "string"
      },
      "createdAt": "datetime",
      "updatedAt": "datetime"
    }
  ]
}
```

### Get Activity by ID
```
GET /api/activities/:id
```

**Headers:**
```
Authorization: Bearer <jwt_token>
```

**Response:**
```json
{
  "success": true,
  "data": {
    "id": "uuid",
    "type": "CALL|MEETING|NOTE|EMAIL",
    "subject": "string",
    "description": "string",
    "lead": {
      "id": "uuid",
      "name": "string",
      "email": "string"
    },
    "createdBy": {
      "id": "uuid",
      "name": "string",
      "email": "string"
    },
    "createdAt": "datetime",
    "updatedAt": "datetime"
  }
}
```

### Update Activity
```
PUT /api/activities/:id
```

**Headers:**
```
Authorization: Bearer <jwt_token>
```

**Request Body:**
```json
{
  "type": "CALL|MEETING|NOTE|EMAIL",
  "subject": "string",
  "description": "string"
}
```

**Response:**
```json
{
  "success": true,
  "data": {
    "id": "uuid",
    "type": "CALL|MEETING|NOTE|EMAIL",
    "subject": "string",
    "description": "string",
    "lead": {
      "id": "uuid",
      "name": "string",
      "email": "string"
    },
    "createdBy": {
      "id": "uuid",
      "name": "string",
      "email": "string"
    },
    "createdAt": "datetime",
    "updatedAt": "datetime"
  }
}
```

### Delete Activity
```
DELETE /api/activities/:id
```

**Headers:**
```
Authorization: Bearer <jwt_token>
```

**Response:**
```json
{
  "success": true,
  "message": "Activity deleted successfully"
}
```

## Notifications

### Create Notification
```
POST /api/notifications
```

**Headers:**
```
Authorization: Bearer <jwt_token>
```

**Request Body:**
```json
{
  "title": "string",
  "message": "string",
  "userId": "uuid"
}
```

**Response:**
```json
{
  "success": true,
  "data": {
    "id": "uuid",
    "title": "string",
    "message": "string",
    "isRead": false,
    "user": {
      "id": "uuid",
      "name": "string",
      "email": "string"
    },
    "createdAt": "datetime",
    "updatedAt": "datetime"
  }
}
```

### Get All Notifications
```
GET /api/notifications
```

**Headers:**
```
Authorization: Bearer <jwt_token>
```

**Query Parameters:**
- `page`: Page number (default: 1)
- `limit`: Items per page (default: 10)

**Response:**
```json
{
  "success": true,
  "data": {
    "notifications": [
      {
        "id": "uuid",
        "title": "string",
        "message": "string",
        "isRead": false,
        "user": {
          "id": "uuid",
          "name": "string",
          "email": "string"
        },
        "createdAt": "datetime",
        "updatedAt": "datetime"
      }
    ],
    "pagination": {
      "currentPage": 1,
      "totalPages": 1,
      "totalNotifications": 1,
      "hasNext": false,
      "hasPrev": false
    }
  }
}
```

### Mark Notification as Read
```
PUT /api/notifications/:id/read
```

**Headers:**
```
Authorization: Bearer <jwt_token>
```

**Response:**
```json
{
  "success": true,
  "data": {
    "id": "uuid",
    "title": "string",
    "message": "string",
    "isRead": true,
    "user": {
      "id": "uuid",
      "name": "string",
      "email": "string"
    },
    "createdAt": "datetime",
    "updatedAt": "datetime"
  }
}
```

### Mark All Notifications as Read
```
PUT /api/notifications/read-all
```

**Headers:**
```
Authorization: Bearer <jwt_token>
```

**Response:**
```json
{
  "success": true,
  "message": "All notifications marked as read"
}
```

### Delete Notification
```
DELETE /api/notifications/:id
```

**Headers:**
```
Authorization: Bearer <jwt_token>
```

**Response:**
```json
{
  "success": true,
  "message": "Notification deleted successfully"
}
```

## Dashboard

### Get Dashboard Statistics
```
GET /api/dashboard/stats
```

**Headers:**
```
Authorization: Bearer <jwt_token>
```

**Response:**
```json
{
  "success": true,
  "data": {
    "totalLeads": 0,
    "leadsByStatus": [
      {
        "status": "NEW|CONTACTED|QUALIFIED|LOST|CONVERTED",
        "_count": {
          "status": 0
        }
      }
    ],
    "leadsBySource": [
      {
        "source": "string",
        "_count": {
          "source": 0
        }
      }
    ],
    "recentActivities": 0,
    "unreadNotifications": 0
  }
}
```

### Get Lead Trends
```
GET /api/dashboard/trends
```

**Headers:**
```
Authorization: Bearer <jwt_token>
```

**Query Parameters:**
- `days`: Number of days to look back (default: 30)

**Response:**
```json
{
  "success": true,
  "data": [
    {
      "date": "date",
      "count": 0
    }
  ]
}
```
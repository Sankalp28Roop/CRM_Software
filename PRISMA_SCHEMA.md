# Prisma Schema Documentation

## Overview

This document describes the database schema for the CRM system using Prisma ORM.

## Models

### User

Represents a user in the system with different roles.

```prisma
model User {
  id            String     @id @default(uuid())
  name          String
  email         String     @unique
  password      String
  role          Role       @default(SALES_EXECUTIVE)
  isActive      Boolean    @default(true)
  leads         Lead[]
  activities    Activity[]
  notifications Notification[]
  createdAt     DateTime   @default(now())
  updatedAt     DateTime   @updatedAt
}
```

### Role (Enum)

Defines the roles available for users.

```prisma
enum Role {
  ADMIN
  MANAGER
  SALES_EXECUTIVE
}
```

### Lead

Represents a potential customer or business opportunity.

```prisma
model Lead {
  id          String     @id @default(uuid())
  name        String
  email       String
  phone       String?
  company     String?
  status      LeadStatus @default(NEW)
  source      String?
  assignedTo  User       @relation(fields: [assignedToId], references: [id])
  assignedToId String
  activities  Activity[]
  createdBy   User       @relation(fields: [createdById], references: [id])
  createdById String
  createdAt   DateTime   @default(now())
  updatedAt   DateTime   @updatedAt
}
```

### LeadStatus (Enum)

Defines the possible statuses for a lead.

```prisma
enum LeadStatus {
  NEW
  CONTACTED
  QUALIFIED
  LOST
  CONVERTED
}
```

### Activity

Represents interactions with leads such as calls, meetings, or notes.

```prisma
model Activity {
  id          String       @id @default(uuid())
  type        ActivityType
  subject     String
  description String?
  lead        Lead         @relation(fields: [leadId], references: [id])
  leadId      String
  createdBy   User         @relation(fields: [createdById], references: [id])
  createdById String
  createdAt   DateTime     @default(now())
  updatedAt   DateTime     @updatedAt
}
```

### ActivityType (Enum)

Defines the types of activities that can be recorded.

```prisma
enum ActivityType {
  CALL
  MEETING
  NOTE
  EMAIL
}
```

### Notification

Represents notifications for users.

```prisma
model Notification {
  id        String   @id @default(uuid())
  title     String
  message   String
  isRead    Boolean  @default(false)
  user      User     @relation(fields: [userId], references: [id])
  userId    String
  createdAt DateTime @default(now())
  updatedAt DateTime @updatedAt
}
```

## Relationships

1. **User-Lead**: One-to-Many (User can have many Leads as assignee or creator)
2. **Lead-Activity**: One-to-Many (Lead can have many Activities)
3. **User-Activity**: One-to-Many (User can create many Activities)
4. **User-Notification**: One-to-Many (User can have many Notifications)

## Indexes

The following indexes are recommended for optimal performance:

```sql
CREATE INDEX idx_users_email ON "User" (email);
CREATE INDEX idx_leads_assigned_to ON "Lead" (assignedToId);
CREATE INDEX idx_leads_created_by ON "Lead" (createdById);
CREATE INDEX idx_leads_status ON "Lead" (status);
CREATE INDEX idx_activities_lead_id ON "Activity" (leadId);
CREATE INDEX idx_activities_created_by ON "Activity" (createdById);
CREATE INDEX idx_notifications_user_id ON "Notification" (userId);
CREATE INDEX idx_notifications_is_read ON "Notification" (isRead);
```
-- Create the database (if it doesn't exist)
CREATE DATABASE crm_db;

-- Connect to the database
\c crm_db;

-- Create the uuid extension if it doesn't exist
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Create indexes for better performance
CREATE INDEX IF NOT EXISTS idx_users_email ON "User" (email);
CREATE INDEX IF NOT EXISTS idx_leads_assigned_to ON "Lead" (assignedToId);
CREATE INDEX IF NOT EXISTS idx_leads_created_by ON "Lead" (createdById);
CREATE INDEX IF NOT EXISTS idx_leads_status ON "Lead" (status);
CREATE INDEX IF NOT EXISTS idx_activities_lead_id ON "Activity" (leadId);
CREATE INDEX IF NOT EXISTS idx_activities_created_by ON "Activity" (createdById);
CREATE INDEX IF NOT EXISTS idx_notifications_user_id ON "Notification" (userId);
CREATE INDEX IF NOT EXISTS idx_notifications_is_read ON "Notification" (isRead);
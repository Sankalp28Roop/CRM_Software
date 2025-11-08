# Modern CRM Frontend Structure

## Project File Tree

```
frontend/
├── public/
│   └── vite.svg
├── src/
│   ├── App.jsx
│   ├── main.jsx
│   ├── index.css
│   ├── assets/
│   ├── components/
│   │   ├── Header.jsx
│   │   ├── Sidebar.jsx
│   │   ├── Toast.jsx
│   │   ├── LoadingSpinner.jsx
│   │   ├── Pagination.jsx
│   │   ├── SearchFilter.jsx
│   │   ├── Modal.jsx
│   │   └── Chart.jsx
│   ├── pages/
│   │   ├── Login.jsx
│   │   ├── Register.jsx
│   │   ├── Dashboard.jsx
│   │   ├── Leads.jsx
│   │   ├── LeadDetail.jsx
│   │   ├── Activities.jsx
│   │   ├── Notifications.jsx
│   │   └── Users.jsx
│   ├── layouts/
│   │   ├── MainLayout.jsx
│   │   └── AuthLayout.jsx
│   ├── store/
│   │   ├── index.js
│   │   ├── authSlice.js
│   │   ├── leadsSlice.js
│   │   ├── notificationsSlice.js
│   │   └── uiSlice.js
│   ├── hooks/
│   │   ├── useAuth.js
│   │   ├── useLeads.js
│   │   ├── useNotifications.js
│   │   └── useUI.js
│   ├── services/
│   │   ├── authService.js
│   │   ├── leadService.js
│   │   ├── activityService.js
│   │   ├── notificationService.js
│   │   └── dashboardService.js
│   ├── utils/
│   │   └── formatters.js
│   ├── constants/
│   │   ├── roles.js
│   │   └── leads.js
│   ├── styles/
│   │   └── main.css
│   └── config/
│       └── api.js
├── index.html
├── package.json
├── vite.config.js
└── README.md
```

## Key Components Implementation

### 1. Redux Store Architecture

**File: `src/store/index.js`**
- Configures Redux store with slices
- Implements middleware for serialization handling

**Auth Slice (`src/store/authSlice.js`):**
- Manages user authentication state
- Handles login, logout, and profile fetching
- Implements JWT token storage

**Leads Slice (`src/store/leadsSlice.js`):**
- Manages leads data state
- Handles CRUD operations with optimistic updates
- Implements pagination support

**Notifications Slice (`src/store/notificationsSlice.js`):**
- Manages notifications state
- Handles real-time notification updates
- Tracks unread count

**UI Slice (`src/store/uiSlice.js`):**
- Manages global UI state
- Handles loading states, themes, and toasts

### 2. Custom Hooks

**Auth Hook (`src/hooks/useAuth.js`):**
- Provides authentication functionality
- Exposes user state and auth methods

**Leads Hook (`src/hooks/useLeads.js`):**
- Provides leads management functionality
- Exposes leads data and CRUD operations

**Notifications Hook (`src/hooks/useNotifications.js`):**
- Provides notification management
- Handles WebSocket integration

**UI Hook (`src/hooks/useUI.js`):**
- Provides global UI state management
- Handles loading, themes, and toasts

### 3. Service Layer

**Auth Service (`src/services/authService.js`):**
- Handles authentication API calls
- Implements user management endpoints

**Leads Service (`src/services/leadService.js`):**
- Handles leads API calls
- Implements CRUD operations

**Activities Service (`src/services/activityService.js`):**
- Handles activity tracking API calls

**Notifications Service (`src/services/notificationService.js`):**
- Handles notification API calls

**Dashboard Service (`src/services/dashboardService.js`):**
- Handles dashboard data API calls

### 4. Layout Components

**Main Layout (`src/layouts/MainLayout.jsx`):**
- Implements main application layout
- Includes header, sidebar, and content area
- Integrates global components like toast and loading

**Auth Layout (`src/layouts/AuthLayout.jsx`):**
- Implements authentication pages layout
- Includes branding and global toast

### 5. Reusable Components

**Toast (`src/components/Toast.jsx`):**
- Implements notification toasts
- Supports different types (success, error, warning, info)

**Loading Spinner (`src/components/LoadingSpinner.jsx`):**
- Implements global loading indicator
- Full-screen overlay with spinner animation

**Pagination (`src/components/Pagination.jsx`):**
- Implements pagination controls
- Supports large datasets with ellipsis

**Search Filter (`src/components/SearchFilter.jsx`):**
- Implements search and filtering functionality
- Supports multiple filter types

**Modal (`src/components/Modal.jsx`):**
- Implements modal dialogs
- Supports different sizes

**Chart (`src/components/Chart.jsx`):**
- Implements data visualization
- Supports multiple chart types (bar, line, pie)

### 6. Pages

**Login (`src/pages/Login.jsx`):**
- Implements JWT-based authentication flow
- Form validation and error handling

**Dashboard (`src/pages/Dashboard.jsx`):**
- Implements KPI visualization
- Integrates charts for data insights

**Leads (`src/pages/Leads.jsx`):**
- Implements lead management CRUD operations
- Search, filtering, and pagination

**Lead Detail (`src/pages/LeadDetail.jsx`):**
- Implements lead detail view
- Activity timeline integration

**Activities (`src/pages/Activities.jsx`):**
- Implements activity tracking
- Timeline view for lead interactions

**Notifications (`src/pages/Notifications.jsx`):**
- Implements notification center
- Real-time updates with WebSocket

**Users (`src/pages/Users.jsx`):**
- Implements user management (Admin only)
- Role-based access control

### 7. Constants and Utilities

**Roles (`src/constants/roles.js`):**
- Defines user roles and permissions
- Implements role-based access control

**Leads (`src/constants/leads.js`):**
- Defines lead statuses and activity types
- Implements status mapping and colors

**Formatters (`src/utils/formatters.js`):**
- Implements data formatting utilities
- Date, currency, and text formatting

## Key Features Implemented

### Authentication & Authorization
- JWT-based authentication flow
- Role-based access control (Admin, Manager, Sales Executive)
- Protected routes with permission checking
- Session management with token refresh

### Lead Management
- Full CRUD operations for leads
- Status tracking and ownership assignment
- Search and filtering capabilities
- Pagination for large datasets

### Activity Timeline
- Activity tracking (calls, meetings, notes, emails)
- Timeline visualization
- Activity creation and management

### Real-time Notifications
- WebSocket integration for real-time updates
- Notification center with read/unread status
- Toast notifications for user feedback

### Dashboard Analytics
- KPI visualization with charts
- Lead trends and conversion tracking
- Revenue and performance metrics

### Responsive Design
- Mobile-first responsive layout
- Adaptive components for all screen sizes
- Touch-friendly navigation

### Performance Optimizations
- Code splitting and lazy loading
- Memoization and efficient re-rendering
- Bundle optimization

### State Management
- Centralized state with Redux Toolkit
- Persistent state with Redux Persist
- Optimistic updates for better UX

### Error Handling
- Global error boundaries
- Form validation and error messaging
- API error handling and recovery

### Developer Experience
- Consistent folder structure
- Reusable components and hooks
- TypeScript-ready architecture
- Comprehensive documentation
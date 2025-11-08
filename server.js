const express = require('express');
const path = require('path');

const app = express();
const PORT = process.env.PORT || 8080;

// Serve static files from the dist directory (landing page)
app.use(express.static(path.join(__dirname, 'frontend', 'dist')));

// Serve static files from the app directory (React app)
app.use('/app', express.static(path.join(__dirname, 'frontend', 'dist', 'app')));

// Handle React app routes
app.get('/app/*', (req, res) => {
  res.sendFile(path.join(__dirname, 'frontend', 'dist', 'app', 'index.html'));
});

// Handle landing page route
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'frontend', 'dist', 'index.html'));
});

app.listen(PORT, '0.0.0.0', () => {
  console.log(`Server is running on http://localhost:${PORT}`);
  console.log(`Access the CRM landing page at http://localhost:${PORT}`);
  console.log(`Access the CRM application at http://localhost:${PORT}/app/`);
});
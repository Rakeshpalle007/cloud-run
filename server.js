const express = require('express');
const app = express();
const PORT = process.env.PORT || 8080;

// Simple route
app.get('/', (req, res) => {
  res.send('Hello from Cloud Run!');
});

// Start server
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});

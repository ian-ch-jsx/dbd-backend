const express = require('express');

const app = express();

// Built in middleware
app.use(express.json());

// App routes
app.get('/', (req, res) => {
  res.send('root route');
});

app.use('/api/v1/survivorperks', require('./controllers/survivors'));
app.use('/api/v1/killerperks', require('./controllers/killers'));

// Error handling & 404 middleware for when
// a request doesn't match any app routes
app.use(require('./middleware/not-found'));
app.use(require('./middleware/error'));

module.exports = app;

const express = require('express');
const app = express();

app.get('/api/hello', (req, res) => {
    res.json({ message: 'Hello from backend!' });
});

const port = process.env.PORT || 5000;
app.listen(port, () => {
    console.log(`Server running on http://localhost:${port}`);
});
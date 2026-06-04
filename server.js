const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

let openClawStatus = "stopped";

app.use(express.json());

app.get('/api/start', (req, res) => {
    openClawStatus = "started";
    res.send('OpenClaw started');
});

app.get('/api/stop', (req, res) => {
    openClawStatus = "stopped";
    res.send('OpenClaw stopped');
});

app.get('/api/status', (req, res) => {
    res.send(`OpenClaw status: ${openClawStatus}`);
});

app.listen(port, () => {
    console.log(`Server listening on port ${port}`);
});

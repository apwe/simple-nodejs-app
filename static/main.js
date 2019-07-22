const http = require("http");
const express = require("express");
const path = require("path");

let app = express();
app.server = http.createServer(app);

// serving static index.html
app.get('/', function(req, res) {
    res.sendFile(path.join(__dirname + '/index.html'));
});

let port = 3000;

app.listen(port, function () {console.log(`App listening on port ${port}!`)});
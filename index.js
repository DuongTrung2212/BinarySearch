const express = require("express");

const app = express();

const PORT = 1234;

app.use(express.static("static"));

app.get("/", (req, res) => {
    return res.sendFile(__dirname + "/index.html");
});

app.listen(PORT);

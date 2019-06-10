const express = require("express");
const path = require("path");
const app = express();
const port = 3000;

app.get("/", (req, res) => res.sendFile(path.join(__dirname + "/index.html")));

app.use("/public", express.static(path.join(__dirname, "public")));

app.listen(port, () =>
  console.log(`Running express server on http://localhost:${port}/`)
);

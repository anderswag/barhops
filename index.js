"use strict";

const express = require('express')
const app = express()

// Routes
const getNearBars     = require("./routes/getNearBars");


app.set('port', (process.env.PORT || 5000))
app.use(express.static(__dirname + '/public'))


app.use("/api/getNearBars", getNearBars());

app.get('/', function(request, response) {
  response.send('Hello World!')
})

app.listen(app.get('port'), function() {
  console.log("Node app is running at localhost:" + app.get('port'))
})


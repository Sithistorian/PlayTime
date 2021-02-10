const express = require('express')
const app = express();
const db1 = require('./databases/index.js');

const port = 3000;

app.use(express.static('./public'));

app.listen(port, () => {
  console.log(`Listening at http://localhost:${port}`)
})
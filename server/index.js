const express = require('express');

const PORT = 3000;
const app = express();
app.listen(PORT, '0.0.0.0', ()=>{
    console.log(`express application running at ${PORT}`)
});
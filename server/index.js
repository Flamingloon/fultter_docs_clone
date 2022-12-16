const express = require("express");
const monngoose = require("mongoose");

const PORT = process.env.PORT | 3001 ;

const DB ="mongodb+srv://sahil:sahil@cluster0.qdlhptd.mongodb.net/?retryWrites=true&w=majority";

monngoose.connect(DB).then(() =>
  {
    console.log("Connection Successfull");
  }
).catch((err) => {
    console.log(err);
});

const app = express();

app.listen(PORT , "0.0.0.0", () => {
    console.log(`Connected to port ${PORT} is lit`);
});


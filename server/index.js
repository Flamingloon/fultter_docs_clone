const express = require("express");
const monngoose = require("mongoose");
const authRouter = require("./routes/auth");

const PORT = process.env.PORT | 3001 ;

const DB ="mongodb+srv://sahil:sahil@cluster0.qdlhptd.mongodb.net/?retryWrites=true&w=majority";
const app = express();

app.use(express.json());
app.use(authRouter);
monngoose.connect(DB).then(() =>
  {
    console.log("Connection Successfull");
  }
).catch((err) => {
    console.log(err);
});



app.listen(PORT , "0.0.0.0", () => {
    console.log(`Connected to port ${PORT} is lit`);
});


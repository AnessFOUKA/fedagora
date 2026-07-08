const express=require("express");
const cors=require("cors");
require("dotenv").config();

const app=express();
app.use(cors());
app.use(express.json());

app.listen(process.env.API_PORT,()=>{
    console.log("api connection started at : "+process.env.API_PORT);
});
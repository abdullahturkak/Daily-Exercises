const express = require('express')
const app = express()
const mongoose = require("mongoose");

async function connectDB() {
    await mongoose.connect("mongodb+srv://Abdullah:Abdullah@cluster0.bbwdlkj.mongodb.net/test",
        { useUnifiedTopology: true, useNewUrlParser: true });
    console.log("db connected")
}
connectDB()

app.use(express({ extended: false }));

app.get('/', (req, res) => {
    res.send('Hello World!')
})

app.post('/signup', (req, res) => {
    const { email, password } = req.body;
    return res.send('Sign Up Route')
})

app.listen(5000, () => {
    console.log(`Example app listening on port ${5000}`)
})
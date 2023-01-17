const express = require('express')
const app = express()
const mongoose = require("mongoose");
mongoose.set('strictQuery', true);

async function connectDB() {
    await mongoose.connect("mongodb+srv://Abdullah:Abdullah@cluster0.bbwdlkj.mongodb.net/program",
        { useUnifiedTopology: true, useNewUrlParser: true, });
    console.log("db connected")
}
connectDB()

app.use(express.json())

app.get('/', (req, res) => {
    res.send('Hello World!')
})

app.post('/signup', async (req, res) => {
    const { _progname, programicerik } = req.body;
    console.log(_progname);
    console.log(programicerik);
    const schema = new mongoose.Schema({ _progname: 'string', programicerik: 'string' });
    const User = mongoose.model('User', schema);

    let user = new User({
        _progname,
        programicerik,
    });
    console.log(_progname);

    await user.save();
    res.json({ token: "1234567890" });
})

app.listen(5000, () => {
    console.log(`Example app listening on port ${5000}`)
})
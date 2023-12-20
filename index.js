const express = require("express");
const app = express();

const cors = require('cors');


app.use(cors());

app.use(express.json());
app.use(express.urlencoded({extended: true}));

app.use(require('./routes/runners'));
app.use(require('./routes/map'));
app.use(require('./routes/graph'));

app.listen(process.env.PORT||3000,() => {
    console.log(`Server running at port ${process.env.PORT}`);
});

module.exports = app;

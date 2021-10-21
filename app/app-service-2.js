const express = require('express');
const cors = require('cors');

const app = express();

app.use(cors());

app.get('/', (req, res) => res.status(200).send('Ok from Service 2!'));

app.listen(3000, () => {
    console.log('Listening on PORT 3000!');
});

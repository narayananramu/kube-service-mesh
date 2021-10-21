const express = require('express');
const cors = require('cors');

const app = express();

app.use(cors());

app.get('/', (req, res) => res.status(200).send('Ok!'));
app.get('/service-1', (req, res) => res.status(200).send('Ok Service 1!'));
app.get('/service-2', (req, res) => res.status(200).send('Ok Service 2!'));

app.listen(3000, () => {
    console.log('Listening on PORT 3000!');
});

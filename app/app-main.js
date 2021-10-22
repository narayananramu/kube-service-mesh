const axios = require('axios').default;
const express = require('express');
const cors = require('cors');

const app = express();

app.use(cors());

app.get('/', (req, res) => res.status(200).send('Ok!'));
app.get('/service-1', async (req, res) => {
    const { data } = await axios.get('http://kube-service-mesh-service-1-service.kube-service-mesh-linkerd.svc.cluster.local:3000');
    return res.status(200).send(data);
});
app.get('/service-2', (req, res) => {
    try {
        const { data } = await axios.get('http://kube-service-mesh-service-2-service.kube-service-mesh-linkerd.svc.cluster.local:3000');
        return res.status(200).send(data);
    } catch (e) {
        return res.status(500).send(e.toString());
    }
});

app.listen(3000, () => {
    console.log('Listening on PORT 3000!');
});

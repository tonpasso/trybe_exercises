const express = require('express');
const bodyParser = require('body-parser');

const app = express();
const PORT = process.env.PORT || 3000;

app.use(bodyParser.json());
app.use(express.urlencoded({ extended: false }));

app.listen(PORT, () => console.log(`Ouvindo na porta ${PORT}!`));

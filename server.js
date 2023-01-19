import express from 'express';
import database from './database.js';
import url from 'url';
import path from 'path';
import fileupload from 'express-fileupload'
import { HowLongToBeatService, HowLongToBeatEntry } from 'howlongtobeat';

let hltbService = new HowLongToBeatService();



const app = express();
var __filename = url.fileURLToPath(
  import.meta.url);
var __dirname = path.dirname(__filename) + "/views";
var caminhopadrao = path.dirname(__filename);

app.use((req, res, next) => {
   console.log(req.url);
    next();
  })


app.listen(8080, () => console.log('Servidor rodando!'));

app.use(fileupload());
app.use(express.json());
app.use(express.static('assets/css'));
app.use(express.static('assets/js'));
app.use(express.static('assets/img'));

app.get('/cadastro', (req, res) => {
    res.header('Content-Type', 'text/html');
    res.sendFile(__dirname + '/cadastro.html');
  })

app.get('/pesqjogo/:jogo', (req, res) => {
  
  hltbService.search(req.params.jogo).then(result => res.send(result));
  
})    
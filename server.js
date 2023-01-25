import express from 'express';
import session from 'express-session';
import passport from 'passport';
import GoogleStrategy from 'passport-google-oauth2';
import database from './database.js';
import url from 'url';
import path from 'path';
import fileupload from 'express-fileupload'
import { HowLongToBeatService, HowLongToBeatEntry } from 'howlongtobeat';
import dotenv from 'dotenv';
import puppeteer from 'puppeteer';
import request from 'request';

let hltbService = new HowLongToBeatService();

dotenv.config();

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
app.use(session({
  resave: false,
  saveUninitialized: true,
  secret: 'calvo'
}));

app.use(passport.initialize());
app.use(passport.session());
passport.use(new GoogleStrategy({
      clientID: process.env.clientID,
      clientSecret: process.env.clientSecret,
      callbackURL: "http://localhost:8080/callback",
      passReqToCallback: true
  },
  function (request, accessToken, refreshToken, profile, done) {
      return done(null, profile);
  }
));

passport.serializeUser((user, done) => {
  done(null, user)
});

passport.deserializeUser((user, done) => {
  done(null, user)
});

function isLoggedIn(req, res, next) {
  if (req.isAuthenticated()) { return next() }
  res.redirect("/login")
}
app.get('/login', (req, res) => {
  res.header('Content-Type', 'text/html');
  res.sendFile(__dirname + '/login.html');
})

app.get('/google',
    passport.authenticate('google', {
        scope: ['email', 'profile']
    }));

app.get('/callback',
    passport.authenticate('google', {
        successRedirect: '/cadastro',
        failureRedirect: '/google/failure'
    })
);

app.get('/google/failure', async (req, res) => {
    res.send("Deu errado!", function (err) {
        if (err) {
            return res.status(err.status).end();
        } else {
            return res.status(200).end();
        }
    });
});

app.get('/cadastro', isLoggedIn,  (req, res) => {
    res.header('Content-Type', 'text/html');
    res.sendFile(__dirname + '/cadastro.html');
  })

app.get('/pesqjogo/:jogo', isLoggedIn, (req, res) => {
  
  hltbService.search(req.params.jogo).then(result => res.send(result));
  
})    

app.get('/cadastrar', isLoggedIn,  (req, res) => {
  res.header('Content-Type', 'text/html');
  res.sendFile(__dirname + '/cadastrar.html');
})

app.get('/price/:nome', async (req, res) => {
  let precojogo = await pesquisa_jogo(req.params.nome)
  const link = `https://economia.awesomeapi.com.br/json/last/USD-BRL`;
  request(link, (err, response, html) => {
    if (!err) {
      const json1 = JSON.parse(html);
      res.send([{ dinheiro: precojogo*json1.USDBRL.high }]);

    }
  });
  

  

})

async function pesquisa_jogo(jogo) {

  const browser = await puppeteer.launch({
    headless: true
  });
  const page = await browser.newPage();
  await page.setUserAgent('Mozilla/5.0 (Windows NT 5.1; rv:5.0) Gecko/20100101 Firefox/5.0');
  await page.setViewport({
    width: 1280,
    height: 1800
  })
  await page.goto("https://www.pricecharting.com/search-products?q="+ jogo + "&type=prices");
  const resultado = await page.evaluate(() => {

    let rnome = document.querySelectorAll("td.title > a")[0].textContent
    let rpreco = document.querySelectorAll("td.price.numeric.cib_price > span")[0].textContent
      
      console.log(rnome)
        return rpreco
        
}); await browser.close();
 return resultado.replace("$", "");}


app.get('*', isLoggedIn, (req, res) => {
  res.header('Content-Type', 'text/html');
  res.sendFile(__dirname + '/login.html');
})

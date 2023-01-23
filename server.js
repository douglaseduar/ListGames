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

app.get('/price', async (req, res) => {
  const link = `https://www.cheapshark.com/api/1.0/deals?title=    &pageSize=1&pageNumber=0`;
  request(link, (err, response, html) => {
    if (!err) {
      const json1 = JSON.parse(html);
      res.send(json1.results);

    }
  });

})




app.get('*', isLoggedIn, (req, res) => {
  res.header('Content-Type', 'text/html');
  res.sendFile(__dirname + '/login.html');
})
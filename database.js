import mysql from 'mysql2/promise';

const database = {};

database.con = await mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'listgames',
  port: '3306'
})



database.getLogin = async function (sessionid) {
  let [rows, fields] = await database.con.execute('SELECT * FROM jogador WHERE id = ?', [sessionid]);

  return rows;
}

database.insertUser = async function (id_cliente, nome, foto) {
  let [data] = await database.con.execute('INSERT INTO jogador (id, nome, foto) VALUES (?, ?, ?)',
    [id_cliente, nome, foto]);

  return {
    'numero': data.insertId
  }
}

database.cadastrarjogo = async function (vnome, vurl, vhora, vvalor, vplataforma, vid, vprogresso, vmultiplayer, id) {
  let [data] = await database.con.execute('INSERT INTO jogos (htlb,	nome, valor, tempo, plataforma, progresso, multiplayer, fk_jogador_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?)',
    [vurl, vnome, vvalor, vhora, vplataforma, vprogresso, vmultiplayer, id]);

  return {
    'numero': data.insertId
  }
}
database.gettodos = async function (sessionid) {
  let [rows, fields] = await database.con.execute('SELECT * FROM jogos WHERE fk_jogador_id = ?', [sessionid]);

  return rows;
}
database.gettodos1 = async function (sessionid) {
  let [rows, fields] = await database.con.execute('SELECT * FROM jogos WHERE fk_jogador_id = ? AND comprado = 1', [sessionid]);

  return rows;
}
database.getjogosc = async function (sessionid) {
  let [rows, fields] = await database.con.execute('SELECT * FROM jogos WHERE fk_jogador_id = ? AND progresso = "COMPLETO" AND NOT jogando = 1 ORDER BY nome', [sessionid]);

  return rows;
}
database.getjogosn = async function (sessionid) {
  let [rows, fields] = await database.con.execute('SELECT * FROM jogos WHERE fk_jogador_id = ? AND progresso = "NÃO JOGUEI" AND NOT jogando = 1 ORDER BY nome', [sessionid]);

  return rows;
}
database.getjogost = async function (sessionid) {
  let [rows, fields] = await database.con.execute('SELECT * FROM jogos WHERE fk_jogador_id = ? AND progresso = "HISTÓRIA" AND NOT jogando = 1 ORDER BY nome', [sessionid]);

  return rows;
}
database.getjogosa = async function (sessionid) {
  let [rows, fields] = await database.con.execute('SELECT * FROM jogos WHERE fk_jogador_id = ? AND jogando = 1 ORDER BY nome', [sessionid]);

  return rows;
}

database.getpesquisa = async function (sessionid, pesquisa) {
  let [rows, fields] = await database.con.execute('SELECT * FROM jogos WHERE fk_jogador_id = ? AND nome LIKE CONCAT("%", ?,  "%")', [sessionid, pesquisa]);

  return rows;
}
database.getplatinas = async function (sessionid) {
  let [rows, fields] = await database.con.execute('SELECT * FROM jogos WHERE progresso = "completo" AND fk_jogador_id = ?', [sessionid]);

  return rows;
}
database.getplatinas1 = async function (sessionid) {
  let [rows, fields] = await database.con.execute('SELECT * FROM jogos WHERE progresso = "completo" AND fk_jogador_id = ? AND comprado = 1', [sessionid]);

  return rows;
}
database.gethoras = async function (sessionid) {
  let [rows, fields] = await database.con.execute('SELECT SUM(tempo) as qtd FROM jogos WHERE progresso = "história" OR progresso = "COMPLETO" AND fk_jogador_id = ?', [sessionid]);

  return rows;
}
database.gethoras1 = async function (sessionid) {
  let [rows, fields] = await database.con.execute('SELECT SUM(tempo) as qtd FROM jogos WHERE progresso = "história" OR progresso = "COMPLETO" AND fk_jogador_id = ? AND comprado = 1', [sessionid]);

  return rows;
}
database.getvalores = async function (sessionid) {
  let [rows, fields] = await database.con.execute('SELECT SUM(valor) as quanto FROM jogos WHERE fk_jogador_id = ?', [sessionid]);

  return rows;
}
database.getvalores1 = async function (sessionid) {
  let [rows, fields] = await database.con.execute('SELECT SUM(valor) as quanto FROM jogos WHERE fk_jogador_id = ? AND comprado = 1', [sessionid]);

  return rows;
}


export default database;
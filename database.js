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
database.getpesquisa = async function (sessionid, pesquisa) {
  let [rows, fields] = await database.con.execute('SELECT * FROM jogos WHERE fk_jogador_id = ? AND nome LIKE CONCAT("%", ?,  "%")', [sessionid, pesquisa]);

  return rows;
}
database.getplatinas = async function (sessionid) {
  let [rows, fields] = await database.con.execute('SELECT * FROM jogos WHERE progresso = "completo" AND fk_jogador_id = ?', [sessionid]);

  return rows;
}
database.gethoras = async function (sessionid) {
  let [rows, fields] = await database.con.execute('SELECT SUM(tempo) as qtd FROM jogos WHERE progresso = "completo" OR progresso = "terminado" AND fk_jogador_id = ?', [sessionid]);

  return rows;
}
database.getvalores = async function (sessionid) {
  let [rows, fields] = await database.con.execute('SELECT SUM(valor) as quanto FROM jogos WHERE fk_jogador_id = ?', [sessionid]);

  return rows;
}


export default database;
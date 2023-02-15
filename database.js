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



export default database;
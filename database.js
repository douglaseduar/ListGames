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



export default database;
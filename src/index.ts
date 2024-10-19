// Get the client
import mysql from 'mysql2/promise';

// Create the connection to database
const connection = await mysql.createConnection({
  host: 'localhost',
  user: 'uptc_user',
  password: 'store123',
  database: 'uptc_store',
});

const result = await connection.query('SELECT * FROM PERSONA');
const rows = result[0];
console.log(rows);
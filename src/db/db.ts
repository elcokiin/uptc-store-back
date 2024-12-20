// Get the client
import mysql from 'mysql2/promise'

// Load environment variables
import dotenv from 'dotenv'
dotenv.config()

// Create the connection to database
export const connection = await mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
})
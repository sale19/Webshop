const mysql = require("mysql2/promise");

const connectionConfig = {
  host: "localhost",
  port: 3306,
  user: "root",
  password: "root",
  database: "webshop",
};

const connectToDatabase = async () => {
  try {
    const connection = await mysql.createConnection(connectionConfig);
    console.log("Connected to DB");
    return connection;
  } catch (error) {
    console.log(`Problem baza: ${error}`);
    throw error;
  }
};



module.exports = { connectToDatabase };
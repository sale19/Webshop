const { connectToDatabase } = require("./routes/database");

const express = require("express");
const app = express();
app.use(connectToDatabase);



const fetchProducts = async (req, res) => {
  try {
    const connection = await connectToDatabase();
    const sqlQuery = "SELECT * FROM products";
    const [products] = await connection.execute(sqlQuery);
    return res.json(products);
  } catch (error) {
    res
      .status(500)
      .json({ message: `Error on products fetching. Reason ${error}` });
  }
};


const fetchProductPage = async (req, res) => {
  try {
    const connection = await connectToDatabase();

    const page = parseInt(req.query.page);
    const pageSize = parseInt(req.query.pageSize);
 
    const offset = (page - 1) * pageSize;
    const sqlQueryProductOnPage = `SELECT sql_calc_found_rows * FROM products LIMIT ${offset},${pageSize}`;
    const [product] = await connection.execute(sqlQueryProductOnPage);
    
    const sqlCountQuery = "SELECT FOUND_ROWS() AS count";
    const [rows] = await connection.execute(sqlCountQuery);
    const totalProductNumber = rows[0].count;
    const totalPageNumber = Math.ceil(totalProductNumber/pageSize);
    return res.json(
      {
        totalPageNumber: totalPageNumber, 
        items: product
      }
    );
  } catch (error) {
    res
      .status(500)
      .json({ message: `Error on product page fetching. Reason ${error}` });
  }
};


const fetchRecommendedRandomProducts = async (req, res) => {
  try {
    const connection = await connectToDatabase();
    const sqlQuery = "SELECT * FROM products ORDER BY RAND() LIMIT 4";
    const [proizvodi] = await connection.execute(sqlQuery);
    return res.json(proizvodi);
  } catch (error) {
    res
      .status(500)
      .json({ message: `Error on random products fetching. Reason ${error}` });
  }
};


module.exports = { fetchProducts, fetchProductPage, fetchRecommendedRandomProducts };
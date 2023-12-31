const express = require("express");
const { fetchProducts, fetchProductPage, fetchRecommendedRandomProducts, countProductRows } = require("../requestHandler");
const router = express.Router();

//http://localhost:8080/products
router.get("/products", fetchProducts);
//http://localhost:8080/product?page=2&pageSize=10
router.get("/product", countProductRows);
//http://localhost:8080/proizvodi
router.get("/proizvodi", fetchRecommendedRandomProducts);



module.exports = router;
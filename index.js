const express = require("express");
const cors = require("cors");
const bodyParser = require("body-parser");
const mysql = require("mysql2");
const router = require("./routes/router");
const bcrypt = require("bcryptjs");


const app = express();

app.use(cors());
app.use(bodyParser.json());
app.use(router);

const configObject = {
  host: "localhost",
  port: 3306,
  user: "root",
  password: "root",
  database: "users",
};



const port2 = 3306;

const connection = mysql.createConnection(configObject);
connection.connect((error) => {
  if (error) console.log(`Problem connecting to database. ${error}`);
  console.log(`Successfully connected to port ${port2}`);
});


app.post("/users/register", callbackOnRegister);
function callbackOnRegister(req, res) {
  const { nameInput, surnameInput, usernameInput, emailInput, passwordInput } = req.body;
  const numberOfSaltRounds = 12;
  bcrypt.genSalt(numberOfSaltRounds, (error, salt) => {
    bcrypt.hash(passwordInput, salt, (error, hashPassword) => {
      if(error) {
        res.status(500).json({message: `Error ${error}`});

      }
      userRegistration(nameInput, surnameInput, usernameInput, emailInput, hashPassword, res);
  
      });
  });
}

function userRegistration(nameInput, surnameInput, usernameInput, emailInput, hashPassword, res) {
  const sqlQuery = "INSERT INTO users (name,surname,username,email,password) VALUES (?,?,?,?,?)";
  const promise = connection.promise().query(sqlQuery, [nameInput, surnameInput, usernameInput, emailInput, hashPassword]);

  promise
  .then(() => {
    res.status(201).json({ message: "User successfully registered!"});
  })
.catch ((error) => {
  res.status(500).json({ message: `Error on register user! Reason ${error}` });
});
}
  

app.post('/login', callbackOnLogin);
function  callbackOnLogin(req, res) {
  const { usernameInput, passwordInput } = req.body;
  const sqlValidationQuery = "SELECT password FROM users WHERE username = ?";
  const promise = connection.promise().query(sqlValidationQuery, [usernameInput]);
  promise
  .then(async([rows, fields]) => {
    if(rows.length === 0) {
      res.status(401).json({message: 'Wrong username or password! Please try again.'});
    }
    if(rows.length>1){
      res.status(401).json({message: 'Your user account is compromised!'});
    }
    const savedPassword = rows[0].password;
    console.log(`Saved password ${savedPassword}`);
    const comparePassword = await bcrypt.compare(passwordInput, savedPassword);
    if(comparePassword) {
      res.status(200).json({message: "User successfully logged-in!"});
    } else {
      res.status(401).json({message: 'Wrong username or password! Please try again.'});
    }
})
.catch((error) => {
  res.status(500).json({
    message: `Error ${error}`,
  });
});
}


const port = 8080;
//http://localhost:8080
app.listen(port,  () => {
  console.log(`Server listening at port ${port}`);
});

module.exports = router;
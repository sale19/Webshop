const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const db = require('./dashboard_db')
const  app = express();
app.use(express.json());
app.use(express.urlencoded({extended:true}));
app.use(cors());
app.use(bodyParser.json());


app.get('/products',(req,res)=>{
    db.getProducts()
    .then((products)=>{
        res.json(products)
    })
    .catch(function(err){
        res.sendStatus(err)
    });
});


app.get('/products/:id',(req,res)=>{
    db.getProducts(req.params.id)
    .then((products)=>{
        res.sendStatus(products)
    })
    .catch(function(err){
        res.sendStatus(err)
    });
});


app.post('/products',(req,res)=>{    
    db.addProduct(req.body.name,req.body.specification,req.body.description,req.body.price)
    .then((products)=>{
        res.sendStatus((products))
    })
    .catch((err)=>{
        res.sendStatus(err)
    });

});


app.put('/products',(req,res)=>{    
    db.updateProduct(req.body.name,req.body.specification,req.body.description,req.body.price,req.body.id)
    .then(()=>{
        res.json(req.body)
    })
    .catch((err)=>{
        res.sendStatus(err)
    });

});


app.delete('/products/:id',(req,res)=>{    
    db.deleteProduct(req.params.id)
    .then((res)=>{
        res.send(res)
    })
    .catch((err)=>{
        res.send(err)
    });
});


const port = 4000;
//http://localhost:4000
app.listen(port,  () => {
  console.log(`Server listening at port ${port}`);
});
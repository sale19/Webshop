const sql = require('mysql2');

const connection = sql.createConnection({
    host:'localhost',
    user:'root',
    password:'root',
    database:'webshop'

})

async function getProducts(id){
    return new Promise(function(resolve,reject){
        if(id){
            connection.query(`SELECT * FROM products WHERE id= ?`,[id],
                function(err,row,cols){
                    if(err)
                        reject(err)            
                    else
                        resolve(row)
                        
                }
            )
        }
        else{
            connection.query(`SELECT * FROM products`,
                function(err,rows,cols){
                    if(err)
                        reject(err)            
                    else
                        resolve(rows)        
                }
            )
        }

    })
}


async function checkProduct(name){
    return new Promise(function(resolve,reject){        
        connection.query(`SELECT * FROM products WHERE name=? `,[name],
            function(err,row,cols){
                if(err)
                    reject(err)            
                else
                    resolve(row)                        
            }
        )
        
    })

}


async function addProduct(name,specification,description,price){

    return new Promise(function(resolve,reject){
        checkProduct(name)
        .then((res)=>{
            if(res.length>0)
                reject(409)
            else{
                connection.query(
                    `INSERT INTO products (name,specification,description,price) VALUES (?,?,?,?)`,[name,specification,description,price],
                     function(err,res){
                         if(err)
                            reject(500)
                         
                        else
                            resolve(201)
                    }            
                )
            }

        })
        .catch(()=>{
            reject(500)
        })
       
    })
}
            
  
async function updateProduct(name,specification,description,price,id){
    return new Promise(function(resolve,reject){
        getProducts(id)
        .then((rows)=>{
            if(rows.length>0){
                connection.query(
                    `UPDATE products SET  name=?,specification=?,description=?,price=? WHERE id=?`,
                     [name,specification,description,price,id],
                     function(err,res){
                         if(err)
                            reject(500)                
                          else
                            resolve()
                     }                    
                )
            }
            else
                reject(404)           
        })
        .catch(()=>reject(500))        
    })
}


async function deleteProduct(id){
    return new Promise(function(resolve,reject){
        getProducts(id)
        .then((rows)=>{
            if(rows.length>0){
                connection.query(
                    `DELETE FROM products WHERE id=?`,[id],
                        function(err,res){
                            if(err)
                            reject(500)                
                            else
                            resolve(204)
                        }                    
                )
            }
            else{
                reject(404)
            }
        })
        .catch(()=>reject(500))
        
    })

}

exports = module.exports ={
    getProducts,
    addProduct,
    updateProduct,
    deleteProduct
}
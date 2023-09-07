const tbody = document.querySelector('tbody');
const addProductButton = document.querySelector('.btn-dark');
const formWrapper = document.querySelector('.form-wrapper');
const saveBtn = document.querySelector('.saveBtn');
const cancelBtn = document.querySelector('.cancelBtn');
const nameInputValue = document.querySelector('#name');
const specsInputValue = document.querySelector('#specification');
const descInputValue = document.querySelector('#description');
const priceInputValue = document.querySelector('#price');


let httpm = null;

let url ='http://localhost:4000/products';

let products = [];

let id = null;

let data ={};

addProductButton.onclick = function(){
    httpm="POST";
    clearForm();
    formWrapper.classList.add('active');
}


cancelBtn.onclick = function(){
    formWrapper.classList.remove('active');
}

saveBtn.onclick= function(){

    data.name= nameInputValue.value;
    data.specification= specsInputValue.value;
    data.description = descInputValue.value;
    data.price = priceInputValue.value;
    if(httpm =="PUT"){
        data.id= id
    }

    
    fetch(url,
        { 
            method: httpm, body: JSON.stringify(data), 
            headers: { "Content-type": "application/json" } 
        })
    .then(()=>{
        clearForm();
        formWrapper.classList.remove('active');
        getProducts()
    })


}

function clearForm(){
    nameInputValue.value = "";
    specsInputValue.value = "";
    descInputValue.value = "";
    priceInputValue.value = "";
}



function getProducts(){
    fetch(url)
    .then(response=>response.json())
    .then(data=>{
        products = data;
        updateTable();

    })

    
}



function updateTable(){
    let data="";

    if(products.length>0){
        for(i= 0;i<products.length;i++){

            data+=  `<tr id="${products[i]['id']}">
                        <td>${products[i]['name']}</td>
                        <td>${products[i]['specification']}</td>
                        <td>${products[i]['description']}</td>
                        <td>${products[i]['price']} KM</td>
                        <td><button class="btn btn-success" onclick="editProduct(event)">Edit</button></td>
                        <td><button class="btn btn-danger" onclick="deleteProduct(event)">Delete</button></td>   
                     </tr>`
        }

     tbody.innerHTML=data;
    }

}

function editProduct(e){
   formWrapper.classList.add('active');
   httpm = "PUT"
   id = e.target.parentElement.parentElement.id;
  let selectedProduct = products.filter((p)=>{return p['id'] == id})[0];
  nameInputValue.value = selectedProduct.name;
  specsInputValue.value = selectedProduct.specification;
  descInputValue.value = selectedProduct.description;
  priceInputValue.value = selectedProduct.price;


   

}

function deleteProduct(e){
    id= e.target.parentElement.parentElement.id;
     fetch(url+"/"+id, {method:'DELETE'})
     .then(
        ()=>{
            getProducts()
        }
     )

}


getProducts();
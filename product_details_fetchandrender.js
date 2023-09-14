function generateProductDetails() {
 
fetch(`http://localhost:8080/proizvodi`)
.then((response) => {
  return response = response.json()
})
.then((data) => {
    data.forEach(product => {
    const documentBody = document.getElementById('product-details');
    documentBody.innerHTML = '';
    const rows = document.createElement('div');
    rows.classList.add('row');
    rows.classList.add('column-3');
    rows.innerHTML = `
      <img>${product.img}</img>
    `
  
    documentBody.appendChild(rows);
    const rows2 = document.createElement('div');
    rows2.classList.add('column-3');
    rows2.innerHTML = `
  
      <p>${product.name}</p>
      <h1>${product.specification}</h1>
      <h4>${product.price} KM</h4>
      <div>
      <input id="quantity" type="number" value="1" min="1" class="align-bottom d-inline-block">
      <button href="#" id="add-to-cart" class="btn btn-dark" disabled>Add To Cart</button>
      </div>
      <h3>Product Details</h3>
      <p>${product.description}</p>
    `
    documentBody.appendChild(rows2);

});
});
}



generateProductDetails();
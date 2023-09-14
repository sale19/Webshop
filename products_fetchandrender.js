const hostUrl = 'http://localhost:8080';


function getData (page, pageSize) {
   
    const address = `${hostUrl}/product?page=${page}&pageSize=${pageSize}`;
   
    const request = {
        
        method: 'GET',
        headers: {
            'Content-Type': 'application/json',
    },

};
const promise = fetch(address, request);
promise
    .then((response) => response.json())
    .catch((error) => alert(error))
    .then(handleProductPage)
    .catch ((error) => alert(error))
    .then (callbackOnProductsLoad)
    .catch((error) => alert(error))
}


    const getPageSizeValueTop = document.querySelector('#pageSizeValueTop');
    const getPageSizeValueBottom = document.querySelector('#pageSizeValueBottom');
   [getPageSizeValueTop, getPageSizeValueBottom].forEach((getPageSizeValueTop)=> {
    getPageSizeValueTop.addEventListener('change', ()=>{

    start = 1;
    end = 10;

   getData(1, getPageSizeValueTop.value);


});
});

getData(1, getPageSizeValueTop.value);


function addProductsToPagination(products) {
const addProducts = document.getElementById('shop-product-section');
addProducts.innerHTML = '';
    for(const product  of products) {
    const rows = document.createElement('div');
    

    rows.classList.add('row');
    rows.classList.add('column-3');

    rows.innerHTML = `
    <img>${product.img}</img>
    <h4>${product.name}</h4>
    <p>${product.price} KM</p>
    <a class="view-details" href="details.html?/products/pdetails/${product.id}">View Details</a>
    `
    addProducts.appendChild(rows);
    
}
}


function callbackOnProductsLoad () {
  addRecommendedProductsToDocumentBody();
}


function handleProductPage(productPageResponse) {
    addProductsToPagination(productPageResponse.items);
    createPaginationButtonsTop(productPageResponse.totalPageNumber);
    createPaginationButtonsBottom(productPageResponse.totalPageNumber);
        
    }

const limitShownNumberOfPages = 10;

let start;
let end;

function createPaginationButtonsTop(totalPageNumber) {
        const addProducts = document.getElementById('paginationTop');

        addProducts.innerHTML = '';
   
        start = start ? start: 1;
        end = end ? end : limitShownNumberOfPages;
        end = end > totalPageNumber ? totalPageNumber : end;
        if(start > limitShownNumberOfPages) {
        const leftArrowLink = document.createElement('a');
        leftArrowLink.textContent = '<<';
        addProducts.appendChild(leftArrowLink);
        leftArrowLink.addEventListener('click', () => {
        start = start - limitShownNumberOfPages;
        end = start  + limitShownNumberOfPages -1 ;
        end = totalPageNumber < end ? totalPageNumber : end;
        createPaginationButtonsTop(totalPageNumber);
            });

        addProducts.appendChild(leftArrowLink);
          
        }
        for(let i = start; i <= end; i++) {
        const pageLink = document.createElement('a');
        pageLink.href ='#';
        pageLink.textContent = i;
        pageLink.addEventListener('click', () =>
        getData(i, getPageSizeValueBottom.value)
        );

    addProducts.appendChild(pageLink);
    }
    
        if(end < totalPageNumber) {
        const rightArrowLink = document.createElement('a');
        rightArrowLink.textContent = '>>';
        rightArrowLink.addEventListener('click', () => {
        start = start + limitShownNumberOfPages;
        end = end + limitShownNumberOfPages;
        end = totalPageNumber < end ? totalPageNumber : end;
        createPaginationButtonsTop(totalPageNumber);
        });
        addProducts.appendChild(rightArrowLink);
    }
}


    function createPaginationButtonsBottom(totalPageNumber) {
    const addProducts = document.getElementById('paginationBottom');
    
        addProducts.innerHTML = '';
   
        start = start ? start: 1;
        end = end ? end : limitShownNumberOfPages;
        end = end > totalPageNumber ? totalPageNumber : end;
        if(start > limitShownNumberOfPages) {
        const leftArrowLink = document.createElement('a');
        leftArrowLink.textContent = '<<';
        addProducts.appendChild(leftArrowLink);
        leftArrowLink.addEventListener('click', () => {
        start = start - limitShownNumberOfPages;
        end = start  + limitShownNumberOfPages -1 ;
        end = totalPageNumber < end ? totalPageNumber : end;
        createPaginationButtonsTop(totalPageNumber);
                
            });
            addProducts.appendChild(leftArrowLink);
          
        }
        for(let i = start; i <= end; i++) {
        const pageLink = document.createElement('a');
        pageLink.href ='#';
        pageLink.textContent = i;
        pageLink.addEventListener('click', () =>
        getData(i, getPageSizeValueBottom.value)
        );
        addProducts.appendChild(pageLink);
    }
    
        if(end < totalPageNumber) {
            const rightArrowLink = document.createElement('a');
            rightArrowLink.textContent = '>>';
            rightArrowLink.addEventListener('click', () => {
            start = start + limitShownNumberOfPages;
            end = end + limitShownNumberOfPages;
            end = totalPageNumber < end ? totalPageNumber : end;
            createPaginationButtonsTop(totalPageNumber);
        });
            addProducts.appendChild(rightArrowLink);
    }
}


function addRecommendedProductsToDocumentBody() {
    const documentBody = document.getElementById('recommended-products-section');

    documentBody.innerHTML = '';

    fetch(`http://localhost:8080/proizvodi/`)
    .then((response) => response.json())
    .then((data) => {
    data.forEach(product => {
    const rows = document.createElement('div');
  
   
  rows.classList.add('row');
  rows.classList.add('column-3');

  rows.innerHTML = `
    
  <img>${product.img}</img>
  <h4>${product.name}</h4>
  <p>${product.price} KM</p>
  <a class="view-details btn btn-dark" href="details.html?/products/pdetails/${product.id}">View Details</a>
  `

  documentBody.appendChild(rows);

});
    });
}
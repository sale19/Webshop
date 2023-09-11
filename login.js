const url = 'http://localhost:8080';
const loginHtmlForm = document.getElementById('loginForm');
loginHtmlForm.addEventListener('submit', callbackOnLogin)
function callbackOnLogin(event) {
    event.preventDefault();
    const usernameInput = document.getElementById('usernameInput').value;
    const passwordInput = document.getElementById('passwordInput').value;
    const loginServiceAddress = `${url}/login`;
    const urlRequest = {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({usernameInput, passwordInput})

    };

    

    fetch(loginServiceAddress, urlRequest)
    
    .then(response => {
        if(response.ok) {
            localStorage.setItem('user', JSON.stringify(usernameInput));
            window.location.href = 'dashboard.html';
           
        }else{
        alert('You are not logged-in!');
        window.location.href = 'index.html';
        }
        }).catch(error => {
            alert(`${error}`);
        });
    }
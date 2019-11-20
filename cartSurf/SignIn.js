const signUpButton = document.getElementById('signUpBtn');
const signInButton = document.getElementById('signInBtn');
const container = document.getElementById('signInUp');

signUpButton.addEventListener('click', () => {
    container.classList.add('right-panel-active');
});

signInButton.addEventListener('click', () => {
    container.classList.remove('right-panel-active');
});
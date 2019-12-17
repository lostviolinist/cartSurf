function toggleDeliv() {
    // get the courier section and the next button
    var courierSection = document.getElementById('delivCourier');
    var nextBtn = document.getElementById('btnNext');

    // Courier is hidden. show it
    courierSection.style.display = 'block';

    // Disable the button after confirming the add
    nextBtn.style.display = 'none';
}
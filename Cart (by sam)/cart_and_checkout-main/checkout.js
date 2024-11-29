let listCart = [];
function checkCart(){
        var cookieValue = document.cookie
        .split('; ')
        .find(row => row.startsWith('listCart='));
        if(cookieValue){
            listCart = JSON.parse(cookieValue.split('=')[1]);
        }
}
checkCart();
addCartToHTML();
function addCartToHTML(){
    // clear data default
    let listCartHTML = document.querySelector('.returnCart .list');
    listCartHTML.innerHTML = '';

    let totalQuantityHTML = document.querySelector('.totalQuantity');
    let totalPriceHTML = document.querySelector('.totalPrice');
    let totalQuantity = 0;
    let totalPrice = 0;
    // if has product in Cart
    if(listCart){
        listCart.forEach(product => {
            if(product){
                let newCart = document.createElement('div');
                newCart.classList.add('item');
                newCart.innerHTML = 
                    `<img src="${product.image}">
                    <div class="info">
                        <div class="name">${product.name}</div>
                        <div class="price">$${product.price}/1 product</div>
                    </div>
                    <div class="quantity">${product.quantity}</div>
                    <div class="returnPrice">$${product.price * product.quantity}</div>`;
                listCartHTML.appendChild(newCart);
                totalQuantity = totalQuantity + product.quantity;
                totalPrice = totalPrice + (product.price * product.quantity);
            }
        })
    }
    totalQuantityHTML.innerText = totalQuantity;
    totalPriceHTML.innerText = '$' + totalPrice;


    document.getElementById('country').addEventListener('change', function() {
        const country = this.value;
        const cities = document.querySelectorAll('#city option');
    
        // Show only cities of the selected country and hide others
        cities.forEach(function(city) {
          if (country === '' || city.classList.contains(country)) {
            city.style.display = 'block';
          } else {
            city.style.display = 'none';
          }
        });
      });

    









    // Modal and video elements
const modal = document.querySelector('.modal');
const checkoutVideo = document.getElementById('checkoutVideo');
// const closeModalBtn = document.querySelector('.close-modal');
const checkoutButton = document.querySelector('.buttonCheckout');

// Open the modal and play the video
checkoutButton.addEventListener('click', () => {
  modal.style.display = 'flex';
  checkoutVideo.play();
});

checkoutVideo.addEventListener('ended', () => {
    modal.style.display = 'none';
    checkoutVideo.pause();
    checkoutVideo.currentTime = 0; // Reset video
});




}
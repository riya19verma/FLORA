<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Flora ~ Plants Marketplace</title>
  <link rel="icon" type="image/png" href="LOGO.png" sizes="16x16" />
  <link rel="stylesheet" href="searchStyle.css">
  <!-- <link rel="stylesheet" href="Cart (by sam)\cart_and_checkout-main\cart_style.css"> -->
  <style>
    .catalogue .card button{
    position: absolute;
    top: 50%;
    left: 50%;
    background-color: #e6572c;
    color: #fff;
    width: 50%;
    border: none;
    padding: 20px 30px;
    box-shadow: 0 10px 50px #000;
    cursor: pointer;
    transform: translateX(-50%) translateY(100px);
    opacity: 0;
}
.catalogue .card:hover button{
    transition:  0.5s;
    opacity: 1;
    transform: translateX(-50%) translateY(0);

}
  </style>
</head>

<body>
    <div id="preloader"></div>

<table>
  <tr>
    <td width = "60px"><img src = "LOGO.png" width = "50px"></td>
    <td width = "80px" id = "nav"><a href = "index.html">HOME</a></td>
    <td width = "90px" id = "nav"><a href = "#about">ABOUT US</a></td>
    <td width = "90px" id = "nav"><a href = "plants.php">PLANTS</a></td>
    <td width = "80px" id = "nav"><a href = "Seed.html">SEEDS</a></td>
    <td width = "110px" id = "nav"><a href = "accessories.html">ACCESSORIES</a></td>
    <td width = "110px" id = "nav"><a href = "PlantCare.html">PLANT CARE</a></td>
    <td width = "110px" id = "nav"><button ONCLICK = "togglePopUp()"><B>SEARCH FOR PLANT</B></button></td>
    <td width = "60px" id = "nav"><div class="iconCart"><img src = "Cart (by sam)\cart_and_checkout-main\icon.png" height = "20px">
    <div class="totalQuantity">0</div></div></td>
  </tr>
  </table>

  <!-- Popup box starts -->
  <div class="popup" id = "popup1">
  <div class = "overlay">
    <div class = "content">
      <div class="close" onclick="togglePopUp()">&times;</div>
      <h2><u><center>Search a plant</center></u></h2>
        <form action = "search.php" method = "POST">
          <input type = "text" name = "search" placeholder = "Name the Plant">

          <h3>Filters</h3>
          
            Select Place :
            <select name = "place" id = "place" onchange="updatePlace()" required>
              <option value = "" disabled selected>Select Place</option>
              <option value = "NCR">New Delhi(NCR)</option>
              <option value = "MH">Maharashtra</option>
              <option value = "TN">Tamil Nadu</option>
              <option value = "WB">West Bengal</option>
              <option value = "GJ">Gujarat</option>
              <option value = "MP">Madhya Pradesh</option>
              <option value = "UP">Uttar Pradesh</option>
            </select>
          <div id = "dropdown-container">
          </div>
              <br>

              Enter the price range : <br>
              Between
              <input type = "number" name = "min" placeholder = "Minimum Price">
              and
              <input type = "number" name = "max" placeholder = "Maximum Price">

              <br><BR>

              Flowering : 
              <input type = "radio" name = "flowering" value = "Y">Yes
              <input type = "radio" name = "flowering" value = "N">No

              <br><BR>

              Indoor :
              <input type = "radio" name = "indoor" value = "Y">Yes
              <input type = "radio" name = "indoor" value = "N">No
              
              <br><BR>

              Season : 
              <select name = "season" id = "season">
                <option value = " ">Select Season</option>
                <option value = "Summer">Summer</option>
                <option value = "Winter">Winter</option>
                <option value = "Monsoon">Monsoon</option>
                <option value = "Spring">Spring</option>
                <option value = "Fall">Fall</option>
              </select>

              <br><BR>

              Type of plant :
              <select name = "plantType" id = "plantType">
                <option value = " ">Select Type</option>
                <option value = "HB">Herb</option>
                <option value = "SH">Shrub</option>
                <option value = "TR">Tree</option>
                <option value = "CL">Climber</option>
                <option value = "CR">Creeper</option>
              </select>

              <br><BR>

              Gifting Purpose :
              <select name = "gift" id = "gift">
                <option value = " ">Select Purpose</option>
                <option value = "BD">Birthday</option>
                <option value = "AN">Anniversary</option>
                <option value = "FS">Festivals</option>
                <option value = "WP">Workplace</option>
                <option value = "HW">Housewarming</option>
              </select>

              <br><BR>
          <input type = "submit" value = "Search">
        </form>
    </div>
  </div>
  </div>
<!-- Popup box ends -->
<BR>
  <img SRC = "flora.png" width="100%">
  <div class = "page_divider">
    <img src = "page divider.png">
    <img src = "page divider.png">
    <img src = "page divider.png">
    <img src = "page divider.png">
  </div>
<div class = "catalogue">
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "flora";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
    echo "Connection failed";
    die("Connection failed: " . mysqli_connect_error());
}
$sql ="SELECT Image,color_name,plantName,price FROM (masterplantstable NATURAL JOIN s1) Natural Join plantsimages NATURAL JOIN plant_colors where plantsimages.Color_code = s1.Color";
$result = mysqli_query($conn, $sql);

// Check if there are results
if (mysqli_num_rows($result) > 0) {
    // Output data of each row
    while ($row = mysqli_fetch_assoc($result)) {
        $imagePath = "MarketPlace Images\\".$row['Image']; // Assuming the image is stored in 'Image' field and located in the 'MarketPlace Images' directory
        $plantName = $row['color_name']." ".$row['plantName'];  // Get plant name from the 'plantName' field
        $price = $row['price'];  // Get price from the 'price' field

        echo "<div class='card'>
        <img src='$imagePath' alt='$plantName' height='150px'>
        <p><b>$plantName</b></p>  <!-- Plant name -->
        <p class='price'>Rs. $price</p>  <!-- Price -->
        
                <button>Add To Cart</button>
      </div>";
    }
} else {
    echo "No plants found in the database.";
}

// Close the connection
mysqli_close($conn);

?>
</div>

<H2 id = "about"><center>ABOUT US</center></H2><br>
<div class = "about_us">
  <div>
    <b>Contributors</b>
    <ul>
      <li>Samarth Ralph</li>
      <li>Vihan Tandon</li>
      <li>Riya Verma</li>
    </ul>
  </div>
  <div>
    <b>Products</b>
    <ul>
      <li><a href = "plants.php">Plants</a></li>
      <li><a href = "accessories.html">Accessories</a></li>
      <li><a href = "Seed.html">Seeds</a></li>
      <li><a href = "PlantCare.html">Plant Care Products</a></li>
    </ul>
  </div>
  <div>
    <b>Get in Touch</b><br>
    Call : +91 XXXXXXXXX<br>
    Email : <ul>
      <li><a href = "mailto:23803003@mail.jiit.ac.in">23803022@mail.jiit.ac.in</a></li>
      <li><a href = "mailto:23803015@mail.jiit.ac.in">23803022@mail.jiit.ac.in</a></li>
      <li><a href = "mailto:23803022@mail.jiit.ac.in">23803022@mail.jiit.ac.in</a></li>
    </ul>
  </div>
  <div>
    <b>Follow Us</b><br><br>
    <div class = "socials-container">
      <a href = " " alt = "Instagram"><img src = "insta.jpeg" width = "30px"></a>
      <a href = " " alt = "Youtube"><img src = "yt.jpg" width = "30px"></a>
      <a href = " " alt = "Twitter"><img src = "x.png" width = "30px"></a>
    </div>
  </div>
</div>


    <div class="cart">
        <h2>
            CART
        </h2>

        <div class="listCart">


            
                <div class="quantity">
                    <button>-</button>
                    <span class="value">3</span>
                    <button>+</button>
                </div>
            </div>


        </div>

        <div class="buttons">
            <div class="close">
                CLOSE
            </div>
            <div class="checkout">
                <a href="Cart (by sam)\cart_and_checkout-main\checkout.html">CHECKOUT</a>
            </div>
        </div>
    </div>





<!-- <script src="Cart (by sam)\cart_and_checkout-main\app.js"></script> -->
<script>

let iconCart = document.querySelector('.iconCart');
let cart = document.querySelector('.cart');
let container = document.querySelector('.container');
let close = document.querySelector('.close');

iconCart.addEventListener('click', function(){
    if(cart.style.right == '-100%'){
        cart.style.right = '0';
        container.style.transform = 'translateX(-400px)';
    }else{
        cart.style.right = '-100%';
        container.style.transform = 'translateX(0)';
    }
})
close.addEventListener('click', function (){
    cart.style.right = '-100%';
    container.style.transform = 'translateX(0)';
})


let products = null;
// get data from file json
fetch('product.json')
    .then(response => response.json())
    .then(data => {
        products = data;
        addDataToHTML();
})

//show datas product in list 
function addDataToHTML(){
    // remove datas default from HTML
    let listProductHTML = document.querySelector('.listProduct');
    listProductHTML.innerHTML = '';

    // add new datas
    if(products != null) // if has data
    {
        products.forEach(product => {
            let newProduct = document.createElement('div');
            newProduct.classList.add('item');
            newProduct.innerHTML = 
            `<img src="${product.image}" alt="">
            <h2>${product.name}</h2>
            <div class="price">$${product.price}</div>
            <button onclick="addCart(${product.id})">Add To Cart</button>`;

            listProductHTML.appendChild(newProduct);

        });
    }
}
//use cookie so the cart doesn't get lost on refresh page


let listCart = [];
function checkCart(){
    var cookieValue = document.cookie
    .split('; ')
    .find(row => row.startsWith('listCart='));
    if(cookieValue){
        listCart = JSON.parse(cookieValue.split('=')[1]);
    }else{
        listCart = [];
    }
}
checkCart();
function addCart($idProduct){
    let productsCopy = JSON.parse(JSON.stringify(products));
    //// If this product is not in the cart
    if(!listCart[$idProduct]) 
    {
        listCart[$idProduct] = productsCopy.filter(product => product.id == $idProduct)[0];
        listCart[$idProduct].quantity = 1;
    }else{
        //If this product is already in the cart.
        //I just increased the quantity
        listCart[$idProduct].quantity++;
    }
    document.cookie = "listCart=" + JSON.stringify(listCart) + "; expires=Thu, 31 Dec 2025 23:59:59 UTC; path=/;";

    addCartToHTML();
}
addCartToHTML();
function addCartToHTML(){
    // clear data default
    let listCartHTML = document.querySelector('.listCart');
    listCartHTML.innerHTML = '';

    let totalHTML = document.querySelector('.totalQuantity');
    let totalQuantity = 0;
    // if has product in Cart
    if(listCart){
        listCart.forEach(product => {
            if(product){
                let newCart = document.createElement('div');
                newCart.classList.add('item');
                newCart.innerHTML = 
                    `<img src="${product.image}">
                    <div class="content">
                        <div class="name">${product.name}</div>
                        <div class="price">$${product.price} / 1 product</div>
                    </div>
                    <div class="quantity">
                        <button onclick="changeQuantity(${product.id}, '-')">-</button>
                        <span class="value">${product.quantity}</span>
                        <button onclick="changeQuantity(${product.id}, '+')">+</button>
                    </div>`;
                listCartHTML.appendChild(newCart);
                totalQuantity = totalQuantity + product.quantity;
            }
        })
    }
    totalHTML.innerText = totalQuantity;
}
function changeQuantity($idProduct, $type){
    switch ($type) {
        case '+':
            listCart[$idProduct].quantity++;
            break;
        case '-':
            listCart[$idProduct].quantity--;

            // if quantity <= 0 then remove product in cart
            if(listCart[$idProduct].quantity <= 0){
                delete listCart[$idProduct];
            }
            break;
    
        default:
            break;
    }
    // save new data in cookie
    document.cookie = "listCart=" + JSON.stringify(listCart) + "; expires=Thu, 31 Dec 2025 23:59:59 UTC; path=/;";
    // reload html view cart
    addCartToHTML();
}

  // JavaScript to hide the preloader after page load
  window.addEventListener('load', function () {
      document.getElementById('preloader').style.display = 'none';
  });
  var loader =document.querySelector("#preloader");
    window.addEventListener("load",function(){
      loader.style.display = "none";
    })

    function togglePopUp(){
      document.getElementById("popup1").classList.toggle("active");
    }
    
    function updatePlace()
    {
      const pl = document.getElementById("place").value; // Get the selected place value
  const dropdownContainer = document.getElementById("dropdown-container"); // Container for the dynamic dropdown
  dropdownContainer.innerHTML = ""; // Clear existing dropdown if any

  const dropdown = document.createElement("select");
  dropdown.id = "dynamicDropdown";
  dropdown.name = "dynamicDropdown";

  const label = document.createElement("label");
  label.innerHTML = `<br>Select the city : `;

  let options = [];
  switch (pl) {
    case "NCR":
      options = ["Noida", "Gurugram", "Dwarka"];
      break;
    case "MH":
      options = ["Mumbai", "Pune", "Nashik", "Thane"];
      break;
    case "TN":
      options = ["Chennai", "Coimbatore", "Vellore", "Madurai"];
      break;
    case "WB":
      options = ["Kolkata", "Darjeeling", "Howrah", "Siliguri"];
      break;
    case "GJ":
      options = ["Ahmedabad", "Vadodara", "Surat", "Bhavnagar"];
      break;
    case "MP":
      options = ["Bhopal", "Ujjain", "Rewa", "Ratlam"];
      break;
    case "UP":
      options = ["Lucknow", "Varanasi", "Kanpur", "Prayagraj"];
      break;
    default:
      options = []; // No options if place not selected
  }

  options.forEach(optionText => {
    const option = document.createElement("option");
    option.value = optionText.replace(" ", "_");
    option.textContent = optionText;
    dropdown.appendChild(option);
  });

  dropdownContainer.appendChild(label);
  dropdownContainer.appendChild(dropdown); // Add the new dropdown to the container

    }
  

    

   
</script>

</body>
</html>
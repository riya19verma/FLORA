<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Flora ~ Plants Marketplace</title>
  <link rel="icon" type="image/png" href="LOGO.png" sizes="16x16" />
  <link rel="stylesheet" href="searchStyle.css">
</head>
<body>
<div id="preloader"></div>

<table>
  <tr>
    <td width = "60px"><img src = "LOGO.png" width = "50px"></td>
    <td width = "80px" id = "nav"><a href = "index.html">HOME</a></td>
    <td width = "90px" id = "nav"><a href = "#about">ABOUT US</a></td>
    <td width = "90px" id = "nav"><a href = "plants.php">PLANTS</a></td>
    <td width = "80px" id = "nav"><a href = "Seeds.html">SEEDS</a></td>
    <td width = "110px" id = "nav"><a href = "accessories.html">ACCESSORIES</a></td>
    <td width = "110px" id = "nav"><a href = "PlantCare.html">PLANT CARE</a></td>
    <td width = "110px" id = "nav"><button ONCLICK = "togglePopUp()"><B>SEARCH FOR PLANT</B></button></td>
    <td width = "60px" id = "nav"><a href = "login.html">LogIn</a></td>
    <td width = "60px" id = "nav"><a href = "profile.html"><img src = "profile.png" height = "20px"></a></td>
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

$state = $_POST["place"];
$city = $_POST["dynamicDropdown"];
$query = "Select supplier_Code from citymaster natural join supplier where city = '$city';";
$res = mysqli_fetch_assoc(mysqli_query($conn,$query));
$table = $res['supplier_Code'];
$sql ="SELECT Image,color_name,plantName,price FROM (masterplantstable NATURAL JOIN $table) Natural Join plantsimages NATURAL JOIN plant_colors where plantsimages.Color_code = $table.Color";

$name = $_POST["search"];

$name = (!empty($_POST["search"])) ? $_POST["search"] : null;
if($name !== NULL)
{
  $sql = $sql." AND plantName LIKE '%$name%'";
}

$gift = $_POST['gift'];
if($gift !== ' ')
{  
  $sql = "SELECT Image,color_name,plantName,price,GF_ID FROM ((masterplantstable NATURAL JOIN $table) Natural Join plantsimages NATURAL JOIN plant_colors)NATURAL JOIN (events NATURAL JOIN gifting_purpose) where plantsimages.Color_code = $table.Color";
  if($gift == "BD")
  {
    $sql = $sql." AND GF_ID = 'BD'";
  }
  else if($gift == "AN")
  {
    $sql = $sql." AND GF_ID = 'AN'";
  }
  else if($gift == "FS")
  {
    $sql = $sql." AND GF_ID = 'FS'";
  }
  else if($gift == "WP")
  {
    $sql = $sql." AND GF_ID = 'WP'";
  }
  else if($gift == "HW")
  {
    $sql = $sql." AND GF_ID = 'HW'"; 
  }
}

$max_price = (!empty($_POST["max"]) && is_numeric($_POST["max"])) ? $_POST["max"] : null;
$min_price = (!empty($_POST["min"]) && is_numeric($_POST["min"])) ? $_POST["min"] : null;
if($max_price !== null && $min_price !==null)
{$sql = $sql." AND price BETWEEN $min_price AND $max_price";}
else if($max_price !== null && $min_price == null)
{$sql = $sql." AND price <= $max_price";}
else if($min_price !== null && $max_price == null)
{$sql = $sql." AND price >= $min_price";}

$flowering = (!empty($_POST["flowering"])) ? $_POST["flowering"] : null;
  if($flowering === "Y")
  {
    $sql = $sql." AND Flowering = 'Y'";
  }
  else if($flowering === "N")
  {
    $sql = $sql." AND Flowering = 'N'";
  }

  $indoor = (!empty($_POST["indoor"])) ? $_POST["indoor"] : null;
  if($indoor === "Y")
  {
    $sql = $sql." AND Indoor = 'Y'";
  }
  else if($indoor === "N")
  {
    $sql = $sql." AND Indoor = 'N'";
  }

  $season = (!empty($_POST["season"])) ? $_POST["season"] : null;
  if($season === "Summer")
  {
    $sql = $sql." AND Summer = 'Y'";
  }
  else if($season === "Winter")
  {
    $sql = $sql." AND Winter = 'Y'";
  }
  else if($season === "Monsoon")
  {
    $sql = $sql." AND Monsoon = 'Y'";
  }
  else if($season === "Spring")
  {
    $sql = $sql." AND Spring = 'Y'";
  }
  else if($season === "Fall")
  {
    $sql = $sql." AND Fall = 'Y'";
  }

  $type = (!empty($_POST["plantType"])) ? $_POST["plantType"] : null;
  if($type === "HB")
  {
    $sql = $sql." AND plantType = 'HB'";
  }
  else if($type === "SH")
  {
    $sql = $sql." AND plantType = 'SH'";
  }
  else if($type === "TR")
  {
    $sql = $sql." AND plantType = 'TR'";
  }
  else if($type === "CL")
  {
    $sql = $sql." AND plantType = 'CL'";
  }
  else if($type === "CR")
  {
    $sql = $sql." AND plantType = 'CR'";
  }

// Query to select data from plants table
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
      <li><a href = "plants.html">Plants</a></li>
      <li><a href = "accessories.html">Accessories</a></li>
      <li><a href = "Seeds.html">Seeds</a></li>
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



<script>
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

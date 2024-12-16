<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "flora";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Check if form data is set
if (isset($_POST['l_email']) && isset($_POST['l_pass'])) {
    $l_email = trim($_POST['l_email']);
    $l_pass = trim($_POST['l_pass']);

    // Validate email format
    if (!filter_var($l_email, FILTER_VALIDATE_EMAIL)) {
        die("Invalid email format.");
    }

    // Sanitize inputs to prevent SQL injection
    $l_email = mysqli_real_escape_string($conn, $l_email);
    $l_pass = mysqli_real_escape_string($conn, $l_pass);

    // Query the database
    $query = "SELECT * FROM user_det WHERE emailID = '$l_email' AND password = '$l_pass'";
    $result = mysqli_query($conn, $query);

    if (mysqli_num_rows($result) > 0) {
        header("Location: ../index.html"); // Redirect to homepage on successful login
        exit();
    } else {
        echo "Login failed. Invalid email or password.";
    }
} else {
    echo "Email and password are required.";
}

mysqli_close($conn);
?>
<script>
    function validateForm() {
        const email = document.getElementById("l_email").value.trim();
        const password = document.getElementById("l_pass").value.trim();

        // Check if email or password is empty
        if (email === "" || password === "") {
            alert("Email and Password fields cannot be empty.");
            return false;
        }

        // Check for presence of '@' and '.'
        if (email.indexOf("@") === -1 || email.indexOf(".") === -1 || email.startsWith("@") || email.endsWith(".")) {
            alert("Please enter a valid email address.");
            return false;
        }

        return true; // Submit form if validation passes
    }
</script>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="register.php" method="post">
    username: <input type="text" name="username" id="username">
    <br><br>
    password : <input type="password" name="password" id="password">
    <br><br>
    Already have an account? <a href="login.php">Login</a>
    </form>
</body>
</html>
<?php
echo date("Y-m-d g");
?>
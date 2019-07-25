<HTML>
<head>
   <title>Demo</title>
</head>
<body>
<h1>Demo for team <i>irc353</i></h1>
<p>The current date and time is
<em><?echo date("D M d, Y H:i:s", time())?></em>
<p>Current PHP version:
<em><?echo  phpversion()?></em>
<?php
$servername = "irc353.encs.concordia.ca";
$username = "irc353_1";
$password = "databas3";

// Create connection
$conn = mysqli_connect($servername, $username, $password);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";
?></body>
</html>


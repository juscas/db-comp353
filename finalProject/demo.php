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
<br>
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
?>
<form action="query.php" method="GET">
    <textarea name="userQuery" cols="100" rows="5">Enter your SQL query here...</textarea><br>
    <input type="submit" value="Run Query on LIVE DB"/>
</form>
<!-- For now the results appear on another page which we redirect to -->
<!-- But ideally we'd like to stay on the same page and append the results in the p tag below -->
<p id="queryResult"></p>
</body>
</html>


<?php
$sql = $_GET['userQuery'];

$servername = 'irc353.encs.concordia.ca';
$username = 'irc353_1';
$password = 'databas3';

// Create connection
$conn = mysqli_connect($servername, $username, $password);

// Check connection
if (!$conn) {
    die('Connection failed: ' . mysqli_connect_error());
}

echo "Connected successfully<br>";

echo "Executing: $sql<br>";
echo '----------' . str_repeat('--', strlen($sql)) . '<br>';

// first use the correct DB
$useDB = mysqli_query($conn, "use irc353_1");

// then execute the users query
$result = mysqli_query($conn, $sql);

if (!$result) {
    $message = 'Invalid query: ' . mysqli_error($conn) . '<br>';
    die($message);
} else {
    echo "Result:<br>";

    // Process all rows
    $i = 0;
    while($row = mysqli_fetch_array($result)) {
        $i++;
        //echo "row: $row<br>";
        echo "| ";
        foreach ($row as $key => $value) {
            if (!is_numeric($key)) {
                echo "$key: $value | ";
            }
        }
        echo '<br>';
    }
    echo '--------------------<br>';
    echo "Total rows: $i";
}
?>

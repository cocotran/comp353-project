<html>
<head>

<link type="text/css" rel="stylesheet" href="../stylesheet.css" /> 
<title> Display Person Page</title>
</head>
<body>
<!-- NAVIGATION BAR BEGINS -->
<div class="navbar">
    <ul class="flex navbar-ul">
        <div><a href="/">COVID-19 Public Health Care Vaccination System</a></div>
        <li><a href="../person.php">Person</a></li>
        <li><a href="health_worker.php">Public Health Worker</a></li>
        <li><a href="health_facility.php">Public Health Facility</a></li>
        <li><a href="variant.php">Covid-19 infection Variant type</a></li>
    </ul>
</div>
<!--- NAVIGATION BAR ENDS --->

<br> <br> <br>

<?php
$servername = "";
$username = "";
$password = "";
$dbname = "";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM Person WHERE personID=".$_POST["personID"];

if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();

?>

</body>
</html>
<html>
<head>

<link type="text/css" rel="stylesheet" href="../stylesheet.css" /> 
<title> Edit Person Page</title>
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
// $servername = "";
// $username = "";
// $password = "";
// $dbname = "";

// // Create connection
// $conn = new mysqli($servername, $username, $password, $dbname);
// // Check connection
// if ($conn->connect_error) {
//   die("Connection failed: " . $conn->connect_error);
// }

$firstName = "firstName = ".$_POST["firstname"];
$lastname = "lastname = ".$_POST["lastname"];
$address = "address = ".$_POST["address"];
$city = "city = ".$_POST["city"];
$province = "province = ".$_POST["province"];
$postalCode = "postalCode = ".$_POST["postalCode"];
$citizenship = "citizenship = ".$_POST["citizenship"];
$dob = "dob = ".$_POST["dob"];
$phoneNumber = "phoneNumber = ".$_POST["phoneNumber"];
$medicareNum = "medicareNum = ".$_POST["medicareNum"];
$email = "email = ".$_POST["email"];
$ageGroup = "ageGroup = ".$_POST["ageGroup"];

$value = $firstName.",".$lastname.",".$address.",".$city.",".$province.",".$postalCode.",".$citizenship.",".$dob.",".$phoneNumber.",".$medicareNum.",".$email.",".$ageGroup." ";

$sql = "UPDATE Person ".
$value.
"WHERE PersonID = ".$_POST["personID"];
echo $sql;
// if ($conn->query($sql) === TRUE) {
//   echo "New record created successfully";
// } else {
//   echo "Error: " . $sql . "<br>" . $conn->error;
// }

// $conn->close();

?>

</body>
</html>
<html>
<head>

    <link type="text/css" rel="stylesheet" href="../stylesheet.css" /> 
    <title> Add Person Page</title>
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
    
    <!--- MAIN CONTENT BOX BEGINS --->
    
    <div>
    
        <h1>Add Person</h1>
        
        <form action="insertAction.php" method="post">

            First Name: <input type="text" name="firstname"><br>
            <br>
            Last Name: <input type="text" name="lastname"><br>
            <br>
            Address: <input type="text" name="address"><br>
            <br>
            City: <input type="text" name="city"><br>
            <br>
            Province: <input type="text" name="province"><br>
            <br>
            Postal Code: <input type="text" name="postalCode"><br>
            <br>
            Citizenship: <input type="text" name="citizenship"><br>
            <br>
            DOB: <input type="text" name="dob"><br>
            <br>
            Phone Number: <input type="text" name="phoneNumber"><br>
            <br>
            Medicate Number: <input type="text" name="medicareNum"><br>
            <br>
            E-mail: <input type="text" name="email"><br>
            <br>
            Age Group: <input type="text" name="ageGroup"><br>
            <br>
            <input type="submit">

        </form>


    </div>
  
    
    <!--- MAIN CONTENT BOX ENDS ---> 
    
    
    
    
</body>
</html>
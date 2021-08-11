<html>
<head>

    <link type="text/css" rel="stylesheet" href="../stylesheet.css" /> 
    <title> Delete Person Page</title>
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
    
        <h1>Delete Person</h1>
        
        <form action="deleteAction.php" method="post">

            Person ID: <input type="number" name="personID"><br>
            <br>
            <input type="submit">

        </form>


    </div>
  
    
    <!--- MAIN CONTENT BOX ENDS ---> 
    
    
    
    
</body>
</html>

<?php


  
// Database configuration
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "registration_db";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
  if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
    }


	 
    $first_name = $_POST["fname"];
   
    $password = $_POST["password"];
  

  

   $sql = "SELECT * FROM cust WHERE password='$password';";
        $result = $conn->query($sql);

        if($result->num_rows > 0) {
            // output data of each row
            $row = $result->fetch_assoc();

            $fName = $row['firstName'];
            
            $readPass = $row['password'];
			
		 echo "data found";
		}
           else{
          echo "data found";
        }

        $conn->close();

?>
<html>

        <form id="a" action="index" method="post">
            <label for="first_name">click ok</label>
			 <input type="submit" value="ok" >

</html>




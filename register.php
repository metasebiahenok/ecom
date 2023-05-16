
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


	 
    $first_name = $_POST["first_name"];
    $last_name = $_POST["last_name"];
    $email = $_POST["email"];
	$subcity = $_POST["subcity"];
	$wereda = $_POST["wereda"];
	$hn = $_POST["hn"];
    $payment_method = $_POST["payment_method"];
    $password = $_POST["password"];
    $confirm_password = $_POST["confirm_password"];

    // Validate input
   if ($password !== $confirm_password) {
        echo "Passwords do not match.";
        exit;
    }
    // Hash the password
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

   $sql = "INSERT INTO cust (first_name, last_name, email, subcity, woreda, hn, payment_method, password) VALUES ('$first_name', '$last_name', '$email', '$subcity', '$wereda', '$hn', '$payment_method', '$hashed_password')";
  
if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
  
  

} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}


$conn->close(); 

?>
<html>

        <form id="a" action="index" method="post">
            <label for="first_name">click ok</label>
			 <input type="submit" value="ok" >

</html>




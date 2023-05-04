<html>
<body>

<?php
    $servername = 'localhost';
    $username = 'root';
    $password = '';
    $dbname = 'school';

    $link = mysqli_connect($servername,$username,$password,$dbname);
    if ($link->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    else {
        echo "Successful <br>";
    }

    $d_name = $_POST['d_name'];
    $phone = $_POST['phone'];
    $location = $_POST['location'];

    $sql = "INSERT INTO department (d_name, telephone, d_location)
    VALUES ('$d_name','$phone','$location')";

    mysqli_query($link,$sql);
    
    $result = $link->query("SELECT * FROM department");
    $num_row = $result->num_rows;

    for ($i=0; $i < $num_row; $i++) {
        $row = $result->fetch_assoc();
        echo "id: ", $row["d_id"], "<br>";
        echo "name: ", $row["d_name"], "<br>";
        echo "telephone: ", $row["telephone"], "<br>";
        echo "location: ", $row["d_location"], "<br>";
        echo "<br>";
    }
     
    mysqli_close($link);

?>
</body>
</html>


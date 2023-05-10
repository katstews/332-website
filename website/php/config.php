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
?>
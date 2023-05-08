<html>
<body>
<?php 
    //connection ---------------------------------------------------
    require 'config.php';
    //connection ---------------------------------------------------
    
    $c_id = $_POST['c_id'];
    $s_id = $_POST['s_id'];

    echo "<br>You chose course number: ", $c_id, "<br>";
    echo "You chose section number: " ,$s_id, "<br><br>";
    echo "Student grade averages per given section number <br>";
    echo "----------------------------------------------- <br>";

    $query = "SELECT grade, COUNT(grade)
    FROM enrollment_records 
    WHERE s_id = " . $s_id . " AND c_id = " . $c_id .
    " GROUP BY grade;";

    $result = $link->query($query);
    $num_row = $result->num_rows;
    
    for ($i = 0; $i < $num_row; $i++) {
        $row = $result->fetch_assoc();   
        echo $row["grade"], " ", $row["COUNT(grade)"], "<br>";
    }
?>
<br>
<button onclick="history.back()">Go Back</button>
</body>
</html>
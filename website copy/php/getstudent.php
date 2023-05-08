<html>
<body>

<?php 
    //connection ---------------------------------------------------
    require 'config.php';
    //connection ---------------------------------------------------

    $cwid = $_POST['cwid'];
    $query = 
    "SELECT c.title, er.grade, s.fname, s.lname
    FROM enrollment_records AS er, course AS c, student AS s
    WHERE er.cwid = " . $cwid . " AND er.c_id = c.c_id AND er.cwid = s.cwid;";

    $result = $link->query($query);
    $num_row = $result->num_rows;
    
    $prev_pname = "";
    
    for ($i = 0; $i < $num_row; $i++) {
        $row = $result->fetch_assoc(); 
        if ($row['fname'] !== $prev_pname) {
            // If not, print the professor name and update the previous professor name
            echo "Student name: ", $row['fname'], " ", $row['lname'], "<br><br>";
            $prev_pname = $row['fname'];
        }

        echo "Course name: ",$row["title"], "<br>";
        echo "Grade: ",$row["grade"], "<br>";
        echo "<br>";
    }

?>
<button onclick="history.back()">Go Back</button>
</body>
</html>
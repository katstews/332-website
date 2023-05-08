<html>
<body>
<?php 
    //connection ---------------------------------------------------
    require 'config.php';
    //connection ---------------------------------------------------
    
    $c_id = $_POST['c_id'];
    echo "You picked course number: ",$c_id, "<br>";

    $query = 
    "SELECT s.s_id, s.classroom, s.meeting_days, s.beg_time, s.end_time, COUNT(er.cwid), c.title
    FROM course AS c
    JOIN section AS s ON c.c_id = s.c_id
    LEFT JOIN enrollment_records AS er ON s.s_id = er.s_id
    WHERE c.c_id = " . $c_id .
    " GROUP BY s.s_id;";

    $result = $link->query($query);
    $num_row = $result->num_rows;
    
    $prev_pname = "";

    for ($i = 0; $i < $num_row; $i++) {
        $row = $result->fetch_assoc();

        // Check if the current professor name is the same as the previous one
        if ($row['title'] !== $prev_pname) {
            // If not, print the professor name and update the previous professor name
            echo "Course name: ", $row['title'], "<br>";
            $prev_pname = $row['title'];
        }

        echo "<br>section: ",$row["s_id"], "<br>"; 
        echo "classroom: ",$row["classroom"], "<br>";
        echo "meeting days: ",$row["meeting_days"], "<br>";
        echo "beginning time: ",$row["beg_time"], "<br>";
        echo "ending time: ",$row["end_time"], "<br>";
        echo "amount of students: ",$row["COUNT(er.cwid)"];
        echo "<br>";
    }
?>
<br>
<button onclick="history.back()">Go Back</button>
</body>
</html>
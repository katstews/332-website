<html>
<body>

<?php
    //connection ----------------------------------------
    require 'config.php';
    //connection ----------------------------------------
    
    $p_ssn = $_POST['p_ssn'];
    echo "<br>";

    $query = "SELECT s.classroom, s.meeting_days, s.beg_time, s.end_time, p.p_name, c.title, s.s_id
    FROM section AS s, professor AS p, course AS c
    WHERE p.p_ssn = " .  $p_ssn . " AND s.p_ssn = p.p_ssn AND s.c_id = c.c_id;";
    $result = $link->query($query);
    $num_row = $result->num_rows;

    $prev_pname = "";

    for ($i = 0; $i < $num_row; $i++) {
        $row = $result->fetch_assoc();

        // Check if the current professor name is the same as the previous one
        if ($row['p_name'] !== $prev_pname) {
            // If not, print the professor name and update the previous professor name
            echo "Professor Name: ", $row['p_name'], "<br> <br>";
            $prev_pname = $row['p_name'];
        }

        // Print the rest of the row data
        echo "Course title: ", $row['title'], "<br>";
        echo "Classroom: ", $row['classroom'], "<br>";
        echo "Section: ", $row['s_id'], "<br>";
        echo "Meeting days: ", $row['meeting_days'], "<br>";
        echo "Beginning time: ", $row['beg_time'], "<br>";
        echo "Ending time: ", $row['end_time'], "<br>";
        echo "<br>";
    }    

    mysqli_close($link);
?>
<button onclick="history.back()">Go Back</button>
</body>
</html>


<?php
$conn = mysqli_connect("localhost", "root", "admin","quiz");
$sql = "SELECT nombre from preguntas_primerEscalon
order by rand()
Limit 1";
$result = $conn-> query($sql);
if ($result -> num_rows >0) {

    while($row = $result -> fetch_assoc()) {
        echo "<h1>" . $row[0] "</h1>";
    }} 
else  {
    echo "0 records";
}

$conn ->close();
?>
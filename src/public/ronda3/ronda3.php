<?php

    $conn = mysqli_connect("localhost", "root", "admin", "quiz");
    $sql = "SELECT nombre from preguntas_tercerEscalon order by rand() limit 1";
    $result = $conn->query($sql);   

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- BOOSTRAP 5 CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Tercer Escalón</title>
</head>
<body style="background-color:black" onload="updateScore()">
 
    <!-- Mostrar la pregunta -->
<div>
    <div class="display-2 text-white h-100 d-flex align-items-center justify-content-center">
    <?php while ($row = $result->fetch_assoc()) {
    echo $row['nombre']."<br>";
    $pregunta = $row['nombre'];
} ?>

    <!-- Mostrar las 4 opciones -->
    </div> <br> <br>
    
    <div class= "display-4 text-white" align="center">
    <?php
   
    $sql = "SELECT respuesta from respuestas_tercerEscalon where pregunta = '$pregunta'  order by rand()" ;
    $result = $conn->query($sql);

    while ($row = $result->fetch_assoc()) {
        echo "<button id='" .$row['respuesta']. "' type='button' class='btn btn-dark btn-lg' onclick='verificar();'>" . $row['respuesta']."</button> <br> <br>";
    }?> 

     <!-- Botón retirarse -->

     <button type='button' onclick="guardarScore();" class='btn btn-danger btn-sm'>
   <a  style="text-decoration:none" class= "display-6 text-white" align="center" href="../../public">Retirarse o Quedarse con $100</a> 
</button> <br> <br>

 <!-- Your Score  -->
 <h2 id="score" class="display-7 text-white">

    </div>

<!-- Respuesta Correcta -->
<?php
    $sql = "SELECT respuesta from preguntas_tercerEscalon where nombre LIKE '$pregunta'";
    $result = $conn->query($sql);
    while ($row = $result->fetch_assoc()) {
        echo "<form action='' method='POST'>
        <button id='respuesta' name='".$row['respuesta']."' type='button' hidden value='button'". $row['respuesta']."' class='btn btn-warning btn-lg' onclick='verificar()'>" . $row['respuesta']."</button> <br> <br>
        </form>";
    }
 
?> 

</div>
<script src="./ronda3.js"></script>
<script src="../score.js"></script>
</body>
</html>
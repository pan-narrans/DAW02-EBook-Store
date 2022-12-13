<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>

<body>
  <?php
  require_once("conexion.php");
  $query = "Select * from imagenes";
  $cont = $conexion->query($query);
  ?>

  <?php while ($row = $cont->fetch_array()) :  ?>
    <p><?= $row['nombre'] ?></p>
    <img src="data:image/jpg;base64, <?= base64_encode($row['imgs']) ?>" />
    <!-- Como es un archivo y imagen (data:image),luego como quiere que nos lo muestre(jpg) y luego que lo convierta a base64 y lego le ponemos una estructura php convirtiéndolo a lo que seria la imagen. -->
  <?php endwhile;  ?>
</body>

</html>
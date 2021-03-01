<?php

include_once("conexao.php");

$result_usuarios = "SELECT * FROM jogo ORDER BY progresso";
$resultado_usuarios = mysqli_query($conn, $result_usuarios);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
    <link href="estilo.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css"> 
    <link rel="shortcut icon" href="imagem/controller.png" type="image/x-icon"/>
<title>LISTA DE JOGOS</title>
</head>
<body>
<div class="center1">
<button type="button" class="btn btn-light"><i class="bi bi-check-circle-fill" style="color: green; font-size: 20pt;"><h4>ZERADO</h4></i></button>
<button type="button" class="btn btn-light"><i class="bi bi-record-circle-fill" style="color: blue; font-size: 20pt;"><h4>MULTIPLAYER</h4></i></button>
<button type="button" class="btn btn-light"><i class="bi bi-dash-circle-fill" style="color: orange; font-size: 20pt;"><h4>JOGADO</h4></i></button>
<button type="button" class="btn btn-light"><i class="bi bi-x-circle-fill" style="color: grey; font-size: 20pt;"><h4>NÃO JOGUEI</h4></i></button>
</div>
    <div class="container">
        <div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3">
        <?php while($dado = mysqli_fetch_assoc($resultado_usuarios)){ ?>
          <div class="col">
            <div class="p-3 border bg-light" <?php if ($dado["progresso"] == "nao"){
      echo 'style="opacity: 0.7;"';}
      else if ($dado["progresso"] == "nunca"){
      echo 'style="opacity: 0.3;"';}
      else echo 'style="opacity: 1;"';
      ?>><img src="imagem/<?php echo $dado["imagem"]; ?>.jpg" class="img-fluid">
            <h3><?php echo $dado["nome"]; ?></h3>
            <h1 class="display-6"><?php echo $dado["corp"]; ?></h1>
            <div class="center">
            <?php if ($dado["progresso"] == "nao"){
    echo '<i class="bi bi-dash-circle-fill" style="color: orange; font-size: 28pt;"></i></div></div>';}
    else if($dado["progresso"] == "asim"){
    echo '<i class="bi bi-check-circle-fill" style="color: green; font-size: 28pt;"></i></div></div>';}
    else if($dado["progresso"] == "coop") { 
    echo '<i class="bi bi-record-circle-fill" style="color: blue; font-size: 28pt;"></i></div></div>';}
    else {
    echo '<i class="bi bi-x-circle-fill" style="color: grey; font-size: 28pt;"></i></div></div>';}
  ?>
          </div>
          <?php } ?>
        </div>
      </div>
</body>
</html>


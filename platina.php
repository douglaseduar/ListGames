<?php

include_once("config/conexao.php");

$result_usuarios = "SELECT * FROM jogo WHERE progresso = 'coopplatina' ||  progresso = 'asimplatina' || progresso = 'asimcoopplatina' ORDER BY progresso, nome asc";
$resultado_usuarios = mysqli_query($conn, $result_usuarios);

$QUERY = "SELECT progresso FROM jogo WHERE progresso = 'coopplatina' ||  progresso = 'asimplatina' || progresso = 'asimcoopplatina'";
$executa_query = mysqli_query($conn, $QUERY);
$conta_linhas = mysqli_num_rows($executa_query);

$QUERY1 = "SELECT progresso FROM jogo WHERE progresso = 'asim' ||  progresso = 'asimcoop' || progresso = 'asimcoopplatina'  || progresso = 'asimplatina'";
$executa_query1 = mysqli_query($conn, $QUERY1);
$conta_linhas1 = mysqli_num_rows($executa_query1);

$QUERY2 = "SELECT progresso FROM jogo WHERE progresso = 'coop' ||  progresso = 'asimcoop' || progresso = 'asimcoopplatina'  || progresso = 'coopplatina'  || progresso = 'dnaocoop'";
$executa_query2 = mysqli_query($conn, $QUERY2);
$conta_linhas2 = mysqli_num_rows($executa_query2);

$QUERY3 = "SELECT progresso FROM jogo WHERE progresso = 'nao' || progresso = 'dnaocoop'";
$executa_query3 = mysqli_query($conn, $QUERY3);
$conta_linhas3 = mysqli_num_rows($executa_query3);

$QUERY4 = "SELECT progresso FROM jogo WHERE progresso = 'nunca'";
$executa_query4 = mysqli_query($conn, $QUERY4);
$conta_linhas4 = mysqli_num_rows($executa_query4);

$QUERY5 = "SELECT progresso FROM jogo";
$executa_query5 = mysqli_query($conn, $QUERY5);
$conta_linhas5 = mysqli_num_rows($executa_query5);

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
<a href="jogos.php"><button type="button" class="btn btn-light"><i class="bi bi-joystick" style="color: red; font-size: 20pt;"><h4><?php echo $conta_linhas5;?> JOGOS</h4></i></button></a>
<a href="sim.php"><button type="button" class="btn btn-light"><i class="bi bi-check-circle-fill" style="color: green; font-size: 20pt;"><h4><?php echo $conta_linhas1;?> JOGADO</h4></i></button></a>
<a href="coop.php"><button type="button" class="btn btn-light"><i class="bi bi-record-circle-fill" style="color: blue; font-size: 20pt;"><h4><?php echo $conta_linhas2;?> MULTIPLAYER</h4></i></button></a>
<a href="nao.php"><button type="button" class="btn btn-light"><i class="bi bi-dash-circle-fill" style="color: orange; font-size: 20pt;"><h4><?php echo $conta_linhas3;?> INCOMPLETO</h4></i></button></a>
<a href="platina.php"><button type="button" class="btn btn-light"><i class="bi bi-trophy-fill" style="color: DeepSkyBlue; font-size: 20pt;"><h4><?php echo $conta_linhas;?> PLATINADO</h4></i></button></a>
<a href="nunca.php"><button type="button" class="btn btn-light"><i class="bi bi-x-circle-fill" style="color: grey; font-size: 20pt;"><h4><?php echo $conta_linhas4;?> NÃO JOGUEI</h4></i></button></a>
</div>
    <div class="container">
        <div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3">
        <?php while($dado = mysqli_fetch_assoc($resultado_usuarios)){ ?>
            <div class="col" id="<?php echo $dado["id"]; ?>">
            <div class="p-3 border bg-light" style="min-height: 308px;"<?php if ($dado["progresso"] == "nao"){
      echo 'style="opacity: 0.7;"';}
      else if ($dado["progresso"] == "nunca"){
      echo 'style="opacity: 0.3;"';}
      else echo 'style="opacity: 1;"';
      ?>><img src="<?php echo $dado["imagem"]; ?>" class="img-fluid">
      <h6><?php echo $dado["plataforma"]; ?></h6>
            <h3><?php echo $dado["nome"]; ?></h3>
            <h1 class="display-6"><?php echo $dado["corp"]; ?></h1>
            <div class="center">
            <?php if ($dado["progresso"] == "nao"){
    echo '<i class="bi bi-dash-circle-fill" style="color: orange; font-size: 28pt;"></i></div></div>';}
    else if($dado["progresso"] == "asim"){
    echo '<i class="bi bi-check-circle-fill" style="color: green; font-size: 28pt;"></i></div></div>';}
    else if($dado["progresso"] == "coop") { 
    echo '<i class="bi bi-record-circle-fill" style="color: blue; font-size: 28pt;"></i></div></div>';}
    else if($dado["progresso"] == "naocoop") { 
    echo '<i class="bi bi-dash-circle-fill" style="color: orange; font-size: 28pt;"><i class="bi bi-record-circle-fill" style="color: blue; font-size: 28pt;"></i></i></div></div>';}
    else if($dado["progresso"] == "asimcoop"){
    echo '<i class="bi bi-check-circle-fill" style="color: green; font-size: 28pt;"><i class="bi bi-record-circle-fill" style="color: blue; font-size: 28pt;"></i></i></div></div>';}
    else if($dado["progresso"] == "asimplatina"){
    echo '<i class="bi bi-check-circle-fill" style="color: green; font-size: 28pt;"><i class="bi bi-trophy-fill" style="color: DeepSkyBlue; font-size: 28pt;"></i></i></div></div>';}
    else if($dado["progresso"] == "coopplatina") { 
    echo '<i class="bi bi-record-circle-fill" style="color: blue; font-size: 28pt;"><i class="bi bi-trophy-fill" style="color: DeepSkyBlue; font-size: 28pt;"></i></i></div></div>';}
    else if($dado["progresso"] == "asimcoop"){
    echo '<i class="bi bi-check-circle-fill" style="color: green; font-size: 28pt;"><i class="bi bi-record-circle-fill" style="color: blue; font-size: 28pt;"><i class="bi bi-trophy-fill" style="color: DeepSkyBlue; font-size: 28pt;"></i></i></i></div></div>';}
    else {
    echo '<i class="bi bi-x-circle-fill" style="color: grey; font-size: 28pt;"></i></div></div>';}
    ?>
    <a href="editar.php?id=<?php echo $dado["id"]; ?>"><i class="bi bi-pencil-square editar"></i></a>
    </div>
    <?php } 
?>
        
      </div>
            </div>
            </div>
</body>
</html>


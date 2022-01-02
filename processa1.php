<?php
include_once("conexao.php");

$nome = filter_input(INPUT_POST, 'nome', FILTER_SANITIZE_STRING);
$corp = filter_input(INPUT_POST, 'corp', FILTER_SANITIZE_STRING);
$progresso = filter_input(INPUT_POST, 'progresso', FILTER_SANITIZE_STRING);
$plataforma = filter_input(INPUT_POST, 'plataforma', FILTER_SANITIZE_STRING);
$imagem = filter_input(INPUT_POST, 'imagem', FILTER_SANITIZE_STRING);

if($progresso == 1){
$progressoaux = "asim";
}
else if($progresso == 2){
$progressoaux = "coop";
}
else if($progresso == 3){
    $progressoaux = "nao";
}
else if($progresso == 4){
    $progressoaux = "naocoop";
}
else if($progresso == 5){
    $progressoaux = "asimcoop";
}
else if($progresso == 6){
    $progressoaux = "asimplatina";
}
else if($progresso == 7){
    $progressoaux = "coopplatina";
}
else if($progresso == 8){
    $progressoaux = "nunca";
}

if($plataforma == 1){
    $plataformaaux = "PS4";
}
else if($plataforma == 2){
   $plataformaaux = "PC";
}
else if($plataforma == 3){
        $plataformaaux = "MOBILE";
}
else if($plataforma == 4){
    $plataformaaux = "PS3";
}

$sql = "SELECT * FROM jogo WHERE jogo";
$result = mysqli_query($conn, $sql);


$result_usuario = "INSERT INTO jogo (nome, corp, progresso, imagem, plataforma) VALUES ('$nome', '$corp', '$progressoaux', '$imagem', '$plataformaaux')";
$resultado_usuario = mysqli_query($conn, $result_usuario);

  if(mysqli_affected_rows($conn)) {
    header("Location: http://localhost/ListGames/jogos2.php");
  }
  
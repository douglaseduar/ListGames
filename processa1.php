<?php
include_once("conexao.php");

$nome = filter_input(INPUT_POST, 'nome', FILTER_SANITIZE_STRING);
$corp = filter_input(INPUT_POST, 'corp', FILTER_SANITIZE_STRING);
$progresso = filter_input(INPUT_POST, 'progresso', FILTER_SANITIZE_STRING);
$imagem = filter_input(INPUT_POST, 'imagem', FILTER_SANITIZE_STRING);


$sql = "SELECT * FROM jogo WHERE jogo";
$result = mysqli_query($conn, $sql);


    $result_usuario = "INSERT INTO jogo (nome, corp, progresso, imagem) VALUES ('$nome', '$corp', '$progresso', '$imagem')";
    $resultado_usuario = mysqli_query($conn, $result_usuario);

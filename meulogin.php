<?php
include_once("conexao1.php");

$usuario1 = filter_input(INPUT_POST, 'usuario', FILTER_SANITIZE_STRING);
$senha = filter_input(INPUT_POST, 'senha', FILTER_SANITIZE_NUMBER_INT);

$result_usuario = "SELECT * FROM dados";
$resultado_usuario = mysqli_query($conn, $result_usuario);
while ($row_usuario = mysqli_fetch_assoc($resultado_usuario))

$meunome = $row_usuario['usuario'];

if ($meunome == $usuario1){
    header('Location: jogos2.php');}
else {
  header('Location: login.php');
}
?>
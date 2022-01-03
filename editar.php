<?php
include_once("config/conexao.php");

$id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);
$result_usuario = "SELECT * FROM jogo WHERE id = '$id'";
$resultado_usuario = mysqli_query($conn, $result_usuario);
$row_usuario = mysqli_fetch_assoc($resultado_usuario);

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
    <title>Cadastrar Jogos</title>
    <link href="estilo.css" rel="stylesheet">
</head>
<body>
    <div class="comeco">
        

        <form method="POST" action="config/processaed.php" style="padding:22px; border: solid 1px;">
            <label>Nome: </label>
        <input type="text" name="nome" placeholder="digite aqui..." required="" style="width:252px" value="<?php echo $row_usuario['nome'] ?>">
        <br><br>
        <input type="hidden" name="id" value="<?php echo $id?>">
            <label>Desenvolvedora:  </label>
        <input type="text" name="corp" placeholder="digite aqui..." required="" value="<?php echo $row_usuario['corp'] ?>">
        <br><br>
        <label class="visually" for="inlineFormSelectPref">Progresso</label>
        <select class="form-select" id="inlineFormSelectPref" name="progresso">
      <option value="1">Terminou</option>
      <option value="2">Multiplayer</option>
      <option value="3">Não Terminou</option>
      <option value="4">Não terminou, apenas Multiplayer</option>
      <option value="5">Terminou com Multiplayer</option>
      <option value="6">Platinou sem Multiplayer</option>
      <option value="7">Platinou com Multiplayer</option>
      <option value="8">Nunca jogou</option>
    </select>
        <br>
        <label class="itens">Imagem: </label>
        <input type="text" name="imagem" placeholder="digite url..." required="" style="width:234px" value="<?php echo $row_usuario['imagem'] ?>"></input>
        <br><br>
        <label class="itens">Valor: </label>
        <input type="text" name="valor" placeholder="digite o valor..." style="width:234px" value="<?php echo $row_usuario['valor'] ?>"></input>
        <br><br>
        <label class="itens">Tempo de jogo: </label>
        <input type="text" name="tempo" placeholder="digite o tempo de jogo" style="width:234px" value="<?php echo $row_usuario['tempo'] ?>"></input>
        <br><br>
        <label class="visually" for="inlineFormSelectPref">Plataforma</label>
        <select class="form-select" id="inlineFormSelectPref" name="plataforma">
      <option value="1">PS4</option>
      <option value="4">PS3</option>
      <option value="2">PC</option>
      <option value="3">MOBILE</option>
    </select>
    <br>
        <input type="submit" value="EDITAR" class="btn btn-primary" style="width:299px">
        
    </form><br><br><br>

</body>
</html>
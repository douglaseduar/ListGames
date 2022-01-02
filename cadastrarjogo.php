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
        

        <form method="POST" action="processa1.php" style="padding:22px;">
            <label>Nome: </label>
        <input type="text" name="nome" placeholder="digite aqui..." required="" style="width:252px">
        <?php echo "<br><br>" ?>
            <label>Desenvolvedora:  </label>
        <input type="text" name="corp" placeholder="digite aqui..." required="">
        <?php echo "<br><br>" ?>
        <select class="form-select" id="inlineFormSelectPref">
      <option value="1">Terminou</option>
      <option value="2">Multiplayer</option>
      <option value="3">Não Terminou</option>
      <option value="4">Não terminou, apenas Multiplayer</option>
      <option value="5">Terminou, e Multiplayer</option>
      <option value="6">Platinou sem Multiplayer</option>
      <option value="7">Platinou com Multiplayer</option>
      <option value="8">Nunca jogou</option>
    </select>
        <?php echo "<br>" ?>
        <label class="itens">Imagem: </label>
        <input type="text" name="imagem" placeholder="digite aqui..." required="" style="width:234px"></input>
        <?php echo "<br><br>" ?>
        <input type="submit" value="CADASTRAR" class="btn btn-primary" style="width:299px">
        
    </form><br><br><br>
<div class="tutorial"><b>PROGRESSO</b><br><br>
<b>asim -</b> terminou<br>
<b>coop -</b> multiplayer<br>
<b>não -</b> não terminou<br>
<b>nãocoop -</b> não terminou mas tem multiplayer<br>
<b>asimcoop - </b>terminou e tem multiplayer<br>
<b>asimplatina -</b> terminou o jogo sem mutiplayer e platinou<br>
<b>coopplatina -</b> multiplayer mas platinou<br>
<b>assimcoopplatina -</b> terminou o jogo, multiplayer e platinou<br>
<b>nunca -</b> tem o jogo mais não jogou<br>
</div>

</body>
</html>
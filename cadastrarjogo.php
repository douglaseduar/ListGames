<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastrar Jogos</title>
</head>
<body>
    <div class="comeco">
        

        <form method="POST" action="processa1.php">
            <label>Nome: </label>
        <input type="text" name="nome" placeholder="exemplo" required="">
        <?php echo "<br><br>" ?>
            <label>Desenvolvedora  </label>
        <input type="text" name="corp" placeholder="exemplo" required="">
        <?php echo "<br><br>" ?>
        <label class="itens">terminou? </label>
        <input type="text" name="progresso" placeholder="sim ou não" required=""></input>
        <?php echo "<br><br>" ?>
        <label class="itens">Imagem: </label>
        <input type="text" name="imagem" placeholder="nome da imagem" required=""></input>
        <?php echo "<br><br>" ?>
        <input type="submit" value="CADASTRAR" class="botaoenviar">
        
    </form>
</body>
</html>
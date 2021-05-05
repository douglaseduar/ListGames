<?php ?>

<html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
<link href="estilo.css" rel="stylesheet">
<link rel="shortcut icon" href="imagem/controller.png" type="image/x-icon"/>
</head>
<body>
<div class="alogin">
<form method="POST" action="meulogin.php" class="row g-3" style="display: inline-block; border: solid 1px!important; padding: 5px;padding-bottom: 19px;">
<div class="col-auto">
<img src="imagem/controller.png" widht="75px" height="75px" style="margin-top: -10px;"
/>
<input type='text' name='usuario' placeholder='Digite o usuário' class="form-control">
</div>
<div class="col-auto">
<input type='password' name='senha' placeholder='Senha' class="form-control">
</div>
  <div class="col-auto">
<input type="submit" value="-Entrar-" class="btn btn-primary">

</form>
</div>
</body>

</html>



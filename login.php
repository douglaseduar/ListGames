<?php ?>

<html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Meu Game</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link href="estilo.css" rel="stylesheet">
<link rel="shortcut icon" href="imagem/controller.png" type="image/x-icon"/>
</head>
<body>

<div class="diretotext" id="direitotext">
  <div class="tamanhotext">
    <div class="backgorund"></div>
    <div class="alogin2">
    <div class="titulo"><b>BEM VINDO</b> A MAIOR <b>COMUNIDADE GAMER</b> DO BRASIL!</div><br>
    <div class="descricao">"As comunidades gamer são ambientes de troca de experiências e informações. Muitas pessoas encontram nelas espaços para expressar suas ideias e opiniões, 
      interagindo com quem também compartilha interesses em comum. <?php echo "<3" ?>"<br>
       <br>• DÊ GAMER PARA GAMER •</div>

    </div>
  </div>
</div>


<div class="direito" id="direito" style="display:none;">
<div class="tamanho1" style="background-color:white;">

<div class="alogin3" id="alogin2">
<form class="form-inline" method="POST" action="meucadastro.php">
<div class="teste" style="display: inline-block; border: 1px solid #ced4da!important; padding: 20px 100px;padding-bottom: 19px;">
<div class="centro" style="text-align:center;"><img src="imagem/Cadastro.png" style="margin-top: -10px; margin-bottom:20px; "/></div>
  <div class="form-group">
  <label for="exampleFormControlInput1">Usuário:</label>
    <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="I'AmMeuGamëzin$" required style="min-width: 300px;"><br>
  <div class="row">
    <div class="col">
    <label for="exampleFormControlInput1">Nome Completo:</label>
      <input type="text" class="form-control" placeholder="Nome" required>
    </div>
    <div class="col">
    <label for="exampleFormControlInput1"> ⠀⠀</label>
      <input type="text" class="form-control" placeholder="Sobrenome" required>
    </div>
  </div><br>
    <label for="exampleFormControlInput1">Email:</label>
    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="exemplo@meugame.com" style="min-width: 300px;" required>
  </div>
    <br>
    <label for="exampleFormControlInput1">Senha:</label>
    <input type="password" id="inputPassword6" class="form-control " aria-describedby="passwordHelpInline" min="8" max="22" required>
    <small id="passwordHelpInline" class="text-muted" style="float: right;">
    Deve ter de 8 a 20 caracteres.
    </small>
    <br>
    <label for="exampleFormControlInput1">Confirmar Senha:</label>
    <input type="password" id="inputPassword6" class="form-control " aria-describedby="passwordHelpInline" required>
<br>
      <input class="form-check-input" type="checkbox" id="gridCheck">
      <label class="form-check-label" for="gridCheck">
        <b style="color:grey;">Termos de uso</b>
      </label>
    <div class="centro" style="text-align:center;"><button type="submit" class="btn btn-info" style="margin-right: -10px;">Cadastrar</button></div>
  </div>
</form>
</div>
<div class="logo">  <img src="imagem/logo.png" style="margin-top:20px;"></div>
<div class="creditos" style="text-align: center;font-size: 10pt;margin-top: 7px;color: grey;">
© 2021 - Meu Game <br>
Desenvolvido por: <a href="https://www.instagram.com/douglaseduar" style="color:grey;">Douglas</a>
</div></div></div></div>


<div class="esquerdotext" id="esquerdotext" style="width:40%; height:100%; display:none;">
<div class="tamanhotext2">
    <div class="backgorund"></div>
<div class="alogin4">
  <div class="titulo1">SE JUNTE À NOSSA COMUNIDADE:</div>
<div class="descricao">• Acompanhe o que você está jogando e descubra novos jogos.<br>
• Catalogue sua coleção de jogos.<br>
• Importe seus jogos e conquistas Steam.<i> (em breve)</i><br>
• Veja em estimativa quanto vale seu perfil $$.<br>
• Descubra quanto tempo você tem de jogo.<br>
• Compare seu perfil com de outros usuários.<br>
• Fique por dentro das novidades.<br>
• Conheça pessoas do mundo inteiro.<br><br>
<button type="button" class="btn btn-light" style="font-size:15pt; font-weight:700; ">Discord <i class="bi bi-discord"></i></button>
</div></div></div></div>

<div class="tamanho">
<div class="esquerdo" id="esquerdo" style="background-color: white;">
<div class="alogin" id="alogin1">
<form method="POST" action="meulogin.php" class="row g-3">
<div class="teste" style="display: inline-block; border: 1px solid #ced4da!important; padding: 20px 100px;padding-bottom: 19px;">
<div class="col-auto">
<img src="imagem/login.png" style="margin-top: 0px; margin-bottom:30px"
/>
<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1" style="border:none!important; background-color: white!important;padding: .375rem 0px;padding-right: 10px;"><i class="bi bi-person-fill" style="font-size:20pt;"></i></span>
  </div>
  <input type='text' name='usuario' placeholder='Username' class="form-control" required>
</div>
</div>

<div class="col-auto">
<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text" id="basic-addon2" style="border:none!important; background-color: white!important;padding: .375rem 0px;padding-right: 10px;"><i class="bi bi-key-fill" style="font-size:20pt;"></i></span>
</div>
<input type='password' name='senha' placeholder='Senha' class="form-control"  required>
</div>
</div>


  <div class="col-auto">
<button type="submit" class="btn btn-info" style="margin-right: -10px;"> Entrar  <i class="bi bi-box-arrow-up-right"> </i></button>
<figcaption class="figure-caption" style="padding-top: 15px; text-align: end;"><a href="#" style="text-decoration:none;">Esqueceu sua senha?</a></figcaption>
</form></div>


</div></div>
<div class="cadastro" style="text-align:center;">Ainda não tem conta? <a href="#" onclick="cadastro()" style="font-weight:750; color:black;">Cadastre-se</a></div>
<div class="logo">  <img src="imagem/logo.png" style="margin-top:45px;"></div>
<div class="creditos" style="text-align: center;font-size: 10pt;margin-top: 7px;color: grey;">
© 2021 - Meu Game <br>
Desenvolvido por: <a href="https://www.instagram.com/douglaseduar" style="color:grey;">Douglas</a>
</div>
</div>
</div>
</body>

<script>
 function cadastro() {
  document.getElementById("esquerdo").style.display = "none";
  document.getElementById("direito").style.display = "block";
  document.getElementById("direitotext").style.display = "none";
  document.getElementById("esquerdotext").style.display = "block";}
</script>
</html>




<?php if(!class_exists('Rain\Tpl')){exit;}?><!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Recuperação de Senha</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="/res/admin/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
   <!--<link rel="stylesheet" href="/res/admin/dist/css/AdminLTE.min.css"> -->
  <link rel="stylesheet" href="/res/admin/dist/css/estilo.css">

</head>
<body class="hold-transition lockscreen">
<!-- Automatic element centering -->
<div class="lockscreen-wrapper">
  <div class="lockscreen-logo">
    <a href="/res/admin/index2.html"><b>Recuperar Senha </b></a>
  </div>

  <div class="lockscreen-item">

    <!-- lockscreen credentials (contains the form) -->
    <form  action="/admin/forgot" method="post">
      <div class="input-group">
        <input type="email" class="form-control" placeholder="Digite o e-mail" name="email">

        <div class="input-group-btn">
          <button type="submit" class="btn"><i class="fa fa-arrow-right text-muted"></i></button>
        </div>
      </div>
    </form>

  </div>

  <div class="help-block text-center">
    Digite seu e-mail e receba as instruções para redefinir a sua senha.
  </div>
  <div class="text-center">
    <a href="/admin/login">Login</a>
  </div>
  <div class="lockscreen-footer text-center">
    Copyright &copy; 2018 <b><a class="text-black">Click Vendas</a></b><br>
    Todos os Direitos Reservados
  </div>
</div>

<!-- jQuery 2.2.3 -->
<script src="/res/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="/res/admin/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>

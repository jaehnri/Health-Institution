%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PP3.Index" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!--CSS Bootstrap-->
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <style>
        body
        {
            background-image: url("imagens/wallpaper.jpg");
            height: 1920px;
    background-size: contain;
    background-repeat: no-repeat !important;
        }        

        </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark probootstrap-navbar-dark" style="padding:0;">
    <div class="container" style="padding: 0; margin: 0; max-width: unset;">
      <!-- <a class="navbar-brand" href="index.html">Health</a> -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-nav" aria-controls="probootstrap-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="probootstrap-nav">
        <ul class="navbar-nav m-auto" style="margin-top: 0;">
          <li class="nav-item active"><a href="index.html" class="nav-link pl-0">Home</a></li>
          <li class="nav-item"><a href="m.aspx" class="nav-link">Médico</a></li>
          <li class="nav-item"><a href="s.aspx" class="nav-link">Secretário</a></li>
          <li class="nav-item"><a href="p.aspx" class="nav-link">Paciente</a></li>
        </ul>
        <div class="ml-auto">
          <form action="#" method="get" class="probootstrap-search-form mb-sm-0 mb-3">
            <div class="form-group">
              <button class="icon submit"><span class="icon-magnifying-glass"></span></button>
              <input type="text" class="form-control" placeholder="Pesquisar">
            </div>
          </form>
        </div>
          <ul class="navbar-nav mr-auto">
            <li class="nav-item"><a href="l.aspx" class="nav-link">Entrar</a></li>
        </ul>
      </div>
    </div>
  </nav>
   </br>
    </br>
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-12 text-center">
          <h2 class="h1">Conheça os Doutores</h2>
          <p class="lead text-secondary">Health Institution</p>
          <div class="row justify-content-center mb-5">
            <div class="col-md-3"><a href="#" class="btn btn-secondary btn-block">Junte-se a nós</a></div>
          </div>
        </div>
      </div>
      <div class="row no-gutters">
        <div class="col-lg-3 col-md-3 col-sm-6 col-6 prbootstrap-team">
          <img src="imagens/Hydrangeas.jpg" alt="Free Template by uicookies.com" class="img-fluid">
          <div class="probootstrap-person-text">
            <span class="title">Pediatra</span>
            <span class="name">Dra. Paula Ghiro
            </span>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-6 prbootstrap-team">
          <img src="imagens/Jellyfish.jpg" alt="Free Template by uicookies.com" class="img-fluid">
          <div class="probootstrap-person-text">
            <span class="title">Neurocirurgião </span>
            <span class="name">Dr. João Henri</span>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-6 prbootstrap-team">
          <img src="imagens/Koala.jpg" alt="Free Template by uicookies.com" class="img-fluid">
          <div class="probootstrap-person-text">
            <span class="title">Podologia</span>
            <span class="name">Dr. Nicholas Patapoff</span>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-6 prbootstrap-team">
          <img src="imagens/Penguins.jpg" alt="Free Template by uicookies.com" class="img-fluid">
          <div class="probootstrap-person-text">
            <span class="title">Enfermeira</span>
            <span class="name">Dra. Lavínia Corat</span>
          </div>
        </div>
      </div>
    </div>
    <form id="form1" runat="server">
          <div>

          </div>
         </form>
         <!--Jquery-->
        <script src="js/jquery.min.js"></script>
         <!--JavaScript Bootstrap-->
        <script src="js/bootstrap.js"></script>
   </body>
   </html>

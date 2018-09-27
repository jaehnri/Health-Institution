<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PP3.Index" %>
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
          <li class="nav-item active"><a href="index.aspx" class="nav-link pl-0">Home</a></li>
          <li class="nav-item"><a href="medico.aspx" class="nav-link">Médico</a></li>
          <li class="nav-item"><a href="secretaria.aspx" class="nav-link">Secretário</a></li>
          <li class="nav-item"><a href="paciente.aspx" class="nav-link">Paciente</a></li>
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
            <li class="nav-item"><a href="LoginSelec.aspx" class="nav-link">Entrar</a></li>
        </ul>
      </div>
    </div>
  </nav>
   </br>
    </br>
    <section class="probootstrap-features-1">
    <div class="container">
      <div class="row">
        <div class="col-md probootstrap-feature-item" style="background-image: url(imagens/crianca.jpeg);">
          <div class="probootstrap-feature-item-text">
            <span class="icon"><i class="flaticon-first-aid-kit display-4"></i></span>
            <h2>Pediatria <span>Terapia</span></h2>
          </div>
        </div> 
        <div class="col-md probootstrap-opening">
          <h2 class="text-uppercase mb-3">Horário de Abertura <span>Centro Médico</span></h2>
          <ul class="list-unstyled probootstrap-schedule">
            <li>Seg-Sex <span>5:00-17:00</span></li>
            <li>Sab <span>6:30-17:00</span></li>
            <li>Dom <span>6:30-17:00</span></li>
          </ul>
        </div> 
        <div class="col-md probootstrap-feature-item" style="background-image: url(imagens/médica.jpg);">
          <div class="probootstrap-feature-item-text">
            <span class="icon"><i class="flaticon-gym-control-of-exercises-with-a-list-on-a-clipboard-and-heart-beats display-4"></i></span>
            
            <h2>Psiquiatria <span>Terapia</span></h2>
          </div>
        </div> 
      </div>
    </div>
  </section>

    <section class="probootstrap-services">
    <div class="container">
      <div class="row no-gutters">
        <div class="col-md-3 probootstrap-aside-stretch-left">
          <div class="mb-3">
            <h2 class="h6">Sessões</h2>
            <ul class="list-unstyled probootstrap-light mb-4">
              <li><a href="#">Home</a></li>
              <li><a href="#">Médico</a></li>
              <li><a href="#">Paciente</a></li>
              <li><a href="#">Secretaria</a></li>
              <li><a href="#">Entrar</a></li>
            </ul>
            <p><a href="#" class="arrow-link text-white">HEALTH INSTITUTION  <i class="icon-chevron-right"></i></a></p>
          </div>
        </div>
        <div class="col-md-9 pl-md-5 pl-0">
          <div class="row mb-5">
              
              <div class="col-lg-4 col-md-6">
                <div class="media d-block mb-4 text-left probootstrap-media">
                  <div class="probootstrap-icon mb-3"><span class="flaticon-price-tag display-4"></span></div>
                  <div class="media-body">
                    <h3 class="h5 mt-0 text-secondary">Preço Acessível</h3>
                    <p>Oferecemos preços justos, com planos que cabem no seu orçamento.</p>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-6">
                <div class="media d-block mb-4 text-left probootstrap-media">
                  <div class="probootstrap-icon mb-3"><span class="flaticon-shield-with-cross display-4"></span></div>
                  <div class="media-body">
                    <h3 class="h5 mt-0 text-secondary">Qualidade &amp; Segurança</h3>
                    <p>O Centro Médico No.01 de Campinas.</p>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-6">
                <div class="media d-block mb-4 text-left probootstrap-media">
                  <div class="probootstrap-icon mb-3"><span class="flaticon-first-aid-kit display-4"></span></div>
                  <div class="media-body">
                    <h3 class="h5 mt-0 text-secondary">Serviço Imediato</h3>
                    <p>Não entre em filas, entre no Health Institution.</p>
                  </div>
                </div>
              </div>

              <div class="col-lg-4 col-md-6">
                <div class="media d-block mb-4 text-left probootstrap-media">
                  <div class="probootstrap-icon mb-3"><span class="flaticon-microscope display-4"></span></div>
                  <div class="media-body">
                    <h3 class="h5 mt-0 text-secondary">Equipamentos de Precisão</h3>
                    <p>As tecnologias mais recentes e atualizadas em prol da sua    vida.</p>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-6">
                <div class="media d-block mb-4 text-left probootstrap-media">
                  <div class="probootstrap-icon mb-3"><span class="flaticon-gym-control-of-exercises-with-a-list-on-a-clipboard-and-heart-beats display-4"></span></div>
                  <div class="media-body">
                    <h3 class="h5 mt-0 text-secondary">Tratamento Personalizado</h3>
                    <p>Tratamentos de acordo com você e do jeito que você quiser!</p>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-6">
                <div class="media d-block mb-4 text-left probootstrap-media">
                  <div class="probootstrap-icon mb-3"><span class="flaticon-doctor display-4"></span></div>
                  <div class="media-body">
                    <h3 class="h5 mt-0 text-secondary">Experiência que Conta</h3>
                    <p>Atendemos mais de 5000 pacientes anualmente!</p>
                  </div>
                </div>
              </div>
            </div>
        </div>
      </div>
    </div>
  
  </section>
    <div class="container">
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
    <br /><br /><br />
    <div class="row mb-5">
        <div class="col-md-12 text-center">
          <div class="row justify-content-center mb-5">
            <div class="col-md-3"><a href="#" class="btn btn-secondary btn-block">Junte-se a nós</a></div>
          </div>
        </div>
      </div>
    <footer class="probootstrap-footer">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-3">
          <h3 class="heading">Sede da Instituição</h3>
          <p class="mb-5">R. Jorge de Figueiredo Corrêa, 735 - Chácara Primavera, Campinas - SP, 13087-261 </p>
          <h3 class="heading text-white">Abertura</h3> 
          <p>
            Seg-Sex 7:30-18:00 <br>
            Sab 7:30-18:00 <br>
            Dom 7:30-18:00
          </p>
        </div>
        <div class="col-md-3">
          <h3 class="heading">Links Rápidos</h3>
          <ul class="list-unstyled probootstrap-footer-links">
            <li><a href="index.aspx">Home</a></li>
            <li><a href="medico.aspx">Médico</a></li>
            <li><a href="paciente.aspx">Paciente</a></li>
            <li><a href="secretaria.aspx">Secretaria</a></li>
            <li><a href="LoginSelec.aspx">Entrar</a></li>
          </ul>
        </div>
        <div class="col-md-3">
          <h3 class="heading">Follow us</h3>
          <ul class="list-unstyled probootstrap-footer-links">
            <li><a href="https://twitter.com/jaohenrii">João Henri</a></li>
            <li><a href="https://twitter.com/NicholasPatapo1">Nicholas Patapoff</a></li>
            <li><a href="https://twitter.com/littleheadfilms">LH Films</a></li>

          </ul>
        </div>
      </div>
      <!-- END row -->

    </div>
  </footer>
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

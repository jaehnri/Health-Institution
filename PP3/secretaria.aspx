<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="secretaria.aspx.cs" Inherits="PP3.secretaria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

          <form action="#" method="get" class="probootstrap-search-form mb-sm-0 mb-3">
            <div class="form-group">
            </div>
          </form>

  <section class="mb-5">
    <div class="container">
      <div class="row">
        <div class="col-md-6 mb-5">
          <h1 class="display-4">Contate-nos</h1>
          <p class="lead text-secondary">Precisa de ajuda? <a href="" target="_blank">Fale conosco já!</a></p>

        </div>
      </div>
    </div>
  </section>
  

  <section class="probootstrap-services">
    <div class="container">
      <div class="row no-gutters">
        <div class="col-md-3 pb-5 probootstrap-aside-stretch-left probootstrap-inside">
          <div class="mb-3 pt-5">
            <h2 class="h6">Contato</h2>
            <ul class="list-unstyled probootstrap-light mb-4">
              <li class="active"><a href="#">Telefone</a></li>
              <li><a href="#">(19) 3210-9876</a></li>

              <li class="active"><a href="#">E-mail</a></li>
              <li><a href="#">littleheadfilms@gmail.com</a></li>

              <li class="active"><a href="#">Endereço</a></li>
              <li><a href="#">R. Jorge de Figueiredo Corrêa, 735 - Chácara Primavera, Campinas </a></li>

            </ul>
          </div>
        </div>
        <div class="col-md-9 pl-md-5 pb-5 pl-0 probootstrap-inside">
          <h1 class="mt-4 mb-4">Entre em contato já!</h1>
          <div class="row">
            <div class="col-md-12">
              <form action="" method="post" class="probootstrap-form">
                <div class="form-group">
                  <label for="name" class="sr-only">Name</label>
                  <asp:textbox runat="server" class="form-control" id="txt_NomeContato" type="text" placeholder="Digite seu nome"></asp:textbox>
                </div>
                <div class="form-group">
                  <label for="email" class="sr-only">Email</label>
                   <asp:textbox runat="server" class="form-control" id="txt_EmailContato" type="text" placeholder="Digite seu e-mail"></asp:textbox>

                </div>
                <div class="form-group">
                  <label for="message" class="sr-only">Message</label>
                  <textarea name="message" id="message" cols="30" rows="10" class="form-control" placeholder="Digite sua mensagem"></textarea>
                </div>
                <div class="form-group">
                  <input type="submit" class="btn btn-primary" value="Enviar Mensagem">
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  

  <section class="probootstrap-subscribe">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-12">
          <h2 class="h1 text-white">Inscreva-se já</h2>
          <p class="lead text-white">Não perca mais nenhuma novidade do Health Institution.</p>
        </div>
      </div>
      <form action="#" method="post">
        <div class="row">
          <div class="col-md-4">
            <input type="text" class="form-control" placeholder="Name">    
          </div>
          <div class="col-md-4 mb-md-0 mb-3">
            <input type="text" class="form-control" placeholder="Email">
          </div>
          <div class="col-md-4">
            <input type="submit" value="Inscrever-se" class="btn btn-primary btn-block">
          </div>
        
        </div>
      </form>
    </div>
  </section>

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
          <h3 class="heading">Siga-nos</h3>
          <ul class="list-unstyled probootstrap-footer-links">
            <li><a href="https://twitter.com/jaohenrii">João Henri</a></li>
            <li><a href="https://twitter.com/NicholasPatapo1">Nicholas Patapoff</a></li>
            <li><a href="https://twitter.com/littleheadfilms">LH Films</a></li>

          </ul>
        </div>
      </div>

    </div>
  </footer>

  <!-- loader -->
    
  <script src="js/jquery-3.2.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>

  <script src="js/main.js"></script>
</body>
</asp:Content>

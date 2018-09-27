<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="l.aspx.cs" Inherits="PP3.l" %>
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
            background-color: #1f5ec4;
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
    <center>
    <form id="form1" runat="server">

          <section class="probootstrap-subscribe">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h2 class="h1 text-white">Health Institution</h2>
          <p class="lead text-white">Far far away, behind the word mountains, far from the countries Vokalia.</p>
        </div>
      </div>

          <div class="col-md-4">
          <asp:TextBox ID="txt_NomeUsuario" CssClass="form-control" runat="server" placeholder="Login" OnTextChanged="txt_Login_TextChanged"></asp:TextBox>
          </div>
        <br />

          <div class="col-md-4">
          <asp:TextBox ID="txt_SenhaUsuario" CssClass="form-control" runat="server" placeholder="Senha"></asp:TextBox>
          </div>
        <asp:Label ID="lb_mensagem" runat="server" Text="MENSAGEM"></asp:Label>
        <br /> 

         <div class="col-md-4">
            <asp:Button ID="btnLogar_Paciente" runat="server" Text="Entrar como Paciente" CssClass="btn btn-primary btn-block" OnClick="btnLogar_Paciente_Click" />
        </div>
        
        <br />
        
        <div class="col-md-4">
            <asp:Button ID="btnLogar_Medico" runat="server" Text="Entrar como Médico" CssClass="btn btn-primary btn-block" BackColor="#000066" />
        </div>

        <br />
        <div class="col-md-4">
            <asp:Button ID="btnLogar_Secretario" runat="server" Text="Entrar como Secretário" CssClass="btn btn-primary btn-block" BackColor="#3333CC" />
        </div>
    </div>
  </section>
         </form>
        </center>
         <!--Jquery-->
        <script src="js/jquery.min.js"></script>
         <!--JavaScript Bootstrap-->
        <script src="js/bootstrap.js"></script>
   </body>
   </html>

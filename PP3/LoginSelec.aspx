<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="loginselec.aspx.cs" Inherits="PP3.LoginSelec" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section  class="probootstrap-section overlay bg-image" style="height: 33% !important; background-image: url(imagens/healthcaring.png)">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2 class="text-white display-4">Paciente</h2>
            <br>
          <div class="row justify-content-center mb-5">
            <div class="col-md-4">
            <asp:Button ID="btnLogar_Paciente" runat="server" Text="Entrar como Paciente" CssClass="btn btn-primary btn-block" BackColor="#00235e" OnClick="btnLogar_Paciente_Click" />
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

    <section  class="probootstrap-section overlay bg-image" style="height: 33% !important; background-image: url(imagens/office.jpg)">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2 class="text-white display-4">Secretaria e Administradores</h2>
            <br>
          <div class="row justify-content-center mb-5">
            <div class="col-md-4">
            <asp:Button ID="btnLogar_Secretario" runat="server" Text="Entrar como Secretário" CssClass="btn btn-secondary btn-block" BackColor="#3333CC" OnClick="btnLogar_Secretario_Click" />
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section  class="probootstrap-section overlay bg-image" style="height: 33% !important; background-image: url(imagens/doctor.jpg)">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2 class="text-white display-4">Área do Médico</h2>
            <br>
          <div class="row justify-content-center mb-5">
            <div class="col-md-4">
            <asp:Button ID="btnLogar_Medico" runat="server" Text="Entrar como Médico" CssClass="btn btn-secondary btn-block" BackColor="#000066" OnClick="btnLogar_Medico_Click" />
            </div>
          </div>
        </div>
      </div>
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
      <!-- END row -->

    </div>
  </footer>
   <!-- <script>
        $(document).ready(function () {
            $("div[id$=probootstrap-loader]").fadeOut("fast");
        }
</script> 
    <div id="probootstrap-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#32609e"/></svg></div>
-->
</asp:Content>

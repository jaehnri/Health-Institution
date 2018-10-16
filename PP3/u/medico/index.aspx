<%@ Page Title="" Language="C#" MasterPageFile="~/u/medico/Medico.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PP3.u.medico.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <!-- SECTION AGENDA -->
    <section  class="probootstrap-section overlay bg-image" style="height: 33% !important; background-image: url(../../imagens/agenda.jpg)">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2 class="text-white display-4">Agenda</h2>
            <br>
          <div class="row justify-content-center mb-5">
            <div class="col-md-4">                
                <asp:Button ID="btn_Agenda" style="background-color: #00235e;" runat="server" OnClick="btn_Agenda_Click" cssclass="btn btn-secondary btn-block" Text="Acessar Agenda" />
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

    <!-- SECTION CONSULTA-->
    <section  class="probootstrap-section overlay bg-image" style="height: 33% !important; background-image: url(../../imagens/consulta.jpg)">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2 class="text-white display-4">Consulta</h2>
            <br>
          <div class="row justify-content-center mb-5">
            <div class="col-md-4">
                <asp:Button ID="btn_Consulta" runat="server" OnClick="btn_Consulta_Click"  style="background-color: #3333CC;" Text="Acessar Consultas" cssclass="btn btn-secondary btn-block"/>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

    <!-- SECTION GRAFICOS-->
  <section  class="probootstrap-section overlay bg-image" style="height: 33% !important; background-image: url(../../imagens/graficos.jpg)">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2 class="text-white display-4">Gráficos</h2>
            <br>
          <div class="row justify-content-center mb-5">
            <div class="col-md-4">
            <asp:Button ID="btn_Graficos" runat="server" style="background-color: #000066;" OnClick="btn_Graficos_Click" Text="Acessar Gráficos" CssClass="btn btn-secondary btn-block" />
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
         
    <!-- FOOTER -->
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
</asp:Content>

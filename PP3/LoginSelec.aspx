<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="loginselec.aspx.cs" Inherits="PP3.LoginSelec" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        
    <div class="col-md-4">
            <asp:Button ID="btnLogar_Paciente" runat="server" Text="Entrar como Paciente" CssClass="btn btn-primary btn-block" OnClick="btnLogar_Paciente_Click" />
        </div>
        
        <br />
        
        <div class="col-md-4">
            <asp:Button ID="btnLogar_Medico" runat="server" Text="Entrar como Médico" CssClass="btn btn-primary btn-block" BackColor="#000066" OnClick="btnLogar_Medico_Click" />
        </div>

        <br />
        <div class="col-md-4">
            <asp:Button ID="btnLogar_Secretario" runat="server" Text="Entrar como Secretário" CssClass="btn btn-primary btn-block" BackColor="#3333CC" OnClick="btnLogar_Secretario_Click" />
        </div>

    <section  class="probootstrap-section overlay bg-image" style="height: 33% !important; background-image: url(imagens/consulta1.jpg)">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2 class="text-white display-4">Especialistas em Cuidado Familiar</h2>
            <br>
          <div class="row justify-content-center mb-5">
            <div class="col-md-4"><a href="LoginSelec.aspx" class="btn btn-secondary btn-block">Marcar uma consulta <span class="icon-arrow-right"></span></a></div>

          </div>
        </div>
      </div>
    </div>
  </section>

    <section class="probootstrap-subscribe bg-image overlay" style="height: 33% !important; background-image: url(imagens/consulta1.jpg)">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-12">
          <h2 class="h1 text-white">Subscribe Newsletter</h2>
          <p class="lead text-white">Far far away, behind the word mountains, far from the countries Vokalia.</p>
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
            <input type="submit" value="Subscribe" class="btn btn-primary btn-block">
          </div>
        
        </div>
      </form>
    </div>
  </section>
           
        
</asp:Content>

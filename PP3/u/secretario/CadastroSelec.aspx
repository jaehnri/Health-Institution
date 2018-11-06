<%@ Page Title="" Language="C#" MasterPageFile="~/u/secretario/secretario.Master" AutoEventWireup="true" CodeBehind="CadastroSelec.aspx.cs" Inherits="PP3.u.secretario.CadastroSelec" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
            
     
        

    <!-- SECTION PACIENTE -->
    <section  class="probootstrap-section overlay bg-image" style="height: 33% !important; background-image: url(../../imagens/healthcaring.png)">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2 class="text-white display-4">Paciente</h2>
            <br>
          <div class="row justify-content-center mb-5">
            <div class="col-md-4">
               <asp:Button ID="btnCadastrar_Paciente" runat="server" Text="Cadastrar Paciente" CssClass="btn btn-primary btn-block" OnClick="btnCadastrar_Paciente_Click" />
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

      <!-- SECTION ADM-->
    <section  class="probootstrap-section overlay bg-image" style="height: 33% !important; background-image: url(../../imagens/office.jpg)">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2 class="text-white display-4">Admnistradores</h2>
            <br>
          <div class="row justify-content-center mb-5">
            <div class="col-md-4">
                <asp:Button ID="btnCadastrar_Secretario" runat="server" Text="Cadastrar ADM" CssClass="btn btn-primary btn-block" BackColor="#3333CC" OnClick="btnCadastrar_Secretario_Click" />
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

    <!-- SECTION MÉDICO-->
  <section  class="probootstrap-section overlay bg-image" style="height: 33% !important; background-image: url(../../imagens/doctor.jpg)">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2 class="text-white display-4"> Médico</h2>
            <br>
          <div class="row justify-content-center mb-5">
            <div class="col-md-4">
                <asp:Button ID="btnCadastrar_Medico" runat="server" Text="Cadastrar Médico" CssClass="btn btn-primary btn-block" BackColor="#000066" OnClick="btnCadastrar_Medico_Click" />
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

</asp:Content>

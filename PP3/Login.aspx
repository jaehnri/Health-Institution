<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PP3.LoginSelec" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <!-- SECTION PACIENTE -->
    <section  class="probootstrap-section overlay bg-image" style="height: 33% !important; background-image: url(imagens/healthcaring.png)">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2 class="text-white display-4">Paciente</h2>
            <br>
          <div class="row justify-content-center mb-5">
            <div class="col-md-4">
                <button style="background-color: #00235e;" type="button" class="btn btn-secondary btn-block" data-toggle="modal" data-target="#exampleModalPaciente">
                Entrar Como Paciente</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

    <!-- SECTION ADM-->
    <section  class="probootstrap-section overlay bg-image" style="height: 33% !important; background-image: url(imagens/office.jpg)">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2 class="text-white display-4">Secretaria e Administradores</h2>
            <br>
          <div class="row justify-content-center mb-5">
            <div class="col-md-4">
                <button style="background-color: #3333CC;" type="button" class="btn btn-secondary btn-block" data-toggle="modal" data-target="#exampleModalSecretaria">
                Entrar como ADM</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

    <!-- SECTION MÉDICO-->
  <section  class="probootstrap-section overlay bg-image" style="height: 33% !important; background-image: url(imagens/doctor.jpg)">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2 class="text-white display-4">Área do Médico</h2>
            <br>
          <div class="row justify-content-center mb-5">
            <div class="col-md-4">
            <button style="background-color: #000066;" type="button" class="btn btn-secondary btn-block" data-toggle="modal" data-target="#exampleModalMedico">
            Entrar Como Médico</button>
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
    
<!-- Modal Medico -->
<div class="modal fade" id="exampleModalMedico" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>                             
      <div class="modal-header">
          <h5 class="modal-title"><asp:Label ID="lbl_Titulo" runat="server" Text="Entrar como Médico"></asp:Label></h5>         
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

    <div class="modal-body">
        <form action="#" method="get" class="probootstrap-form">
            <div class="probootstrap-form">
                <div class="form-group">
                    <asp:textbox runat="server" class="form-control" id="txt_NomeMedico" type="text" placeholder="Seu Nome"></asp:textbox>
                </div>
                <div class="form-group">
                    <asp:textbox runat="server" class="form-control" id="txt_SenhaMedico" type="text" TextMode="Password" placeholder="Sua Senha"></asp:textbox>
                </div>
            </div>

            <div class="modal-footer">
                <asp:Button ID="Button1" CssClass="btn btn-secondary"  runat="server" Text="LOGAR" OnClick="btn_LogarMedico_Click" UseSubmitBehavior="False"></asp:Button>         
            </div>
        </form>
    </div>
          </ContentTemplate>
          </asp:UpdatePanel>
    </div>
  </div>
</div>

    <!-- Modal ADM -->
<div class="modal fade" id="exampleModalSecretaria" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
        <asp:UpdatePanel ID="UpdatePanel3" runat="server"><ContentTemplate>                             
      <div class="modal-header">
          <h5 class="modal-title"><asp:Label ID="lblTituloADM" runat="server" Text="Entrar como Secretário ou Administrador"></asp:Label></h5>         
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

    <div class="modal-body">
        <form action="#" method="get" class="probootstrap-form">
            <div class="probootstrap-form">
                <div class="form-group">
                    <asp:textbox runat="server" class="form-control" id="txt_NomeADM" type="text" placeholder="Seu Nome"></asp:textbox>
                </div>
                <div class="form-group">
                    <asp:textbox runat="server" class="form-control" id="txt_SenhaADM" type="text" TextMode="Password" placeholder="Sua Senha"></asp:textbox>
                </div>
            </div>

            <div class="modal-footer">
               <asp:Button ID="btn_EntrarADM" runat="server" Text="LOGAR" CssClass="btn btn-secondary" UseSubmitBehavior="False" OnClick="btn_EntrarADM_Click"/>          
            </div>
        </form>
    </div>
          </ContentTemplate>
          </asp:UpdatePanel>
    </div>
  </div>
</div>

    <!-- Modal Paciente -->
<div class="modal fade" id="exampleModalPaciente" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
        <asp:UpdatePanel ID="UpdatePanel2" runat="server"><ContentTemplate>                             
      <div class="modal-header">
          <h5 class="modal-title"><asp:Label ID="lblTituloPaciente" runat="server" Text="Entrar como Paciente"></asp:Label></h5>         
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

    <div class="modal-body">
        <form action="#" method="get" class="probootstrap-form">
            <div class="probootstrap-form">
                <div class="form-group">
                    <asp:textbox runat="server" class="form-control" id="txt_NomePaciente" type="text" placeholder="Seu Nome"></asp:textbox>
                </div>
                <div class="form-group">
                    <asp:textbox runat="server" class="form-control" id="txt_SenhaPaciente" type="text" TextMode="Password" placeholder="Sua Senha"></asp:textbox>
                </div>
            </div>

            <div class="modal-footer">
               <!--botao aqui -->          
            </div>
        </form>
    </div>
          </ContentTemplate>
          </asp:UpdatePanel>
    </div>
  </div>
</div>                         
    
</asp:Content>

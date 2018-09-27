<%@ Page Title="" Language="C#" MasterPageFile="~/u/secretario/secretario.Master" AutoEventWireup="true" CodeBehind="CadastroSelec.aspx.cs" Inherits="PP3.u.secretario.CadastroSelec" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-md-4">
            <asp:Button ID="btnCadastrar_Paciente" runat="server" Text="Cadastrar Paciente" CssClass="btn btn-primary btn-block" OnClick="btnCadastrar_Paciente_Click" />
        </div>
        
        <br />
        
        <div class="col-md-4">
            <asp:Button ID="btnCadastrar_Medico" runat="server" Text="Cadastrar Médico" CssClass="btn btn-primary btn-block" BackColor="#000066" OnClick="btnCadastrar_Medico_Click" />
        </div>

        <br />
        <div class="col-md-4">
            <asp:Button ID="btnCadastrar_Secretario" runat="server" Text="Cadastrar Secretário" CssClass="btn btn-primary btn-block" BackColor="#3333CC" OnClick="btnCadastrar_Secretario_Click" />
        </div>
</asp:Content>

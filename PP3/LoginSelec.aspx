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
           
        
</asp:Content>

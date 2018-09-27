<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="PP3.Login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>
         <section class="probootstrap-subscribe">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h2 class="h1 text-white">Health Institution</h2>
          <p class="lead text-white">Far far away, behind the word mountains, far from the countries Vokalia.</p>
            <p class="lead text-white">&nbsp;</p>
        </div>
      </div>


          <div class="col-md-4">
          <asp:TextBox ID="txt_Login" CssClass="form-control" runat="server" placeholder="Login" OnTextChanged="txt_Login_TextChanged"></asp:TextBox>
          </div>
        <br />

          <div class="col-md-4">

          <asp:TextBox ID="txt_SenhaUsuario" CssClass="form-control" runat="server" placeholder="Senha" TextMode="Password"></asp:TextBox>
          </div>
        <asp:Label ID="lb_mensagem" runat="server" Text="MENSAGEM"></asp:Label>
        <br />
        <div class="col-md-4">
            <asp:Button ID="btnLogar" runat="server" Text="Entrar" CssClass="btn btn-primary btn-block" OnClick="btnLogar_Click" />
        </div>
      </div>
          


</center>
</asp:Content>

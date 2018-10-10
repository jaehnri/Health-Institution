<%@ Page Title="" Language="C#" MasterPageFile="~/u/secretario/secretario.Master" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="PP3.u.secretario.cadastro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="probootstrap-subscribe">
            <div class="container">
                <div class="col-md-4">
                    <asp:TextBox ID="txt_Nome" runat="server" CssClass="form-control" placeholder="Nome"></asp:TextBox>
                </div>
                <br />
                <div class="col-md-4">
                    <asp:TextBox ID="txt_Email" runat="server" CssClass="form-control" placeholder="E-mail" TextMode="Email"></asp:TextBox>
                 </div>
                    <br />

                <div class="col-md-4">
                    <asp:TextBox ID="txt_Senha" runat="server" CssClass="form-control" placeholder="Senha" TextMode="Password"></asp:TextBox>
                    <br />
                </div>
                <div class="col-md-4">
                    <asp:TextBox ID="txt_ConfSenha" runat="server" CssClass="form-control" placeholder="Confirmar Senha" TextMode="Password"></asp:TextBox>
                    <br />
                </div>
                <div class="col-md-4">
                    <asp:TextBox ID="txt_Telefone" runat="server" CssClass="form-control" placeholder="Telefone" TextMode="Number" MaxLength="11"></asp:TextBox>
                    <br />
                </div>
                <div class="col-md-4">
                <asp:DropDownList ID="ddl_Especialidades" runat="server" Visible="False" DataSourceID="SqlEspecialidade" DataTextField="nome" DataValueField="idEspecialidade" CssClass ="form-control" BackColor="#33CCFF"></asp:DropDownList>
                         
                    <asp:SqlDataSource ID="SqlEspecialidade" runat="server" ConnectionString="<%$ ConnectionStrings:PP3ConexaoBD %>" SelectCommand="SELECT * FROM [Especialidade]"></asp:SqlDataSource>
                         
                </div>
                <br />
                <asp:Label ID="lbl_Alerta" runat="server" Font-Size="30pt" Text=""></asp:Label>
                <br />
                
                <div class="col-md-4">
            <asp:Button ID="btn_Cadastrar" runat="server" Text="Cadastrar" CssClass="btn btn-primary btn-block" OnClick="btn_Cadastrar_Click" />
        </div>
            </div>
        </section>
</asp:Content>




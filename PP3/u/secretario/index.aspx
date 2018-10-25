<%@ Page Title="" Language="C#" MasterPageFile="~/u/secretario/secretario.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PP3.u.secretario.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="probootstrap-section overlay bg-image" style="background-image: url(../../imagens/wallpaper.jpg)">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2 class="text-white display-4">&nbsp;</h2>
            <h2 class="text-white display-4"></h2>
          <div class="row justify-content-center mb-5">
            <div class="col-md-4">&nbsp;&nbsp;</div>
          </div>
        </div>
      </div>
    </div>
  </section>



  <section class="probootstrap-blog-appointment">
    <div class="container">
      <div class="row no-gutters">
        <div class="col-md-6 pr-md-5 pr-0 pt-md-5 pt-0 pb-md-5 pb-0">
          <h2 class="h1 mb-4 text-white">Consultas Próximas:</h2>
            <div class="row">
            <asp:GridView ID="grd_ConsultasProximas" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlProxConsultas" ForeColor="#333333" GridLines="None" HorizontalAlign="Left" OnSelectedIndexChanged="grd_ConsultasProximas_SelectedIndexChanged" ShowHeaderWhenEmpty="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    
                    
                    <asp:BoundField DataField="Médico" HeaderText="Médico" SortExpression="Médico" />
                    <asp:BoundField DataField="Paciente" HeaderText="Paciente" SortExpression="Paciente" />
                   <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Data" HeaderText="Data" SortExpression="Data" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlProxConsultas" runat="server" ConnectionString="<%$ ConnectionStrings:PP3ConexaoBD %>" SelectCommand="exec proxConsultas"></asp:SqlDataSource>
            </div>
          <p><a href="#" class="arrow-link">View All <i class="icon-chevron-right"></i></a></p>
        </div>
        <div class="col-md-6 p-md-5 p-3 probootstrap-aside-stretch-right">
          <h2 class="h1 text-white">Enviar Email</h2>
          <form action="#" class="probootstrap-form-appointment">
            <div class="form-group">
              <asp:TextBox ID="txt_Email" runat="server" CssClass="form-control" placeholder="Email..."></asp:TextBox>
            </div>
            <div class="form-group">
              <asp:TextBox ID="txt_Assunto" runat="server" placeholder="Assunto..." CssClass ="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
              <!--<textarea name="" class="form-control" id="" cols="30" rows="10" placeholder="Write your message"></textarea>-->
                <asp:TextBox ID="txt_Mensagem" CssClass="form-control" runat="server"  TextMode="MultiLine"  placeholder="Escreva sua mensagem" style="height: 300px !important;"></asp:TextBox>
            </div>
            <div class="form-group">
              <asp:Button ID="btn_Enviar" runat="server" Text="Enviar" cssClass="btn btn-secondary" OnClick="btn_Enviar_Click"/>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>
</asp:Content>

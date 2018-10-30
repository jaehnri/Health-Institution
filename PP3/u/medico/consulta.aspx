<%@ Page Title="" Language="C#" MasterPageFile="~/u/medico/Medico.Master" AutoEventWireup="true" CodeBehind="consulta.aspx.cs" Inherits="PP3.u.medico.consulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <section class="probootstrap-section overlay bg-image" style="background-image: url(../../imagens/doctor.jpg)">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2 class="text-white display-4">Verificar Próximas Consultas</h2>
          <p class="text-white mb-5 lead"></p>
          <div class="row justify-content-center mb-5">
            <div class="col-md-4"><a href="agenda.aspx" class="btn btn-secondary btn-block">Consultas <span class="icon-arrow-right"></span></a></div>
          </div>
        </div>
      </div>
    </div>
  </section>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
    <section class="probootstrap-blog-appointment">
    <div class="container">
      <div class="row no-gutters">
        <div class="col-md-6 pr-md-5 pr-0 pt-md-5 pt-0 pb-md-5 pb-0">
          <h2 class="h1 mb-4 text-white">Consulta Ativa</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlConsultaAtiva" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                    <asp:BoundField DataField="Duração" HeaderText="Duração" SortExpression="Duração" />
                    <asp:BoundField DataField="Data" HeaderText="Data e Hora" SortExpression="Data" />
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
            <asp:SqlDataSource ID="SqlConsultaAtiva" runat="server" ConnectionString="<%$ ConnectionStrings:PP3ConexaoBD %>" SelectCommand="select p.nome as Nome, c.duracao as Duração, c.dataHora as Data from Consulta as c, paciente as p where idConsulta = @idConsulta and p.idPaciente = c.idPaciente">
                <SelectParameters>
                    <asp:SessionParameter Name="idConsulta" SessionField="idConsulta" />
                </SelectParameters>
            </asp:SqlDataSource>
            <h2 class="h1 mb-4 text-white">Próxima Consulta</h2>
            <asp:GridView ID="GridView2" runat="server" CellPadding="4" DataSourceID="SqlProxConsulta" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
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
            <asp:SqlDataSource ID="SqlProxConsulta" runat="server"></asp:SqlDataSource>
          <p><a href="#" class="arrow-link">Ver todas  <i class="icon-chevron-right"></i></a></p>
        </div>

        <div class="col-md-6 p-md-5 p-3 probootstrap-aside-stretch-right">
          <h2 class="h1 text-white"><asp:Label ID="lbl_Titulo" CssClass="h1 text-white" runat="server" Text="Anotações desta Consulta"></asp:Label></h2>          
          <form action="#" class="probootstrap-form-appointment">
            <div class="form-group">
               <asp:TextBox ID="txt_Sintomas" runat="server" CssClass="form-control" placeholder="Sintomas..."></asp:TextBox>
            </div>
            <div class="form-group">
              <asp:TextBox ID="txt_Exames" runat="server" CssClass="form-control" placeholder="Exames..."></asp:TextBox>
            </div>
            <div class="form-group">
              <asp:TextBox ID="txt_Medicacoes" runat="server" CssClass="form-control" placeholder="Medicações..."></asp:TextBox>
            </div>
            <div class="form-group">
                 <asp:TextBox ID="txt_Observacoes" CssClass="form-control" runat="server"  TextMode="MultiLine"  placeholder="Observações..." style="height: 250px !important;"></asp:TextBox>
            </div>
              <div class="form-group">
                  <asp:CheckBox ID="ck_Reagendar" CssClass="form-control" runat="server" Text="Reagendar?" />
              </div> <br />
            <div class="form-group">
              <asp:Button ID="btn_EnviarConsulta" runat="server" Text="Enviar" cssClass="btn btn-secondary" OnClick="btn_EnviarConsulta_Click" />
            </div>              
          </form>
        </div>
      </div>
    </div>
  </section>
 </ContentTemplate>
</asp:UpdatePanel>
    
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/u/secretario/secretario.Master" AutoEventWireup="true" CodeBehind="Historico.aspx.cs" Inherits="PP3.u.secretario.Historico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="probootstrap-features-1">
    <div class="container">
      <div class="row">
        <div class="col-md probootstrap-feature-item" style="background-image: url(../../imagens/healthcaring.png);">
          <div class="probootstrap-feature-item-text">
            <span class="icon"><i class="flaticon-first-aid-kit display-4"></i></span>
            <h2>Psicologia<span>Para você</span></h2>
          </div>
        </div> 
        <div class="col-md probootstrap-opening">
          <h2 class="text-uppercase mb-3">Horário de Abertura <span>Centro Médico</span></h2>
          <ul class="list-unstyled probootstrap-schedule">
            <li>Seg-Sex <span>5:00-17:00</span></li>
            <li>Sab <span>6:30-17:00</span></li>
            <li>Dom <span>6:30-17:00</span></li>
          </ul>
        </div> 
        <div class="col-md probootstrap-feature-item" style="background-image: url(../../imagens/consulta3.jpg);">
          <div class="probootstrap-feature-item-text">
            <span class="icon"><i class="flaticon-gym-control-of-exercises-with-a-list-on-a-clipboard-and-heart-beats display-4"></i></span>
            
            <h2>Cardiologia <span>Tratamentos</span></h2>
          </div>
        </div> 
      </div>
    </div>
  </section>
    <section class="probootstrap-section bg-light">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-12 text-center">
          <h2 class="h1">Histórico de Consultas de:&nbsp;
            <asp:DropDownList ID="ddl_Paciente" runat="server" AutoPostBack="True" DataSourceID="SqlPaciente" DataTextField="nome" DataValueField="idPaciente"></asp:DropDownList>
             </h2>
            <asp:SqlDataSource ID="SqlPaciente" runat="server" ConnectionString="<%$ ConnectionStrings:PP3ConexaoBD %>" SelectCommand="SELECT [idPaciente], [nome] FROM [Paciente]"></asp:SqlDataSource>
            <h2 class="h1">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlHistorico" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Medico" HeaderText="Medico" SortExpression="Medico" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="Exames" HeaderText="Exames" SortExpression="Exames" />
                        <asp:BoundField DataField="Medicações" HeaderText="Medicações" SortExpression="Medicações" />
                        <asp:BoundField DataField="Observações" HeaderText="Observações" SortExpression="Observações" />
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
                <asp:SqlDataSource ID="SqlHistorico" runat="server" ConnectionString="<%$ ConnectionStrings:PP3ConexaoBD %>" SelectCommand="select c.idConsulta as ID, m.nome as Medico, c.statusConsulta as Status, c.exames as Exames,  c. medicacoes as Medicações, c.observacoes as Observações from consulta as c, paciente as p, medico as m where c.idPaciente = @idPaciente  and statusConsulta != 'PENDENTE'">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddl_Paciente" Name="idPaciente" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </h2>
             <center>


                 </center>
        </div>
      </div>
    </div>
  </section>
</asp:Content>

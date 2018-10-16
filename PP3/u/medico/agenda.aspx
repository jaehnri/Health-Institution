<%@ Page Title="" Language="C#" MasterPageFile="~/u/medico/Medico.Master" AutoEventWireup="true" CodeBehind="agenda.aspx.cs" Inherits="PP3.u.medico.agenda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table-primary table-striped" style ="width : 80%;">
        <thead class="thead-dark">
        <tr >         
           <th colspan="2">
               <asp:Label ID="lbl_Medico" runat="server" Text="Label"></asp:Label>
           </th>
        </tr>
        <tr>
           <th>
               Horário
           </th>
            <th>
                Paciente
            </th>
        </tr>
        </thead>
        <tbody class="thead-light">
        <tr>
            <td>9h00</td>
            <td></td>
        </tr>
        <tr>
            <td>9h30</td>
            <td></td>
        </tr>
        <tr>
            <td>10h00</td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style1">10h30</td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>11h00</td>
            <td></td>
        </tr>
        <tr>
            <td>11h30</td>
            <td></td>
        </tr>

        <tr>
            <td>Almoço</td>
            <td></td>
        </tr>
        
            
        <tr>
            <td>14h00</td>
            <td></td>
        </tr>
        <tr>
            <td>14h30</td>
            <td></td>
        </tr>
        <tr>
            <td>15h00</td>
            <td></td>
        </tr>
        <tr>
            <td>15h30</td>
            <td></td>
        </tr>
        <tr>
            <td>16h00</td>
            <td></td>
        </tr>
        <tr>
            <td>16h30</td>
            <td></td>
        </tr>
        </tbody>
    </table>
    
   
    &nbsp;
    
   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlConsulta" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="hora" HeaderText="hora" SortExpression="hora" />
            <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
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
    &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PP3ConexaoBD %>" SelectCommand="Select c.hora, p.nome  from  consulta as c, paciente as p where c.idMedico  = @idMedico and p.idPaciente = c.idPaciente">
    </asp:SqlDataSource>
    
   
 
    <asp:SqlDataSource ID="SqlConsulta" runat="server"></asp:SqlDataSource>
    <asp:GridView ID="gvConsultas" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="5" CellSpacing="5" CssClass="gridView" Height="100%">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="dados_paciente" HeaderText="Paciente" SortExpression="dados_paciente" />
            <asp:BoundField DataField="dados_medico" HeaderText="Médico" SortExpression="dados_medico" />
            <asp:BoundField DataField="data_consulta" HeaderText="Data" SortExpression="data_consulta" />
            <asp:BoundField DataField="inicio_consulta" HeaderText="Inicio" SortExpression="inicio_consulta" />
            <asp:BoundField DataField="duracao" HeaderText="Duração (min)" SortExpression="duracao" />
            <asp:BoundField DataField="stat" HeaderText="Status" SortExpression="stat" />
            <asp:BoundField AccessibleHeaderText="Id" DataField="id_consulta" HeaderText="Id" SortExpression="idConsulta" />
        </Columns>
        <HeaderStyle CssClass="cell" />
        <SelectedRowStyle BackColor="#D8D8D8" BorderColor="Black" BorderWidth="2px" />
    </asp:GridView>
    <br/>
    
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

</asp:Content>

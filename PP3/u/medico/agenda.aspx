<%@ Page Title="" Language="C#" MasterPageFile="~/u/medico/Medico.Master" AutoEventWireup="true" CodeBehind="agenda.aspx.cs" Inherits="PP3.u.medico.agenda" %>
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
          <h2 class="h1">Próximas Consultas!</h2>
          <p class="lead text-secondary">Para fazer anotações sobre a consulta atual, clique no botão da respectiva consulta.</p>
             <center><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlAgenda" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" DataKeyNames="ID">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                    <asp:BoundField DataField="Duração" HeaderText="Duração" SortExpression="Duração" />
                    <asp:BoundField DataField="Data" HeaderText="Data" SortExpression="Data" />
                    <asp:TemplateField HeaderText="Acessar">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server"><img src="../../imagens/doctor-icon.png" style="width: 50px"></img></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
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
            <asp:SqlDataSource ID="SqlAgenda" runat="server" ConnectionString="<%$ ConnectionStrings:PP3ConexaoBD %>" SelectCommand="select c.idConsulta as ID, p.nome as Nome, c.duracao as Duração, c.dataHora as Data from Medico as m, Consulta as c, paciente as p where p.idPaciente = c.idPaciente and c.idMedico = m.idMedico and m.nome = @nomeMedico and statusConsulta = 'PENDENTE'">
                <SelectParameters>
                    <asp:SessionParameter Name="nomeMedico" SessionField="username" />
                </SelectParameters>
            </asp:SqlDataSource>
                 </center>
        </div>
      </div>
    </div>
  </section>
    <br />
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

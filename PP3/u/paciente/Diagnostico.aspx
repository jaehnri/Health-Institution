<%@ Page Title="" Language="C#" MasterPageFile="~/u/paciente/Paciente.Master" AutoEventWireup="true" CodeBehind="Diagnostico.aspx.cs" Inherits="PP3.u.paciente.Diagnostico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="mb-5">
    <div class="container">
      <div class="row">
        <div class="col-md-6 mb-5">
          <h1 class="display-4">Contate-nos</h1>
          <p class="lead text-secondary">Precisa de ajuda? <a href="" target="_blank">Fale conosco já!</a></p>

        </div>
      </div>
    </div>
  </section>
  

  <section class="probootstrap-services">
    <div class="container">
      <div class="row no-gutters">
        <div class="col-md-3 pb-5 probootstrap-aside-stretch-left probootstrap-inside">
          <div class="mb-3 pt-5">
            <h2 class="h6">Contato</h2>
            <ul class="list-unstyled probootstrap-light mb-4">
              <li class="active"><a href="#">Telefone</a></li>
              <li><a href="#">(19) 3210-9876</a></li>

              <li class="active"><a href="#">E-mail</a></li>
              <li><a href="#">littleheadfilms@gmail.com</a></li>

              <li class="active"><a href="#">Endereço</a></li>
              <li><a href="#">R. Jorge de Figueiredo Corrêa, 735 - Chácara Primavera, Campinas </a></li>

            </ul>
          </div>
        </div>
        <div class="col-md-9 pl-md-5 pb-5 pl-0 probootstrap-inside">
          <h1 class="mt-4 mb-4">Resultados das suas Consultas:</h1>
          <div class="row">
            <div class="col-md-12">
              <div method="post" class="probootstrap-form">
                  <div class="form-group">
                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlAgenda" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" DataKeyNames="ID" ShowHeaderWhenEmpty="True" Width="900px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="Medico" HeaderText="Medico" SortExpression="Medico" />
                    <asp:BoundField DataField="Sintomas" HeaderText="Sintomas" SortExpression="Sintomas" />
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
            <asp:SqlDataSource ID="SqlAgenda" runat="server" ConnectionString="<%$ ConnectionStrings:PP3ConexaoBD %>" SelectCommand="select c.idConsulta as ID, m.nome as Medico, c.sintomas as Sintomas, c.exames as Exames, c. medicacoes as Medicações, c.observacoes as Observações from consulta as c, paciente as p, medico as m where m.idMedico = c.idMedico and c.idPaciente = p.idPaciente and p.nome = @nomePaciente and c.statusConsulta != 'PENDENTE' and c.statusConsulta != 'SOLICITACAO' and c.statusConsulta != 'CANCELADA'">
                <SelectParameters>
                    <asp:SessionParameter Name="nomePaciente" SessionField="username" />
                </SelectParameters>
            </asp:SqlDataSource>
                  </div>
                  <br />
                  <h1 class="mt-4 mb-4">
                      <asp:Label ID="lblSolicitar" runat="server" CssClass="mt-4 mb-4" Text="Solicitar uma nova Consulta"></asp:Label>
                  </h1>
                 <div class="form-group">
                   <asp:textbox runat="server" class="form-control" id="txt_Exame" type="text" placeholder="Algum exame foi feito?"></asp:textbox>
                </div>
                  <div class="form-group">
                   <asp:textbox runat="server" class="form-control" id="txt_Medicacao" type="text" placeholder="Alguma medicação está sendo/foi tomada?"></asp:textbox>
                </div>
                <div class="form-group">
                  <asp:textbox runat="server" class="form-control" id="txt_Sintomas" type="text" placeholder="Digite seus sintomas"></asp:textbox>
                </div>
                <div class="form-group">
                  <asp:textbox runat="server" class="form-control" id="txt_Observacoes" TextMode="MultiLine" Rows="9" type="text" placeholder="Digite suas observações..."></asp:textbox>
                </div>
                <div class="form-group">
                  
                    <asp:Button ID="btnSolicitar" CssClass="btn btn-primary btn-block" runat="server" Text="Solicitar Consulta" OnClick="btnSolicitar_Click" />
                  
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  

  <section class="probootstrap-subscribe">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-12">
          <h2 class="h1 text-white">Inscreva-se já</h2>
          <p class="lead text-white">Não perca mais nenhuma novidade do Health Institution.</p>
        </div>
      </div>
      <form action="#" method="post">
        <div class="row">
          <div class="col-md-4">
            <input type="text" class="form-control" placeholder="Name">    
          </div>
          <div class="col-md-4 mb-md-0 mb-3">
            <input type="text" class="form-control" placeholder="Email">
          </div>
          <div class="col-md-4">
            <input type="submit" value="Inscrever-se" class="btn btn-primary btn-block">
          </div>
        
        </div>
      </form>
    </div>
  </section>

</asp:Content>

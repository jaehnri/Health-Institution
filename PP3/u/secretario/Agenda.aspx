 <%@ Page Title="" Language="C#" MasterPageFile="~/u/secretario/secretario.Master" AutoEventWireup="true" CodeBehind="Agenda.aspx.cs" Inherits="PP3.u.secretario.Agenda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="../../js/jquery.min.js"></script>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <!-- Button trigger modal -->
    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
    <ContentTemplate>
   <section class="probootstrap-section overlay bg-image" style="background-image: url(../../imagens/consulta3.jpg)">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2 class="text-white display-4">Agendar Novas Consultas</h2>
          <p class="text-white mb-5 lead"></p>
          <div class="row justify-content-center mb-5">
            <div class="col-md-4">
                <asp:Button ID="BtnMarcar" runat="server" Text="Marcar Consulta" CssClass="btn btn-secondary btn-block BtnMarcar" data-toggle="modal" data-target="#exampleModal"/>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section> 
    </ContentTemplate>
    </asp:UpdatePanel>

    <script>
        function BtnMarcarClick() {
            $('.BtnMarcar').click()
        }
    </script>
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    <section class="probootstrap-blog-appointment">
    <div class="container">
      <div class="row no-gutters">
        <div class="col-md-6 pr-md-5 pr-0 pt-md-5 pt-0 pb-md-5 pb-0">
          <h2 class="h1 mb-4 text-white">Consultas de:</h2><asp:DropDownList ID="ddl_MedicoAgenda" runat="server" DataSourceID="SqlMedicos" DataTextField="nome" DataValueField="idMedico" OnSelectedIndexChanged="ddl_Medico_SelectedIndexChanged" AutoPostBack="True" OnTextChanged="ddl_Medico_TextChanged" ></asp:DropDownList>
            <br />
                <asp:SqlDataSource ID="SqlAgenda" runat="server" ConnectionString="<%$ ConnectionStrings:PP3ConexaoBD %>" SelectCommand="exec agenda @idMedico">
                    <SelectParameters>
                      <asp:ControlParameter ControlID="ddl_MedicoAgenda" Name="idMedico" PropertyName="SelectedValue" />
                     </SelectParameters>
                </asp:SqlDataSource>
   
    
   
   
    <asp:SqlDataSource ID="SqlConsulta" runat="server"></asp:SqlDataSource>
    <br/>
    <asp:SqlDataSource ID="SqlMedicos" runat="server" ConnectionString="<%$ ConnectionStrings:PP3ConexaoBD %>" SelectCommand="SELECT [idMedico], [nome] FROM [Medico]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlAgenda" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" ShowHeaderWhenEmpty="True" DataKeyNames="ID">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="DataHora" HeaderText="DataHora" SortExpression="DataHora" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            <asp:TemplateField HeaderText="Cancelar">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("ID", "agenda.aspx?IdCancelar={0}") %>'><img src="../../imagens/cancel-icon.png" style="width: 50px"></img></asp:HyperLink>
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
    <asp:SqlDataSource ID="SqlPacientes" runat="server" ConnectionString="<%$ ConnectionStrings:PP3ConexaoBD %>" SelectCommand="SELECT [idPaciente], [nome] FROM [Paciente]" ></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlExames" runat="server" ConnectionString="<%$ ConnectionStrings:PP3ConexaoBD %>" SelectCommand="Select e.nome, e.idExame from Exame as e , Medico as m where e.idEspecialidade = m.idEspecialidade and m.idMedico = @idMedico">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddl_MedicoConsulta" DefaultValue="2" Name="idMedico" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
          <p><a href="#" class="arrow-link">View All <i class="icon-chevron-right"></i></a></p>
        </div>
        <div class="col-md-6 p-md-5 p-3 probootstrap-aside-stretch-right">
          <h2 class="h1 text-white">Consultas a reagendar</h2>
          <form action="#" class="probootstrap-form-appointment">
            <div class="form-group">
            </div>

             
             
            <div class="form-group">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlReagendar" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" DataKeyNames="ID">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="Paciente" HeaderText="Paciente" SortExpression="Paciente" />
                        <asp:BoundField DataField="Medico" HeaderText="Medico" SortExpression="Medico" />
                        <asp:TemplateField HeaderText="Reagendar">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("ID", "agenda.aspx?IdReagendar={0}") %>'><img src="../../imagens/reagendar-icon.png" style="width: 50px"></img></asp:HyperLink>
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
                <asp:SqlDataSource ID="SqlReagendar" runat="server" ConnectionString="<%$ ConnectionStrings:PP3ConexaoBD %>" SelectCommand="select c.idConsulta as ID, p.nome as Paciente, m.nome as Medico from consulta as c, paciente as p, medico as m where m.idMedico = c.idMedico and c.idPaciente = p.idPaciente and c.statusConsulta = 'REAGENDAR'"></asp:SqlDataSource>
            </div>
                

         
          </form>
        </div>
      </div>
    </div>
  </section>
         
  </ContentTemplate>
</asp:UpdatePanel>
     
<!-- Modal -->
  
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>  
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><asp:Label ID="lbl_Mensagem" runat="server" Text="Marcar Consulta"></asp:Label></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        
      <div class="modal-body">
       
          
          <div class="container">
            <center>          
            <div class="row">
                     Médico: 
                <div class="col-md-4 mb-md-0 mb-3">
                    
                  <asp:DropDownList ID="ddl_MedicoConsulta" runat="server" DataSourceID="SqlMedicos" DataTextField="nome" DataValueField="idMedico" Width="200px" AutoPostBack="True"></asp:DropDownList>
                    
                </div>
            </div>
            <br/>
            <div class="row">
                Paciente:  
                <div class="col-md-2 mb-md-0 mb-3">
                    <asp:DropDownList ID="ddl_Paciente" runat="server" DataSourceID="SqlPacientes" DataTextField="nome" DataValueField="idPaciente" Width="190px"></asp:DropDownList>         
                </div>
            </div>
          <br/>
                <div class="row">
                Hora:  
                <div class="col-md-2 mb-md-0 mb-3">
                   <asp:TextBox ID="txt_hora" runat="server" TextMode="Time"></asp:TextBox> 
                </div>
            </div>
          <br/>

            <div class="row">
                Duracao:  
                <div class="col-md-2 mb-md-0 mb-3">
                    <asp:DropDownList ID="ddl_duracao" runat="server">
                    <asp:ListItem Value="00:30">00:30</asp:ListItem>
                    <asp:ListItem>01:00</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br/>
         </center>
          
        
              
          
        <div class="row">
          Data:
            <div class="col-md-4 mb-md-0 mb-3">
        
            <asp:Calendar ID="cal_data" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" SelectedDate="2018-09-27" Width="220px">
                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <WeekendDayStyle BackColor="#CCCCFF" />
            </asp:Calendar>



            </div>
    </div>
              
          <br/>
          </div>

       

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
         <asp:button runat="server" text="Marcar" class="btn btn-secondary" type=" button" ID="btn_MarcarConsulta" OnClick="btn_MarcarConsulta_Click"/>
      </div>
    </div> 
    </ContentTemplate>
    </asp:UpdatePanel>
  </div>
</div>

    
    
 </asp:Content>


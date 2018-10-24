<%@ Page Title="" Language="C#" MasterPageFile="~/u/secretario/secretario.Master" AutoEventWireup="true" CodeBehind="Agenda.aspx.cs" Inherits="PP3.u.secretario.Agenda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

   
   
    <asp:DropDownList ID="ddl_MedicoAgenda" runat="server" DataSourceID="SqlMedicos" DataTextField="nome" DataValueField="idMedico" OnSelectedIndexChanged="ddl_Medico_SelectedIndexChanged" AutoPostBack="True" OnTextChanged="ddl_Medico_TextChanged" ></asp:DropDownList>
    <asp:SqlDataSource ID="SqlAgenda" runat="server" ConnectionString="<%$ ConnectionStrings:PP3ConexaoBD %>" SelectCommand="exec agenda @idMedico">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddl_MedicoAgenda" Name="idMedico" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
   
    
   
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:SqlDataSource ID="SqlConsulta" runat="server"></asp:SqlDataSource>
    <br/>
    <asp:SqlDataSource ID="SqlMedicos" runat="server" ConnectionString="<%$ ConnectionStrings:PP3ConexaoBD %>" SelectCommand="SELECT [idMedico], [nome] FROM [Medico]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlAgenda" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="DataHora" HeaderText="Hora" SortExpression="DataHora" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
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
    <br/>
    <br/>

    <!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Marcar Consulta</button>

   
             
     
<!-- Modal -->
    
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Marcar Consulta</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        
      <div class="modal-body">
       <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
          
          <div class="container">
            <center>
            <asp:Label ID="lbl_Mensagem" runat="server" Text="" visible=false></asp:Label>
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

        </ContentTemplate>
    </asp:UpdatePanel>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
         <asp:button runat="server" text="Marcar" class="btn btn-secondary" type=" button" ID="btn_MarcarConsulta" OnClick="btn_MarcarConsulta_Click"/>
      </div>
    </div>
  </div>
</div>
    
    
</asp:Content>


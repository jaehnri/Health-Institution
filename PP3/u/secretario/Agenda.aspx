<%@ Page Title="" Language="C#" MasterPageFile="~/u/secretario/secretario.Master" AutoEventWireup="true" CodeBehind="Agenda.aspx.cs" Inherits="PP3.u.secretario.Agenda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   
    <table style="width:100%;">
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
        <tr>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </table>
    
   
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:SqlDataSource ID="SqlConsulta" runat="server"></asp:SqlDataSource>
    <br/>
    <asp:DropDownList ID="ddl_Medico" runat="server" DataSourceID="SqlMedicos" DataTextField="nome" DataValueField="idMedico" ></asp:DropDownList>
    <asp:SqlDataSource ID="SqlMedicos" runat="server" ConnectionString="<%$ ConnectionStrings:PP3ConexaoBD %>" SelectCommand="SELECT [idMedico], [nome] FROM [Medico]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlPacientes" runat="server" ConnectionString="<%$ ConnectionStrings:PP3ConexaoBD %>" SelectCommand="SELECT [idPaciente], [nome] FROM [Paciente]"></asp:SqlDataSource>
    <br/>
    <br/>

    <!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Marcar Consulta
</button>

    
    
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
          <div class="container">
            <center>
            <div class="row">
                     Médico: 
                <div class="col-md-4 mb-md-0 mb-3">
                  <asp:DropDownList ID="ddl_MedicoConsulta" runat="server" DataSourceID="SqlMedicos" DataTextField="nome" DataValueField="idMedico" Width="200px"></asp:DropDownList>
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
         </center>
          
              
            
          
        <div class="row">
          Data:
            <div class="col-md-4 mb-md-0 mb-3">
          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
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
        </ContentTemplate>
    </asp:UpdatePanel>
            </div>
    </div>
              
          <br/>
          </div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-primary">Marcar</button>
      </div>
    </div>
  </div>
</div>
    
    
</asp:Content>


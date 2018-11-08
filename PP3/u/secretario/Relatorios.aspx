<%@ Page Title="" Language="C#" MasterPageFile="~/u/secretario/secretario.Master" AutoEventWireup="true" CodeBehind="Relatorios.aspx.cs" Inherits="PP3.u.secretario.Relatorios" %>


<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <section class="probootstrap-section overlay bg-image" style="background-image: url(../../imagens/doctor.jpg)">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2 class="text-white display-4">Ver Gráficos</h2>
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
          <h2 class="h1 mb-4 text-white">Pacientes por Médico</h2>
            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlGraficoPacientePorMedico">
    <Series>
        <asp:Series Name="Series1" XValueMember="Medico" YValueMembers="Pacientes" ChartType="Bar">
        </asp:Series>
    </Series>
    <ChartAreas>
        <asp:ChartArea Name="ChartArea1">
        </asp:ChartArea>
    </ChartAreas>
</asp:Chart>
            <br /><br />
            <br />
            <h2 class="h1 mb-4 text-white">Atendimento Diário por Especialidade</h2>


            <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlGraficoPizza" Palette="None" PaletteCustomColors="51, 51, 204; RoyalBlue; 0, 0, 102; 51, 51, 150; DeepSkyBlue">
        <Series>
            <asp:Series Name="Series1" ChartType="Pie" XValueMember="nome" YValueMembers="Column1">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
        </div>

        <div class="col-md-6 p-md-5 p-3 probootstrap-aside-stretch-right">
          <h2 class="h1 text-white"><asp:Label ID="lbl_Titulo" CssClass="h1 text-white" runat="server" Text="Consultas Mensais por Médico"></asp:Label></h2>          
          <form action="#" class="probootstrap-form-appointment">
            <div class="form-group">
                <asp:SqlDataSource ID="SqlGraficoPizza" runat="server" ConnectionString="<%$ ConnectionStrings:PP3ConexaoBD %>" SelectCommand="select count(idConsulta), e.nome from especialidade as e, consulta as c, medico as m where c.idMedico = m.idMedico AND m.idEspecialidade = e.idEspecialidade AND day(c.dataHora) = day(GETDATE()) group by e.nome"></asp:SqlDataSource>
    
    <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlGraficoMensalMedico">
        <Series>
            <asp:Series Name="Series1" XValueMember="nome" YValueMembers="Column1">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
            </div>
            <div class="form-group">
                <br /> <br />
                 <h2 class="h1 text-white"><asp:Label ID="Label1" CssClass="h1 text-white" runat="server" Text="Consultas Canceladas por Médico"></asp:Label></h2>
                <asp:Chart ID="Chart4" runat="server" DataSourceID="SqlConsultasCanceladas">
        <Series>
            <asp:Series Name="Series1" XValueMember="nome" YValueMembers="Column1">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
            </div>           
              <asp:SqlDataSource ID="SqlGraficoPacientePorMedico" runat="server" ConnectionString="<%$ ConnectionStrings:PP3ConexaoBD %>" SelectCommand="select m.nome as Medico, count(distinct idPaciente) as Pacientes from Consulta as c, Medico as m where m.idMedico = c.idMedico and c.statusConsulta != 'CANCELADA' group by m.nome"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlGraficoMensalMedico" runat="server" ConnectionString="<%$ ConnectionStrings:PP3ConexaoBD %>" SelectCommand="select count(idConsulta), m.nome from consulta as c, medico as m where c.idMedico = m.idMedico AND month(c.dataHora) = month(GETDATE()) group by m.nome"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlConsultasCanceladas" runat="server" ConnectionString="<%$ ConnectionStrings:PP3ConexaoBD %>" SelectCommand="select count(idConsulta), m.nome from consulta as c, medico as m where c.idMedico = m.idMedico AND month(c.dataHora) = month(GETDATE()) and c.statusConsulta = 'CANCELADA' group by m.nome"></asp:SqlDataSource>
          </form>
        </div>
      </div>
    </div>
  </section>
 </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/u/secretario/secretario.Master" AutoEventWireup="true" CodeBehind="Relatorios.aspx.cs" Inherits="PP3.u.secretario.Relatorios" %>


<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlGraficoPacientePorMedico" runat="server" ConnectionString="<%$ ConnectionStrings:PP3ConexaoBD %>" SelectCommand="select m.nome as Medico, count(distinct idPaciente) as Pacientes from Consulta as c, Medico as m where m.idMedico = c.idMedico and c.statusConsulta != 'CANCELADA' group by m.nome"></asp:SqlDataSource>

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

    <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlGraficoPizza">
        <Series>
            <asp:Series Name="Series1" ChartType="Pie" XValueMember="nome" YValueMembers="Column1">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>

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
    <asp:SqlDataSource ID="SqlGraficoMensalMedico" runat="server" ConnectionString="<%$ ConnectionStrings:PP3ConexaoBD %>" SelectCommand="select count(idConsulta), m.nome from consulta as c, medico as m where c.idMedico = m.idMedico AND month(c.dataHora) = month(GETDATE()) group by m.nome"></asp:SqlDataSource>
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
    <asp:SqlDataSource ID="SqlConsultasCanceladas" runat="server" ConnectionString="<%$ ConnectionStrings:PP3ConexaoBD %>" SelectCommand="select count(idConsulta), m.nome from consulta as c, medico as m where c.idMedico = m.idMedico AND month(c.dataHora) = month(GETDATE()) and c.statusConsulta = 'CANCELADA' group by m.nome"></asp:SqlDataSource>

</asp:Content>

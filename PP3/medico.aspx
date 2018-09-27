<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="medico.aspx.cs" Inherits="PP3.medico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
  <section class="mb-5">
    <div class="container">
      <div class="row">
        <div class="col-md-6 mb-5">
          <h1 class="display-4">Institucional</h1>
          <p class="lead text-secondary">Conheça mais sobre os departamentos <a href="" target="_blank">Health Institution </a></p>
        </div>
      </div>
    </div>
  </section>
  
  

  <section class="probootstrap-services">
    <div class="container">
      <div class="row no-gutters">
        <div class="col-md-3 pb-5 probootstrap-aside-stretch-left probootstrap-inside">
          <div class="mb-3 pt-5">
            <h2 class="h6">Departments</h2>
            <ul class="list-unstyled probootstrap-light mb-4">
              <li class="active"><a href="#">Cardiologia</a></li>
              <li><a href="LoginSelec.aspx">Acupuntura</a></li>
              <li><a href="LoginSelec.aspx">Quimioterapia</a></li>
              <li><a href="LoginSelec.aspx">Cirurgia Geral</a></li>
              <li><a href="LoginSelec.aspx">Dermatologia</a></li>
              <li><a href="LoginSelec.aspx">Endoscopia</a></li>
              <li><a href="LoginSelec.aspx">Geriatria</a></li>
              <li><a href="LoginSelec.aspx">Infectologia</a></li>
              <li><a href="LoginSelec.aspx">Medicina do Trabalho</a></li>
              <li><a href="LoginSelec.aspx">Otorrinolaringologia</a></li>
              <li><a href="LoginSelec.aspx">Psiquiatria</a></li>
              <li><a href="LoginSelec.aspx">Ortopedia e Traumatologia</a></li>
              <li><a href="LoginSelec.aspx">Radiologia </a></li>
              <li><a href="LoginSelec.aspx">Urologia</a></li>
                <li><a href="LoginSelec.aspx">Reumatologia</a></li>

            </ul>
          </div>
        </div>
        <div class="col-md-9 pl-md-5 pb-5 pl-0 probootstrap-inside">
          <h1 class="mt-4 mb-4">Sobre Nós</h1>

            <p> Oferecendo preços acessíveis, o Centro Médico No.01 de Campinas conta com as melhores tecnologias da área da saúde, que visam sempre o seu bem estar próprio. O sistema pioneiro de tratamentos personalizados, a praticidade do nosso sistema e a garantia da sua satisfação correspondem ao ponto mais forte do HI.</p>

            <p> Contando com os mais variados médicos, a dinamicidade e o atendimento imediato das Clínicas HI vão te surpreender.</p>
          <p>Confiança é o que define o relacionamento da Health Institution com seus clientes. Confiança fundamentada em uma história de sucesso que completa em 2019, 1 ano de liderança absoluta em saúde suplementar.

            Por meio do modelo cooperativista, o médico, como dono do negócio, assegura um atendimento humanizado e comprometido com a qualidade de vida e o bem-estar das pessoas.</p>

          <p>O Health Institution é uma das maiores operadoras de planos de saúde do Brasil. Fundado em 28 de agosto de 2018, o sistema de cooperativas médicas, que teve um faturamento de 100 milhões de reais em 2018, é líder no mercado privado nacional (30% do mercado doméstico de planos de saúde) e está presente em 68% do território brasileiro. É também considerado a maior cooperativa de saúde do mundo.

            São 128 cooperativas em todo o país (comparáveis a subsidiárias, mas geridas de maneira autônoma), controladas pelos 57  mil médicos cooperados, além de 34 cooperativas regionais, que fazem o meio de campo entre as subsidiárias e o Health Institution nacional. O sistema conta com 5 milhões de beneficiários, 258 hospitais credenciados e 114 hospitais próprios.</p>
          
        </div>
      </div>
    </div>
  </section>
  <section class="probootstrap-section overlay bg-image" style="background-image: url(imagens/consulta1.jpg)">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2 class="text-white display-4">Especialistas em Cuidado Familiar</h2>
            <br />
          <div class="row justify-content-center mb-5">
            <div class="col-md-4"><a href="LoginSelec.aspx"  class="btn btn-secondary btn-block">Marcar uma consulta <span class="icon-arrow-right"></span></a></div>

          </div>
        </div>
      </div>
    </div>
  </section>

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
          <h3 class="heading">Follow us</h3>
          <ul class="list-unstyled probootstrap-footer-links">
            <li><a href="https://twitter.com/jaohenrii">João Henri</a></li>
            <li><a href="https://twitter.com/NicholasPatapo1">Nicholas Patapoff</a></li>
            <li><a href="https://twitter.com/littleheadfilms">LH Films</a></li>

          </ul>
        </div>
      </div>
      <!-- END row -->

    </div>
  </footer>
</asp:Content>

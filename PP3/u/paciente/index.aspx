<%@ Page Title="" Language="C#" MasterPageFile="~/u/paciente/Paciente.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PP3.u.paciente.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="grd_consulta" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
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
    </br>
    <section class="probootstrap-features-1">
    <div class="container">
      <div class="row">
        <div class="col-md probootstrap-feature-item" style="background-image: url(../../imagens/crianca.jpeg);">
          <div class="probootstrap-feature-item-text">
            <span class="icon"><i class="flaticon-first-aid-kit display-4"></i></span>
            <h2>Pediatria <span>Terapia</span></h2>
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
        <div class="col-md probootstrap-feature-item" style="background-image: url(../../imagens/médica.jpg);">
          <div class="probootstrap-feature-item-text">
            <span class="icon"><i class="flaticon-gym-control-of-exercises-with-a-list-on-a-clipboard-and-heart-beats display-4"></i></span>
            
            <h2>Psiquiatria <span>Terapia</span></h2>
          </div>
        </div> 
      </div>
    </div>
  </section>

    <section class="probootstrap-services">
    <div class="container">
      <div class="row no-gutters">
        <div class="col-md-3 probootstrap-aside-stretch-left">
          <div class="mb-3">
            <h2 class="h6">Sessões</h2>
            <ul class="list-unstyled probootstrap-light mb-4">
              <li><a href="index.aspx">Home</a></li>
              <li><a href="medico.aspx">Médico</a></li>
              <li><a href="paciente.aspx">Paciente</a></li>
              <li><a href="secretaria.aspx">Secretaria</a></li>
              <li><a href="Login.aspx">Entrar</a></li>
            </ul>
            <p><a href="#" class="arrow-link text-white">HEALTH INSTITUTION  <i class="icon-chevron-right"></i></a></p>
          </div>
        </div>
        <div class="col-md-9 pl-md-5 pl-0">
          <div class="row mb-5">
              
              <div class="col-lg-4 col-md-6">
                <div class="media d-block mb-4 text-left probootstrap-media">
                  <div class="probootstrap-icon mb-3"><span class="flaticon-price-tag display-4"></span></div>
                  <div class="media-body">
                    <h3 class="h5 mt-0 text-secondary">Preço Acessível</h3>
                    <p>Oferecemos preços justos, com planos que cabem no seu orçamento.</p>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-6">
                <div class="media d-block mb-4 text-left probootstrap-media">
                  <div class="probootstrap-icon mb-3"><span class="flaticon-shield-with-cross display-4"></span></div>
                  <div class="media-body">
                    <h3 class="h5 mt-0 text-secondary">Qualidade &amp; Segurança</h3>
                    <p>O Centro Médico No.01 de Campinas.</p>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-6">
                <div class="media d-block mb-4 text-left probootstrap-media">
                  <div class="probootstrap-icon mb-3"><span class="flaticon-first-aid-kit display-4"></span></div>
                  <div class="media-body">
                    <h3 class="h5 mt-0 text-secondary">Serviço Imediato</h3>
                    <p>Não entre em filas, entre no Health Institution.</p>
                  </div>
                </div>
              </div>

              <div class="col-lg-4 col-md-6">
                <div class="media d-block mb-4 text-left probootstrap-media">
                  <div class="probootstrap-icon mb-3"><span class="flaticon-microscope display-4"></span></div>
                  <div class="media-body">
                    <h3 class="h5 mt-0 text-secondary">Equipamentos de Precisão</h3>
                    <p>As tecnologias mais recentes e atualizadas em prol da sua    vida.</p>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-6">
                <div class="media d-block mb-4 text-left probootstrap-media">
                  <div class="probootstrap-icon mb-3"><span class="flaticon-gym-control-of-exercises-with-a-list-on-a-clipboard-and-heart-beats display-4"></span></div>
                  <div class="media-body">
                    <h3 class="h5 mt-0 text-secondary">Tratamento Personalizado</h3>
                    <p>Tratamentos de acordo com você e do jeito que você quiser!</p>
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-6">
                <div class="media d-block mb-4 text-left probootstrap-media">
                  <div class="probootstrap-icon mb-3"><span class="flaticon-doctor display-4"></span></div>
                  <div class="media-body">
                    <h3 class="h5 mt-0 text-secondary">Experiência que Conta</h3>
                    <p>Atendemos mais de 5000 pacientes anualmente!</p>
                  </div>
                </div>
              </div>
            </div>
        </div>
      </div>
    </div>
  
  </section>
    <div class="container">
      <div class="row no-gutters">
        <div class="col-lg-3 col-md-3 col-sm-6 col-6 prbootstrap-team">
          <img src="../../imagens/Hydrangeas.jpg" class="img-fluid">
          <div class="probootstrap-person-text">
            <span class="title">Pediatra</span>
            <span class="name">Dra. Paula Ghiro
            </span>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-6 prbootstrap-team">
          <img src="../../imagens/Jellyfish.jpg" class="img-fluid">
          <div class="probootstrap-person-text">
            <span class="title">Neurocirurgião </span>
            <span class="name">Dr. João Henri</span>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-6 prbootstrap-team">
          <img src="../../imagens/Koala.jpg"  class="img-fluid">
          <div class="probootstrap-person-text">
            <span class="title">Podologia</span>
            <span class="name">Dr. Nicholas Patapoff</span>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-6 prbootstrap-team">
          <img src="../../imagens/Penguins.jpg" class="img-fluid">
          <div class="probootstrap-person-text">
            <span class="title">Enfermeira</span>
            <span class="name">Dra. Lavínia Corat</span>
          </div>
        </div>
      </div>
    </div>

</asp:Content>

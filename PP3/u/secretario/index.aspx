<%@ Page Title="" Language="C#" MasterPageFile="~/u/secretario/secretario.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PP3.u.secretario.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="probootstrap-section overlay bg-image" style="background-image: url(../../imagens/wallpaper.jpg)">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2 class="text-white display-4">Especialistas em Cuidado Familiar</h2>
          <p class="text-white mb-5 lead"></p>
          <div class="row justify-content-center mb-5">
            <div class="col-md-4"><a href="agenda.aspx" class="btn btn-secondary btn-block">Agendar <span class="icon-arrow-right"></span></a></div>
          </div>
        </div>
      </div>
    </div>
  </section>



  <section class="probootstrap-blog-appointment">
    <div class="container">
      <div class="row no-gutters">
        <div class="col-md-6 pr-md-5 pr-0 pt-md-5 pt-0 pb-md-5 pb-0">
          <h2 class="h1 mb-4 text-white">Recent Blog</h2>
          <ul class="probootstrap-blog-list list-unstyled">
            <li>
              <h2><span class="date">November 15, 2017</span><a href="#">The practice of medicine is a lot like parenting </a></h2>
            </li>
            <li>
              <h2><span class="date">November 15, 2017</span><a href="#">Physicians: Want to overcome burnout? Start studying business. </a></h2>
            </li>
            <li>
              <h2><span class="date">November 15, 2017</span><a href="#">Want a simple and easy-to-use EMR? Well, you can have it for free. </a></h2>
            </li>
          </ul>
          <p><a href="#" class="arrow-link">View All  <i class="icon-chevron-right"></i></a></p>
        </div>
        <div class="col-md-6 p-md-5 p-3 probootstrap-aside-stretch-right">
          <h2 class="h1 text-white">Make an Appointment</h2>
          <form action="#" class="probootstrap-form-appointment">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Seu Nome">
            </div>
            <div class="form-group">
              <input type="email" class="form-control" placeholder="Seu Email">
            </div>
            <div class="form-group">
              <span class="icon"><i class="icon-calendar"></i></span>
              <input type="text" id="probootstrap-date" class="form-control" placeholder="Date">
            </div>
            <div class="form-group">
              <textarea name="" class="form-control" id="" cols="30" rows="10" placeholder="Write your message"></textarea>
            </div>
            <div class="form-group">
              <input type="submit" value="Submit Form" class="btn btn-secondary">
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>
</asp:Content>

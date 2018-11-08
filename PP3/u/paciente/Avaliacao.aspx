<%@ Page Title="" Language="C#" MasterPageFile="~/u/paciente/Paciente.Master" AutoEventWireup="true" CodeBehind="Avaliacao.aspx.cs" Inherits="PP3.u.paciente.Avaliacao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <link rel="stylesheet" href="../../css/bars-movie.css">
    <link rel="stylesheet" href="../../css/normalize.min.css">
    <link rel="stylesheet" href="../../css/main.css">
    <link rel="stylesheet" href="../../css/examples.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

<div class="col">
            <div class="box box-blue box-example-movie">
              <div class="box-header">Movie Rating</div>
              <div class="box-body">
                <div class="br-wrapper br-theme-bars-movie"><select id="example-movie" name="rating"  style="display: none;">
                  <option value="Bad"><asp:Label ID="Label1" runat="server" Text="Ruim"></asp:Label></option>
                  <option value="Mediocre">Mediocre</option>
                  <option value="Good" selected="selected">Good</option>
                  <option value="Awesome">Awesome</option>
                </select>
                   <div class="br-widget">
                       <a href="#" data-rating-value="Bad" data-rating-text="Bad" class="br-selected"></a>
                       <a href="#" data-rating-value="Mediocre" data-rating-text="Mediocre" class="br-selected br-current"></a>
                       <a href="#" data-rating-value="Good" data-rating-text="Good" class=""></a><a href="#" data-rating-value="Awesome" data-rating-text="Awesome" class=""></a>
                       <div class="br-current-rating"></div></div></div>
              </div>
            </div>
          </div>

    <script src="../../js/jquery.min.js"></script>
<script src="../../js/jquery.barrating.min.js"></script>
    <script>
        function ratingEnable() {
            $('#example-movie').barrating({
                theme: 'bars-movie'
            });
        }

        function ratingDisable() {
            $('select').barrating('destroy');
        }

        $('.rating-enable').click(function (event) {
            event.preventDefault();

            ratingEnable();

            $(this).addClass('deactivated');
            $('.rating-disable').removeClass('deactivated');
        });

        $('.rating-disable').click(function (event) {
            event.preventDefault();

            ratingDisable();

            $(this).addClass('deactivated');
            $('.rating-enable').removeClass('deactivated');
        });

        ratingEnable();
    </script>

</asp:Content>

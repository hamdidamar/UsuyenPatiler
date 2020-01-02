<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Iletisim.aspx.cs" Inherits="Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Üşüyen Patiler</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/modern-business.css" rel="stylesheet">

</head>

<body>


  <!-- Page Content -->
  <div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">İletişim
     
    </h1>

    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="index.html">Ana Sayfa</a>
      </li>
      <li class="breadcrumb-item active">İletişim</li>
    </ol>

    <!-- Content Row -->
    <div class="row">
      <!-- Map Column -->
      <div class="col-lg-8 mb-4">
        <!-- Embedded Google Map -->
        <iframe width="500px" height="400px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?hl=en&amp;ie=UTF8&amp;ll=38.500338,27.710036&amp;spn=56.506174,79.013672&amp;t=m&amp;z=17&amp;output=embed"></iframe>
      </div>
      <!-- Contact Details Column -->
      <div class="col-lg-4 mb-4">
        <h3>İletişim Bilgileri</h3>
        <p>
            <abbr title="Adres">Adres</abbr>: Turgutlu Sedat Özcan Yurdu A Blok
        </p>
        <p>
          <abbr title="Telefon">Telefon</abbr>: (539) 640-5475
        </p>
        <p>
          <abbr title="Email">Email</abbr>:  usuyenpatiler@outlook.com
        </p>
      </div>
    </div>
    <!-- /.row -->

    <!-- Contact Form -->
    <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
    <div class="row">
      <div class="col-lg-8 mb-4">
        <h3>Bize Mesaj Gönderin</h3>
        <form name="sentMessage" runat="server"  method="" id="contactForm" novalidate>
          <div class="control-group form-group">
            <div class="controls">
              <label>Ad Soyad:</label>
                <asp:TextBox ID="txtAd" type="text" class="form-control" required data-validation-required-message="Please enter your name." runat="server" Width="589px"></asp:TextBox>
              <p class="help-block"></p>
            </div>
          </div>
          <div class="control-group form-group">
            <div class="controls">
              <label>Telefon:</label>
                <asp:TextBox ID="txtTelefon" type="tel" class="form-control" required data-validation-required-message="Please enter your phone number." runat="server" Width="589px"></asp:TextBox>
            </div>
          </div>
          <div class="control-group form-group">
            <div class="controls">
              <label>Email:</label>
                <asp:TextBox ID="txtEmail" type="email" class="form-control" required data-validation-required-message="Please enter your email address." runat="server" Width="589px"></asp:TextBox>
            </div>
          </div>
          <div class="control-group form-group">
            <div class="controls">
              <label style="width: 57px">Mesaj:</label>&nbsp;</div>
          </div>
          <div id="success">     
                <asp:TextBox ID="txtYorum" rows="10" cols="100" required data-validation-required-message="Please enter your message" maxlength="999" style="resize:none; margin-top: 53;" runat="server" Height="97px" Width="589px" TextMode="MultiLine"></asp:TextBox>
            </div>
          <!-- For success/fail messages -->
              <td class="auto-style11"></td>
            <br />
            <asp:Button ID="btnGonder" runat="server" type="submit" Text="Gönder" CssClass="btn btn-primary" onclick="btnGonder_Click" BackColor="#009933" BorderColor="#009933" ForeColor="White" />
            <br />
            <br />
            <br />
        </form>
      </div>

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->


  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Contact form JavaScript -->
  <!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
  <script src="js/jqBootstrapValidation.js"></script>
  <script src="js/contact_me.js"></script>

</body>

</html>

</asp:Content>


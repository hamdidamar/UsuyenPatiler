<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Giris.aspx.cs" Inherits="Giris" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
    
<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
   <!--Made with love by Mutiullah Samim -->
   
	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>Giriş Yap</h3>
			</div>
			<div class="card-body">
				<form name="girisform" onsubmit="return validform()" runat="server" method="">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
                        <asp:TextBox ID="kullaniciad" type="text"  placeholder="Kullanıcı Adı " class="form-control" runat="server"></asp:TextBox>
						
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<asp:TextBox ID="sifre" type="password"  placeholder="Şifre " class="form-control" runat="server"></asp:TextBox>
					</div>
					
					<div class="form-group">
                        <asp:Button ID="btngirisyap" runat="server" Text="Giriş Yap"  CssClass="btn btn-primary" OnClick="btngirisyap_Click" />
                        <br />
					    <asp:Label ID="lbl_hata" runat="server" Text="   "></asp:Label>

					</div>
				</form>
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					Hesabınız Yok Mu ? --><a href="KayitOl.aspx"> Kayıt Ol</a>
				</div>
				
			</div>
		</div>
	</div>
</div>
</body>
</html>






</asp:Content>


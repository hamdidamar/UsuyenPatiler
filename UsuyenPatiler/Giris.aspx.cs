using BusinessLogicLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Giris : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btngirisyap_Click(object sender, EventArgs e)
    {
        UyeBLL uyeBLL = new UyeBLL();
        if(uyeBLL.GirisKontrol(kullaniciad.Text, sifre.Text))
        {

            lbl_hata.Text = "Giriş Başarılı";
            Response.Redirect("Ekle.aspx");
        }

        else
        {
            lbl_hata.Text = "Kullanıcı adı veya şifre hatalı";
        }
    }
}
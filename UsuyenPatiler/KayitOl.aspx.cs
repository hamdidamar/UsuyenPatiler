using BusinessLogicLayer;
using EntityLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class KayitOl : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btnkayitol_Click(object sender, EventArgs e)
    {
        UyeBLL bll = new UyeBLL();
        UyeEntity entity = new UyeEntity();
        entity.Ad = ad.Text;
        entity.Soyad = soyad.Text;
        entity.Email = email.Text;
        entity.KullaniciAd = kullaniciad.Text;
        entity.Sifre = sifre.Text;
        entity.Telefon = telefon.Text;
        bll.UyeEkle(entity);
        Response.Redirect("Giris.aspx");
    }
}
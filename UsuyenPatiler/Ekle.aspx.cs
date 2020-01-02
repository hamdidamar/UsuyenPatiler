
using DataAccessLayer;
using EntityLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ekle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        girenkullanici.Text = GirisBilgiler.Ad + "  " + GirisBilgiler.Soyad;
    }
    HaritaDAL haritaDal = new HaritaDAL();
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (txtAd.Text != "" && txtTur.Text != "" && txtYiyecekDurum.Text != "" && txt_Aciklama.Text != "" && txt_Adres.Text != "" )
        {
            HaritaEntity harita = new HaritaEntity();
            HayvanEntity hayvan = new HayvanEntity();

            HayvanDAL hayvanDAL = new HayvanDAL();
            harita.X = txtLat.Text;
            harita.Y = txtLng.Text;
            harita.Aciklama = txt_Aciklama.Text;
            harita.Adres = txt_Adres.Text;
            hayvan.Adi = txtAd.Text;
            hayvan.Turu = txtTur.Text;
            hayvan.YiyecekDurum = txtYiyecekDurum.Text;
            hayvan.KonumID = haritaDal.KonumIdGetir(harita);
            hayvanDAL.HayvanEkle(hayvan);
        }

        else
        {
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Uyarı", "<script>alert('Lütfen bütün bilgileri doldurun!');</script>");
        }
    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        Response.Redirect("HayvanListesi.aspx");
    }
}
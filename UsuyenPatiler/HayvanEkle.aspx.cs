using DataAccessLayer;
using EntityLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HayvanEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        girenkullanici.Text = GirisBilgiler.Ad + "  " + GirisBilgiler.Soyad;
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        HaritaEntity harita = new HaritaEntity();
        HayvanEntity hayvan = new HayvanEntity();
        HaritaDAL haritaDal = new HaritaDAL();
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
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;
using EntityLayer;

public partial class Iletisim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGonder_Click(object sender, EventArgs e)
    {
        if (txtAd.Text != "" && txtEmail.Text != "" && txtTelefon.Text != "" && txtYorum.Text != "")
        {
            YorumBLL yorum = new YorumBLL();
            YorumEntity entity = new YorumEntity();
            entity.AdSoyad = txtAd.Text;
            entity.Email = txtEmail.Text;
            entity.Telefon = txtTelefon.Text;
            entity.yorum = txtYorum.Text;

            yorum.YorumEkle(entity);
            txtAd.Text = "";
            txtEmail.Text = "";
            txtTelefon.Text = "";
            txtYorum.Text = "";
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Başarılı", "<script>alert('Yorumunuz başarı ile eklendi');</script>");
        }
        else
        {
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Uyarı", "<script>alert('Eksik ya da hatalı bilgi girdiniz!');</script>");
        }


    }
}
using BusinessLogicLayer;
using DataAccessLayer;
using EntityLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HayvanGuncelle : System.Web.UI.Page
{
    HayvanDAL dal = new HayvanDAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        int HayvanID = Convert.ToInt32(Request.QueryString["ID"].ToString());
        ID.Text = HayvanID.ToString();
        ID.Enabled = false;

        if (Page.IsPostBack == false)
        {
           
            List<HayvanEntity> Hayvandetay = dal.HayvanGetir(HayvanID);
            Adi.Text = Hayvandetay[0].Adi.ToString();
            Turu.Text = Hayvandetay[0].Turu.ToString();
            YiyecekDurum.Text = Hayvandetay[0].YiyecekDurum.ToString();
            KonumID.Text = Hayvandetay[0].KonumID.ToString();
        }
    }

    protected void Btn_HayvanGuncelle_Click(object sender, EventArgs e)
    {
        HayvanEntity hayvan = new HayvanEntity();
        hayvan.Adi = Adi.Text;
        hayvan.Turu = Turu.Text;
        hayvan.YiyecekDurum = YiyecekDurum.Text;
        hayvan.KonumID = int.Parse(KonumID.Text);
        hayvan.ID = int.Parse(ID.Text);

        dal.HayvanGuncelle(hayvan);
        Response.Redirect("HayvanListesi.aspx");
    }
}
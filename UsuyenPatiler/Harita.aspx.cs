using DataAccessLayer;
using EntityLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Harita : System.Web.UI.Page
{
    HaritaDAL haritadal = new HaritaDAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        List<HaritaEntity> konumlar = haritadal.HamdileriGetir();
        rptMarkers.DataSource = konumlar;
        rptMarkers.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
}
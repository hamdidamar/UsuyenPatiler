using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;
using EntityLayer;
using BusinessLogicLayer;

public partial class HayvanListesi : System.Web.UI.Page
{
    HayvanBLL bll = new HayvanBLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        List<HayvanEntity> hayvanlar = bll.Hayvanlar();
        rptrHayvanlar.DataSource = hayvanlar;
        rptrHayvanlar.DataBind();
    }
}
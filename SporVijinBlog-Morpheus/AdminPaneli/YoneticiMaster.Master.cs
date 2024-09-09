using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeriErisimKatmani;

namespace SporVijinBlog_Morpheus.AdminPaneli
{
    public partial class YoneticiMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["GirisYapanYonetici"] != null)
            {
                Yonetici yonetici = (Yonetici)Session["GirisYapanYonetici"];
                lbl_girisAdi.Text = yonetici.KullaniciAdi + "(" + yonetici.YoneticiTur + ")";
            }
            else
            {
                Response.Redirect("AdminGiris.aspx");
            }
        }

        protected void lbtn_guvenliCikis_Click(object sender, EventArgs e)
        {
            Session["GirisYapanYonetici"] = null;
            Response.Redirect("AdminGiris.aspx");
        }
    }
}
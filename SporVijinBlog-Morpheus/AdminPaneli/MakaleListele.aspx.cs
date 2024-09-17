using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeriErisimKatmani;

namespace SporVijinBlog_Morpheus.AdminPaneli
{
    public partial class MakaleListele : System.Web.UI.Page
    {
        VeriModeli vm = new VeriModeli();
        protected void Page_Load(object sender, EventArgs e)
        {
            lv_makaleler.DataSource = vm.MakaleListele();
            lv_makaleler.DataBind();
        }

        protected void lv_makaleler_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "durum")
            {
                vm.MakaleDurumDegistir(Convert.ToInt32(e.CommandArgument));
            }
            if (e.CommandName == "sil")
            {
                vm.MakaleSil(Convert.ToInt32(e.CommandArgument));
            }
            lv_makaleler.DataSource = vm.MakaleListele();
            lv_makaleler.DataBind();
        }
    }
}
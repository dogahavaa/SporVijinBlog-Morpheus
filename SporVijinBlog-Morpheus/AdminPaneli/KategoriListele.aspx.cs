using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeriErisimKatmani;

namespace SporVijinBlog_Morpheus.AdminPaneli
{
    public partial class KategoriListele : System.Web.UI.Page
    {
        VeriModeli vm = new VeriModeli();
        protected void Page_Load(object sender, EventArgs e)
        {
            lv_kategoriler.DataSource = vm.KategoriListele(false);
            lv_kategoriler.DataBind();
        }

        protected void lv_kategoriler_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "durum")
            {
                vm.KategoriDurumDegistir(id);
            }

            if (e.CommandName == "sil")
            {
                vm.KategoriSilSoftDelete(id);
            }

            lv_kategoriler.DataSource = vm.KategoriListele(false);
            lv_kategoriler.DataBind();
        }

    }
}
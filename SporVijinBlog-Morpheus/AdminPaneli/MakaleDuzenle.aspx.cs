using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeriErisimKatmani;

namespace SporVijinBlog_Morpheus.AdminPaneli
{
    public partial class MakaleDuzenle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            VeriModeli vm = new VeriModeli();
            if (!IsPostBack)
            {
                if (Request.QueryString.Count > 0)
                {
                    ddl_kategori.DataSource = vm.MakaleListele();
                    ddl_kategori.DataBind();

                    Makale makale = vm.MakaleGetir(int id);
                }
            }
        }

        protected void lbtn_makaleDuzenle_Click(object sender, EventArgs e)
        {

        }
    }
}
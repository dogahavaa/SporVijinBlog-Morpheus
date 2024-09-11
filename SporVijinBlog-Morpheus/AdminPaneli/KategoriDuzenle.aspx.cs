using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeriErisimKatmani;

namespace SporVijinBlog_Morpheus.AdminPaneli
{
	public partial class KategoriDuzenle : System.Web.UI.Page
	{
        VeriModeli vm = new VeriModeli();
        
        protected void Page_Load(object sender, EventArgs e)
		{
            if (Request.QueryString.Count > 0)
            {
                if (!IsPostBack)
                {
                    int id = Convert.ToInt32(Request.QueryString["kategoriId"]);
                    Kategori kategori = new Kategori();
                    kategori = vm.KategoriGetir(id);
                    if (kategori !=null)
                    {
                        tb_isim.Text = kategori.Isim;
                        tb_aciklama.Text = kategori.Aciklama;
                        cb_durum.Checked = kategori.Durum;
                    }
                    else
                    {
                        Response.Redirect("KategoriListele.aspx");
                    }
                }
            }
            else
            {
                Response.Redirect("KategoriListele.aspx");
            }
            
		}

        protected void lbtn_kategoriDuzenle_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["kategoriId"]);
            Kategori kat = vm.KategoriGetir(id);

            kat.Isim = tb_isim.Text;
            kat.Aciklama = tb_aciklama.Text;
            kat.Durum = cb_durum.Checked;
        
            if (vm.KategoriDuzenle(kat))
            {
                pnl_basarili.Visible = true;
                pnl_basarisiz.Visible = false;
            }
            else
            {
                pnl_basarili.Visible = false;
                pnl_basarisiz.Visible = true;
            }
            
        }
    }
}
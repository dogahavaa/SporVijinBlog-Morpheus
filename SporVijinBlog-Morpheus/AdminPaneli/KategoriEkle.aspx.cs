using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeriErisimKatmani;

namespace SporVijinBlog_Morpheus.AdminPaneli
{
    public partial class KategoriEkle : System.Web.UI.Page
    {
        VeriModeli vm = new VeriModeli();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtn_kategoriEkle_Click(object sender, EventArgs e)
        {
            Kategori kat = new Kategori();

            if (!string.IsNullOrEmpty(tb_isim.Text))
            {
                kat.Isim = tb_isim.Text;
                kat.Aciklama = tb_aciklama.Text;
                kat.Durum = cb_durum.Checked;
                if (vm.KategoriEkle(kat))
                {
                    pnl_basarisiz.Visible = false;
                    pnl_basarili.Visible = true;
                }
                else
                {
                    pnl_basarili.Visible = false;
                    pnl_basarisiz.Visible = true;
                }
            }
            else
            {
                pnl_basarili.Visible = false;
                pnl_basarisiz.Visible = true;
                lbl_basarisizMetin.Visible = true;
                lbl_basarisizMetin.Text = "Kategori adı boş bırakılamaz.";
            }
        }
    }
}
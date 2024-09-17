using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeriErisimKatmani;

namespace SporVijinBlog_Morpheus.AdminPaneli
{
    public partial class MakaleEkle : System.Web.UI.Page
    {
        VeriModeli vm = new VeriModeli();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddl_kategori.DataSource = vm.KategoriListele(false, true);
                ddl_kategori.DataBind();
            }
        }

        protected void lbtn_makaleEkle_Click(object sender, EventArgs e)
        {
            Makale mak = new Makale();
            if (tb_baslik.Text.Length > 3)
            {
                mak.Baslik = tb_baslik.Text;
                mak.KategoriID = Convert.ToInt32(ddl_kategori.SelectedItem.Value);
                Yonetici yonetici = (Yonetici)Session["GirisYapanYonetici"];
                mak.YazarID = yonetici.ID;
                mak.Ozet = tb_ozet.Text;
                mak.GoruntulemeSayi = 0;
                mak.Icerik = tb_aciklama.Text;
                mak.EklemeTarihi = DateTime.Now;
                mak.Durum = cb_durum.Checked;

                if (fu_kapakresim.HasFile) //Resim seçildi ise
                {
                    string isim = Guid.NewGuid().ToString();
                    string yol = fu_kapakresim.FileName;
                    FileInfo fi = new FileInfo(yol);
                    string uzanti = fi.Extension;
                    string tamIsim = isim + uzanti;
                    fu_kapakresim.SaveAs(Server.MapPath("../Resimler/MakaleResimleri/" + tamIsim));
                    mak.KapakResim = tamIsim;
                }
                else
                {
                    mak.KapakResim = "none.png";
                }
                if (vm.MakaleEkle(mak))
                {
                    pnl_basarisiz.Visible = false;
                    lbl_basarisizMetin.Visible = false;
                    pnl_basarili.Visible = true;
                }
                else
                {
                    pnl_basarisiz.Visible = true;
                    lbl_basarisizMetin.Visible = true;
                    lbl_basarisizMetin.Text = "Makale eklenirken bir hata oluştu.";
                    pnl_basarili.Visible = false;
                }
            }
            else
            {
                pnl_basarisiz.Visible = true;
                lbl_basarisizMetin.Visible = true;
                lbl_basarisizMetin.Text = "Lütfen bir başlık giriniz.";
                pnl_basarili.Visible = false;
            }
        }
    }
}


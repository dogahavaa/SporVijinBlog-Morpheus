using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VeriErisimKatmani;

namespace SporVijinBlog_Morpheus.AdminPaneli
{
    public partial class AdminGiris : System.Web.UI.Page
    {
        VeriModeli vm = new VeriModeli();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_giris_Click(object sender, EventArgs e)
        {
            Yonetici yonetici = new Yonetici();

            if (!string.IsNullOrEmpty(tb_mail.Text))
            {
                if (!string.IsNullOrEmpty(tb_sifre.Text))
                {
                    yonetici = vm.AdminGirisi(tb_mail.Text, tb_sifre.Text);
                    if (yonetici != null)
                    {
                        Session["GirisYapanYonetici"] = yonetici;
                        Response.Redirect("YoneticiDefault.aspx");
                    }
                    else
                    {
                        basarisizGiris.Visible = true;
                        hataMesaji.Text = "Kullanıcı Bulunamadı !";
                    }
                }
                else
                {
                    basarisizGiris.Visible = true;
                    hataMesaji.Text = "Şifre boş bırakılamaz !";
                }
            }
            else
            {
                basarisizGiris.Visible = true;
                hataMesaji.Text = "Mail alanı boş bırakılamaz !";
            }
        }
    }
}
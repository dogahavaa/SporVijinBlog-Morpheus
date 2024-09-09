using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VeriErisimKatmani
{
    public class VeriModeli
    {
        SqlConnection con;
        SqlCommand cmd;

        public VeriModeli()
        {
            con = new SqlConnection(baglantiYollari.baglantiYolu);
            cmd = con.CreateCommand();
        }

        public Yonetici AdminGirisi(string mail, string sifre)
        {
            try
            {
                cmd.CommandText = "SELECT COUNT(*) FROM Yoneticiler WHERE Mail=@mail AND Sifre=@sifre";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@mail", mail);
                cmd.Parameters.AddWithValue("@sifre", sifre);
                con.Open();
                int sonuc = Convert.ToInt32(cmd.ExecuteScalar());
                if (sonuc == 1)
                {
                    cmd.CommandText = "SELECT Y.ID, Y.YoneticiTurID, YT.Isim, Y.Isim, Y.Soyisim, Y.KullaniciAdi, Y.Mail, Y.Sifre, Y.Durum, Y.Silinmis FROM Yoneticiler as Y JOIN YoneticiTurleri AS YT ON YT.ID = Y.ID WHERE Mail=@mail AND Sifre=@sifre";
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@mail", mail);
                    cmd.Parameters.AddWithValue("@sifre", sifre);
                    SqlDataReader reader = cmd.ExecuteReader();
                    Yonetici yonetici = new Yonetici();
                    while (reader.Read())
                    {
                        yonetici.ID = reader.GetInt32(0);
                        yonetici.YoneticiTurID = reader.GetInt32(1);
                        yonetici.YoneticiTur = reader.GetString(2);
                        yonetici.Isim = reader.GetString(3);
                        yonetici.Soyisim = reader.GetString(4);
                        yonetici.KullaniciAdi = reader.GetString(5);
                        yonetici.Mail = reader.GetString(6);
                        yonetici.Sifre = reader.GetString(7);
                        yonetici.Durum = reader.GetBoolean(8);
                        yonetici.Silinmis = reader.GetBoolean(9);
                    }
                    return yonetici;
                }
                else
                {
                    return null;
                }
            }
            catch 
            {
                return null;
            }
            finally
            {
                con.Close();
            }
        }

    }
}

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminGiris.aspx.cs" Inherits="SporVijinBlog_Morpheus.AdminPaneli.AdminGiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
    <link href="CSS/GirisStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="frame">
            <div class="sol">
                <div class="baslik">
                    <label style="font-weight: 700; font-size: 18pt;">Spor Vijın</label><br />
                    <label>Yönetici Giriş Paneli</label>
                </div>
                <hr />
                <asp:Panel ID="basarisizGiris" runat="server" Visible="false" CssClass="basarisizGiris">
                    <asp:Label ID="hataMesaji" runat="server"></asp:Label>
                </asp:Panel>
                <div class="satir">
                    <label class="lblTextStyle">Mail</label><br />
                    <asp:TextBox ID="tb_mail" runat="server" CssClass="tbStyle" placeholder="mail@mail.com"></asp:TextBox>
                </div>
                <div class="satir" style="margin-top: 10px;">
                    <label class="lblTextStyle">Şifre</label><br />
                    <asp:TextBox ID="tb_sifre" runat="server" CssClass="tbStyle" placeholder="54a!****" TextMode="Password"></asp:TextBox>
                </div>
                <div class="satir">
                    <label style="font-size:9pt">Şifremi unuttum..</label>
                    <i class="fa-light fa-fish"></i>
                </div>
                <div class="satir">
                    <asp:LinkButton ID="btn_giris" runat="server" Text="Giriş Yap" CssClass="girisButon" OnClick="btn_giris_Click"></asp:LinkButton>
                </div>
            </div>
            <div class="sag">
                <h2 class="sagBaslik">Hoşgeldiniz</h2>
                <label>Bu alandan üye girişi yapılmamaktadır.</label>
                <br />
                <label style="margin-bottom:20px;">Üye girişi yapmak için</label>
                <br />
                <div style="margin-top:25px;">
                </div>
                <asp:LinkButton ID="lbtn_uyegiris" runat="server" CssClass="uyeGirisButon" Text="Üye Giriş"></asp:LinkButton>
            </div>
            <div style="clear: both"></div>
        </div>
    </form>
</body>
</html>

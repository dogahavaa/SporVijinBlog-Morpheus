<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/YoneticiMaster.Master" AutoEventWireup="true" CodeBehind="MakaleDuzenle.aspx.cs" Inherits="SporVijinBlog_Morpheus.AdminPaneli.MakaleDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Kategori Ekle</title>
    <link href="CSS/FormStyle.css" rel="stylesheet" />
    <script src="ckeditor/ckeditor.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="formTasiyici" style="width: 1100px">
        <div class="formBaslik">
            <div class="baslik">
                Makale Düzenle
            </div>
        </div>
        <div class="sol">

            <div class="formIcerik" style="min-height: 420px;">
                <div class="satir">
                    Başlık
                    <asp:TextBox ID="tb_baslik" runat="server" CssClass="tbStyle"></asp:TextBox>
                </div>
                <div class="satir">
                    Özet
                    <asp:TextBox ID="tb_ozet" runat="server" CssClass="tbStyle"></asp:TextBox>
                </div>
                <div class="satir">
                    Kategori<br />
                    <asp:DropDownList ID="ddl_kategori" runat="server" CssClass="tbStyle" Style="width: 99%" DataTextField="Isim" DataValueField="ID"></asp:DropDownList>
                </div>
                <div class="satir">
                    Kapak Resmi
                </div>
                <div class="satir" style="margin-bottom: 20px">
                    <asp:FileUpload ID="fu_kapakresim" runat="server" />
                </div>
                <div class="satir">
                    <asp:CheckBox ID="cb_durum" runat="server" />
                    Aktif
                </div>
                <div class="satir" style="margin-top: 20px; margin-bottom:20px;">
                    <asp:LinkButton ID="lbtn_makaleDuzenle" runat="server" Text="Makale Düzenle" CssClass="buton" OnClick="lbtn_makaleDuzenle_Click"></asp:LinkButton>
                </div>
                <asp:Panel ID="pnl_basarili" runat="server" Visible="false" CssClass="bilgiPaneli basarili">
                    Makale başarıyla düzenlenmiştir.
                </asp:Panel>
                <asp:Panel ID="pnl_basarisiz" runat="server" Visible="false" CssClass="bilgiPaneli basarisiz">
                    <asp:Label ID="lbl_basarisizMetin" runat="server"> Kategori eklenirken bir hata oluştu.</asp:Label>
                </asp:Panel>
            </div>
        </div>
        <div class="sag">
            <div class="formIcerik ckEditorH">

                <div class="satir">
                    İçerik
                    <asp:TextBox ID="tb_aciklama" runat="server" CssClass="tbStyle" TextMode="MultiLine"></asp:TextBox>
                    <script>CKEDITOR.replace('ContentPlaceHolder1_tb_aciklama');</script>

                </div>
            </div>
        </div>
        <div style="clear: both"></div>
    </div>
</asp:Content>
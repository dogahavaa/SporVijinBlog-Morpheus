<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/YoneticiMaster.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="SporVijinBlog_Morpheus.AdminPaneli.KategoriDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Kategori Düzenle</title>
    <link href="CSS/FormStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="formTasiyici" style="width:600px">
        <div class="formBaslik">
            <div class="baslik">
                Kategori Düzenle
            </div>
        </div>
        <div class="formIcerik">
            <asp:Panel ID="pnl_basarili" runat="server" Visible="false" CssClass="bilgiPaneli basarili">
                Kategori başarıyla düzenlenmiştir.
            </asp:Panel>
            <asp:Panel ID="pnl_basarisiz" runat="server" Visible="false" CssClass="bilgiPaneli basarisiz">
                <asp:Label ID="lbl_basarisizMetin" runat="server"> Kategori düzenlenirken bir hata oluştu.</asp:Label>
            </asp:Panel>
            <div class="satir">
                Kategori Adı
            </div>
            <div class="satir">
                <asp:TextBox ID="tb_isim" runat="server" CssClass="tbStyle"></asp:TextBox>
            </div>
            <div class="satir">
                Açıklama
            </div>
            <div class="satir">
                <asp:TextBox ID="tb_aciklama" runat="server" CssClass="tbStyle"></asp:TextBox>
            </div>
            <div class="satir">
                <asp:CheckBox ID="cb_durum" runat="server" />
                Aktif
            </div>
            <div class="satir">
                <asp:LinkButton ID="lbtn_kategoriDuzenle" runat="server" Text="Kategori Düzenle" CssClass="buton" OnClick="lbtn_kategoriDuzenle_Click"></asp:LinkButton>
            </div>
        </div>
    </div>
</asp:Content>
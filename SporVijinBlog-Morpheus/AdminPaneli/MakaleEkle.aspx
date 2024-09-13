<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/YoneticiMaster.Master" AutoEventWireup="true" CodeBehind="MakaleEkle.aspx.cs" Inherits="SporVijinBlog_Morpheus.AdminPaneli.MakaleEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Kategori Ekle</title>
    <link href="CSS/FormStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="formTasiyici" style="width: 1100px">
        <div class="formBaslik">
            <div class="baslik">
                Makale Ekle
            </div>
        </div>
        <div class="sol">
            <asp:Panel ID="pnl_basarili" runat="server" Visible="false" CssClass="bilgiPaneli basarili">
                Kategori başarıyla eklenmiştir.
            </asp:Panel>
            <asp:Panel ID="pnl_basarisiz" runat="server" Visible="false" CssClass="bilgiPaneli basarisiz">
                <asp:Label ID="lbl_basarisizMetin" runat="server"> Kategori eklenirken bir hata oluştu.</asp:Label>
            </asp:Panel>
            <div class="formIcerik">
                <div class="satir">
                    Başlık
                </div>
                <div class="satir">
                    <asp:TextBox ID="tb_baslik" runat="server" CssClass="tbStyle"></asp:TextBox>
                </div>
                <div class="satir">
                    Kapak Resmi
                </div>
                <div class="satir" style="margin-bottom:20px;">
                    <asp:FileUpload ID="fu_kapakresim" runat="server"/>             
                </div>
                <div class="satir">
                    <asp:CheckBox ID="cb_durum" runat="server" />
                    Aktif
                </div>
                <div class="satir" style="margin-top:10px;">
                    <asp:LinkButton ID="lbtn_makaleEkle" runat="server" Text="Makale Ekle" CssClass="buton"></asp:LinkButton>
                </div>
            </div>
        </div>
        <div class="sag">
            <div class="formIcerik">
                <div class="satir">
                    Özet
                    <asp:TextBox ID="tb_ozet" runat="server" CssClass="tbStyle"></asp:TextBox>
                </div>
                <div class="satir">
                    İçerik
                    <asp:TextBox ID="tb_aciklama" runat="server" CssClass="tbStyle" TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>
        </div>
        <div style="clear: both"></div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/YoneticiMaster.Master" AutoEventWireup="true" CodeBehind="KategoriListele.aspx.cs" Inherits="SporVijinBlog_Morpheus.AdminPaneli.KategoriListele" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/ListStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="tabloTasiyici" style="width: 1400px;">
        <div class="tabloBaslik">
            Kategorileri Listele
        </div>
        <div class="tabloIcerik">
            <asp:ListView ID="lv_kategoriler" runat="server" OnItemCommand="lv_kategoriler_ItemCommand">
                <LayoutTemplate>
                    <table cellspacing="0" cellpadding="0" class="tablo">
                        <tr>
                            <th>ID</th>
                            <th>İsim</th>
                            <th>Açıklama</th>
                            <th>Durum</th>
                            <th>Seçenekler</th>
                        </tr>
                        <asp:PlaceHolder ID="itemPlaceHolder" runat="server"></asp:PlaceHolder>
                    </table>
                </LayoutTemplate>

                <ItemTemplate>
                    <tr>
                        <td><%# Eval("ID") %></td>
                        <td><%# Eval("Isim") %></td>
                        <td><%# Eval("Aciklama") %></td>
                        <td><%# Eval("Durum") %></td>
                        <td>
                            <a href="KategoriDuzenle.aspx?kategoriId=<%# Eval("ID") %>" class="tabloButon">
                                <img src="Images/edit.png" width="16"/>
                            </a>
                            <asp:LinkButton ID="lbtn_durum" runat="server" CssClass="tabloButon durum" CommandArgument='<%# Eval("ID") %>' CommandName="durum">
                                <img src="Images/decision.png"  width="16"/>
                            </asp:LinkButton>
                            <asp:LinkButton ID="lbtn_sil" runat="server" CssClass="tabloButon sil" CommandArgument='<%# Eval("ID") %>' CommandName="sil">
                                <img src="Images/x.png" width="16"/>
                            </asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/YoneticiMaster.Master" AutoEventWireup="true" CodeBehind="MakaleListele.aspx.cs" Inherits="SporVijinBlog_Morpheus.AdminPaneli.MakaleListele" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/ListStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="tabloTasiyici" style="width: 1200px;">
        <div class="tabloBaslik">
            Makaleleri Listele
        </div>
        <div class="tabloIcerik">
            <asp:ListView ID="lv_makaleler" runat="server" OnItemCommand="lv_makaleler_ItemCommand">
                <LayoutTemplate>
                    <table cellspacing="0" cellpadding="0" class="tablo">
                        <tr>
                            <th>Kapak Resmi</th>
                            <th>ID</th>
                            <th>Başlık</th>
                            <th>Görüntüleme Sayısı</th>
                            <th>Durum</th>
                            <th>Seçenekler</th>
                        </tr>
                        <asp:PlaceHolder ID="itemPlaceHolder" runat="server"></asp:PlaceHolder>
                    </table>
                </LayoutTemplate>

                <ItemTemplate>
                    <tr>
                        <td style="text-align:center">
                            <img src='../Resimler/MakaleResimleri/<%# Eval("KapakResim") %>' style="width:90px; height:60px;"/>
                        </td>
                        <td><%# Eval("ID") %></td>
                        <td><%# Eval("Baslik") %></td>
                        <td><%# Eval("GoruntulemeSayi") %></td>
                        <td><%# Eval("Durum") %></td>
                        <td>
                            <a href="MakaleDuzenle.aspx?makaleId=<%# Eval("ID") %>" class="tabloButon">
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


<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="KategoriGoster.aspx.cs" Inherits="e_ticaret.KategoriGoster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    Ürünler
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
                            <ItemTemplate>
                                <p class="product">
                                    <%# Eval("urunAd") %>
                                    <img width="110" height="100" src="<%# "urunresim/"+Eval("urunResim") %>" />
                                    <span class="price"><%# Eval("listeFiyat") +" TL" %></span>
                                    <a href="<%# "KategoriGoster.aspx?UrunKod="+ Eval("urunKod") %>">Sepete At</a>
                                    <a href="<%# "UrunDetay.aspx?UKod="+ Eval("urunKod") %>" class="incele">İncele</a>
                                    <span class="corner"></span>
                                </p>

                            </ItemTemplate>
                        </asp:DataList>
</asp:Content>

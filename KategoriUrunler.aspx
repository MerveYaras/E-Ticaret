<%@ Page Title="" Language="C#" MasterPageFile="~/AltTema.Master" AutoEventWireup="true"
    CodeBehind="KategoriUrunler.aspx.cs" Inherits="e_ticaret.KategoriUrunler" %>

<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div id="products">
        <div class="group">
            <h3 id="katbaslik" runat="server">
        
                </h3>
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <p class="product">
                        <%# Eval("urunAd") %>
                        <img src='<%# "urunresim/"+Eval("urunResim") %>' />
                        <span class="price"> <%# Eval("listeFiyat")+" TL" %></span>  <a href='<%# "Urunler.aspx?UrunKod="+Eval("urunKod") %>'
                            class="incele" style="font-size: small">İncele</a> <span class="corner"></span>
                    </p>
                </ItemTemplate>
            </asp:DataList>
            <cc1:CollectionPager ID="CollectionPager1" runat="server" BackNextLocation="Split"
                BackText="« Geri -" NextText="- İleri »" ResultsLocation="None" ShowLabel="False"
                HideOnSinglePage="True" PageSize="12" MaxPages="12" SectionPadding="3" SliderSize="5">
            </cc1:CollectionPager>
        </div>
    </div>
     <div id="product-sidebar">
                <div class="box">
                    <h3 class="right">
                        TELEFON İLE SİPARİŞ</h3>
                    <img src="images/telefon.png" />
                </div>
                <div class="box red group">
                    <h3>
                        GÜNÜN ÜRÜNÜ</h3>
                    <p class="product">
                        Acer Iconia W510
                        <img src="urunresim/acer.jpg" />
                        <span class="price">1.350 TL</span>
                        <a href="Urunler.aspx?UrunKod=3518"
                            class="incele">İncele</a> <span class="corner"></span>
                    </p>
                </div>
                <div class="box  group">
                    <h3 class="right">
                        ÇOK SATILANLAR</h3>
                    <p class="product">
                        Acer Iconia W510
                        <img src="urunresim/acer.jpg" />
                        <span class="price">1.350 TL</span>
                        <a href="Urunler.aspx?UrunKod=3518"
                            class="incele">İncele</a> <span class="corner"></span>
                    </p>
                    <img src="images/arrows.png" class="arrows" />
                </div>
                <div class="box group">
                    <h3 class="right">
                        ÇOK İNCELENENLER</h3>
                    <p class="product">
                        Acer Iconia W510
                        <img src="urunresim/acer.jpg" />
                        <span class="price">1.350 TL</span>
                        <a href="Urunler.aspx?UrunKod=3518"
                            class="incele">İncele</a> <span class="corner"></span>
                    </p>
                    <img src="images/arrows.png" class="arrows" />
                </div>
            </div>
</asp:Content>

﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="e_ticaret.Anasayfa" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Online Bilgisayar</title>
    <meta charset="UTF-8" />
    <meta name="keywords" content="bilgisayar,ram,anakart,ucuz,taksit,notebook,tablet" />
    <meta name="description" content="Online Bilgisayar Sitesi" />
    <link type="text/css" rel="stylesheet" href="styles/style.css" />
    <script type="text/javascript" src="scripts/modernizr-1.7.min.js"></script>
    <script type="text/javascript" src="scripts/jquery-1.6.1.min.js"></script>
    <script type="text/javascript" src="scripts/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript" src="scripts/antepfistigi.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">
            <header id="masthead">
                <a href="#" id="logo">
                    <img src="images/logo.png" alt="Antep Fıstığı" width="249" height="56" /></a>
                <div id="userinfo" runat="server">
                    <p>
                        Hoşgeldiniz, <span id="kadi" runat="server" class="red">???</span><br />
                        <span id="sepetsayi" runat="server" class="red">12</span> adet ürün bulunmaktadır
                    </p>
                    <a href="#odeme">Ödeme</a> - <a href="Uye/Sepetim.aspx">Sepetim</a> - <asp:ImageButton ID="ImageButton1" runat="server" Height="16px" ImageUrl="~/images/images.jpg" OnClick="ImageButton1_Click" Width="39px" />
                </div>
            </header>
            <nav id="main-nav">
                <ul class="group">
                    <li class="current"><a href="#anasayfa">ANASAYFA</a></li>
                    <li><a href="#urunler">ÜRÜNLER</a></li>
                    <li><a href="#kampanyalar">KAMPANYALAR</a></li>
                    <li><a href="#indirimdekiler">İNDİRİMDEKİLER</a></li>
                    <li><a href="#siparis-ve-odeme">SİPARİŞ VE ÖDEME</a></li>
                </ul>
                <div id="search" method="get" action="#">
                    <label for="q">Ürün Arama</label>
                    <input type="text" name="q" id="q" />
                    <button type="submit">ARA</button>
                </div>
            </nav>
            <section id="content">
                <div id="tagline">
                    <img src="images/tagline-01.png" />
                    <%-- <img src="images/tagline-02.png" />
                <img src="images/tagline-03.png" />
                <img src="images/tagline-04.png" />--%>
                </div>
                <div id="products">
                    <article class="group">
                        <h3>İNDİRİMLİ ÜRÜNLER</h3>
                        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="3">
                            <ItemTemplate>
                                <p class="product">
                                    <%# Eval("urunAd") %>
                                    <img width="110" height="100" src="<%# "urunresim/"+Eval("urunResim") %>" />
                                    <span class="price"><%# Eval("listeFiyat") +" TL" %></span>
                                    <a href="<%# "Anasayfa.aspx?UrunKod="+ Eval("urunKod") %>">Sepete At</a>
                                    <a href="<%# "UrunDetay.aspx?UKod="+ Eval("urunKod") %>" class="incele">İncele</a>
                                    <span class="corner"></span>
                                </p>

                            </ItemTemplate>
                        </asp:DataList>
                    </article>
                    <article class="group">
                        <h3>SON EKLENEN ÜRÜNLER</h3>
                        <asp:DataList ID="DataList2" runat="server" RepeatDirection="Horizontal" RepeatColumns="3">
                            <ItemTemplate>
                                <p class="product">
                                    <%# Eval("urunAd") %>
                                    <img width="110" height="100" src="<%# "urunresim/"+Eval("urunResim") %>" />
                                    <span class="price"><%# Eval("listeFiyat") +" TL" %></span>
                                    <a href="#sepete-at">Sepete At</a>
                                    <a href="<%# "UrunDetay.aspx?UKod="+ Eval("urunKod") %>" class="incele">İncele</a>
                                    <span class="corner"></span>
                                </p>

                            </ItemTemplate>
                        </asp:DataList>
                    </article>

                </div>
                <aside id="product-sidebar">
                    <section class="box">
                        <h3 class="right">TELEFON İLE SİPARİŞ</h3>
                        <img src="images/telefon.png" />
                    </section>
                    <section class="box red group">
                        <h3>GÜNÜN ÜRÜNÜ</h3>
                        <p class="product">
                            Karışık Paket - 3Kg
                           
                        <img src="images/fistik.jpg" />
                            <span class="price">45 TL</span>
                            <a href="#sepete-at">Sepete At</a>
                            <a href="#incele" class="incele">İncele</a>
                            <span class="corner"></span>
                        </p>
                    </section>
                    <section class="box  group">
                        <h3 class="right">ÇOK SATILANLAR</h3>
                        <p class="product">
                            Karışık Paket - 3Kg
                           
                        <img src="images/fistik.jpg" />
                            <span class="price">45 TL</span>
                            <a href="#sepete-at">Sepete At</a>
                            <a href="#incele" class="incele">İncele</a>
                            <span class="corner"></span>
                        </p>
                        <img src="images/arrows.png" class="arrows" />
                    </section>
                    <section class="box group">
                        <h3 class="right">ÇOK İNCELENENLER</h3>
                        <p class="product">
                            Karışık Paket - 3Kg
                           
                        <img src="images/fistik.jpg" />
                            <span class="price">45 TL</span>
                            <a href="#sepete-at">Sepete At</a>
                            <a href="#incele" class="incele">İncele</a>
                            <span class="corner"></span>
                        </p>
                        <img src="images/arrows.png" class="arrows" />
                    </section>
                </aside>
            </section>
            <aside id="sidebar">
                <section class="box">
                    <h3 class="left">ÜRÜN KATEGORİSİ</h3>
                    <ul class="nav" id="htmlkat" runat="server">
                    </ul>
                </section>
                <section id="uyegiris" runat="server" class="box">
                    <h3 class="left">MÜŞTERİ GİRİŞİ</h3>
                    <div id="login" >
                        <ol>
                            <li class="group">
                                <label for="email">Email adresi</label>
                                <input type="text" name="email" id="email" runat="server" />
                            </li>
                            <li class="group">
                                <label for="password">Şifre</label>
                                <input type="password" name="password" id="password" runat="server" />
                            </li>
                            <li class="group">
                                <a href="#sifremi-unuttum">Şifremi unuttum</a>
                                <asp:Button ID="button" CssClass="button" runat="server" Text="Giriş" Height="22px" Width="50px" OnClick="button_Click" />
                                
                            </li>
                           <li class="group">

                               <a id="durum" runat="server">

                           </a>
                           </li>
                        </ol>
                    </div>
                </section>
                  <section class="box">
                    <h3 class="left">Üye OL</h3>
                    <ul class="nav">
                         <li class="group">
                                <a href="UyeOl.aspx" id="register">ÜYE OLMAK İSTİYORUM</a>
                            </li>
                          </ul>
                </section>
                <section class="box">
                    <h3 class="left">HAKKIMIZDA</h3>
                    <ul class="nav">
                        <li><a href="#hakkimizda/urunlerimiz-hakkinda">Ürünlerimiz Hakkında</a></li>
                        <li><a href="#hakkimizda/site-uyelik-ve-yasal-sorumluluklar">Site üyelik ve yasal sorumluluklar</a></li>
                        <li><a href="#hakkimizda/urun-iade-ve-satis-iptali">Ürün iade ve satış iptali</a></li>
                        <li><a href="#hakkimizda/gizlilik-ve-uyelik-sartlari">Gizlilik ve üyelik şartları</a></li>
                    </ul>
                </section>
                <section class="box">
                    <h3 class="left">KAMPANYALAR</h3>
                    <img src="images/kampanyalar.jpg" />
                </section>
            </aside>
            <div id="push" class="group"></div>
        </div>
        <footer id="mastfoot" class="group">
            <p id="disclaimer">Bu sayfa en iyi Psdup.com adresinde görüntülenir :)</p>
            <p id="copyright">Design By <span class="author">Fazlı TEMİZEL</span> - Css &amp; Html <span class="author">Bilal ÇINARLI</span></p>
        </footer>
    </form>
</body>
</html>

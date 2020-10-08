<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="e_ticaret.Anasayfa" %>

<!DOCTYPE html>
<html class="no-js">
<head>
    <title>Online Bilgisayar Dükkanı</title>
    <meta charset="UTF-8" />
    <meta name="keywords" content="e-ticaret" />
    <meta name="description" content="Ayla CEYLAN" />
    <!-- ie 8 ve alt versiyonları için html5 ile gelen etiketlerin çalışması için -->
    <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <link type="text/css" rel="stylesheet" href="styles/style.css" />
    <script type="text/javascript" src="scripts/modernizr-1.7.min.js"></script>
    <script type="text/javascript" src="scripts/jquery-1.6.1.min.js"></script>
    <script type="text/javascript" src="scripts/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript" src="scripts/eticaret.js"></script>
</head>
<body>
<form id="form1" runat="server">
    <div id="wrapper">
        <div id="masthead">
            <a href="Anasayfa.aspx" id="logo">
                <img src="images/logo.jpg" alt="Online Bilgisayar" height="56" /></a>
             
        </div>
        <div id="main-nav">
            <ul class="group">
                <li class="current"><a href="Anasayfa.aspx">ANASAYFA</a></li>
                <li><a href="Markalar.aspx">MARKALAR</a></li>
                <li><a href="Kampanyalarimiz.aspx">KAMPANYALAR</a></li>
                <li><a href="Indirimdekiler.aspx">İNDİRİMDEKİLER</a></li>
                <li><a href="#siparis-ve-odeme">SİPARİŞ VE ÖDEME</a></li>
            </ul>
            
        </div>
        <div id="content">
            <div id="tagline">
                <img src="images/tagline-01.png" />
                <img src="images/tagline-02.png" />
                <img src="images/tagline-03.png" />
                <img src="images/tagline-04.png" />
            </div>
            <div id="products">
                <div class="group">
                    <h3>
                        İNDİRİMLİ ÜRÜNLER</h3>
                     <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" 
                        RepeatDirection="Horizontal">
                <ItemTemplate>
                    <p class="product">
                        <%# Eval("urunAd") %>
                        <img src='<%# "urunresim/"+Eval("urunResim") %>' />
                        <span class="price"> <%# Eval("listeFiyat")+" TL" %></span> 
                       <a href='<%# "Urunler.aspx?UrunKod="+Eval("urunKod") %>'
                            class="incele" style="font-size: small">İncele</a> <span class="corner"></span>
                    </p>
                </ItemTemplate>
            </asp:DataList>
                </div>
                <div class="group">
                    <h3>
                        SON EKLENEN ÜRÜNLER</h3>
                     <asp:DataList ID="DataList2" runat="server" RepeatColumns="3" 
                        RepeatDirection="Horizontal">
                <ItemTemplate>
                    <p class="product">
                        <%# Eval("urunAd") %>
                        <img src='<%# "urunresim/"+Eval("urunResim") %>' />
                        <span class="price"> <%# Eval("listeFiyat")+" TL" %></span> <a href='<%# "Urunler.aspx?UrunKod="+Eval("urunKod") %>'
                            class="incele" style="font-size: small">İncele</a> <span class="corner"></span>
                    </p>
                </ItemTemplate>
            </asp:DataList>
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
        </div>
        <div id="sidebar">
            <div class="box">
                <h3 class="left">
                    ÜRÜN KATEGORİSİ</h3>
                <ul class="nav" id="kategorihtml" runat="server">
                   

                </ul>
            </div>
            <div class="box">
                <h3 class="left">
                    ÜYE / YÖNETİCİ GİRİŞİ</h3>
                <div id="login" runat="server">
                <ol >
                    <li class="group">
                        <label for="email">
                            Email adresi</label>

                        <input type="text" runat="server" name="email" id="email" />
                    </li>
                    <li class="group">
                        <label for="password">
                            Şifre</label>
                        <input type="password" runat="server" name="password" id="password" />
                    </li>
                    <li class="group"><a href="#sifremi-unuttum">Şifremi unuttum</a>
                        <asp:Button ID="Button1" runat="server" Text="Giriş" BackColor="#9DBF28" 
                            ForeColor="White" onclick="Button1_Click" Width="50px" />
                    </li>
                    <li class="group"><a href="UyeOl.aspx" id="register">ÜYE OLMAK İSTİYORUM</a> </li>
                </ol>
                </div>
               
                &nbsp;
               
                <asp:Panel ID="Panel1" runat="server" Height="75px">
                  <p style="padding-left:10px">
                    Hoşgeldiniz, <span class="red" style="color:Red; font-weight: bold;" id="kadihos" runat="server"></span><br />
                    <span class="red" id="sepettoplamurun" runat="server" style="color: #FF0000; font-weight: bold; text-decoration: underline"></span> adet ürün bulunmaktadır</p>
                    <p style="padding-left:10px">
                        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
                            Font-Size="Small" ForeColor="Red">Sepetim</asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Small" 
                            ForeColor="Red" onclick="LinkButton1_Click">Çıkış</asp:LinkButton>
                    </p>
                </asp:Panel>
              
         
            </div>
            <div class="box">
                <h3 class="left">
                    HAKKIMIZDA</h3>
                <ul class="nav">
                    <li><a href="#hakkimizda/urunlerimiz-hakkinda">Ürünlerimiz Hakkında</a></li>
                    <li><a href="NasilUyeOlurum.aspx">Site üyelik ve yasal sorumluluklar</a></li>
                    <li><a href="UrunIadeHakkinda.aspx">Ürün iade ve satış iptali</a></li>
                    <li><a href="Gizlilik.aspx">Gizlilik ve üyelik şartları</a></li>
                </ul>
            </div>
            <div class="box">
                <h3 class="left">
                    KAMPANYALAR</h3>
                <img src="images/kampanyalar.jpg" />
            </div>
        </div>
        <div id="push" class="group">
        </div>
    </div>
    <div id="mastfoot" class="group">
        <p id="disclaimer">
            Bu sayfa en iyi Firefox ile görüntülenir.</p>
        <p id="copyright">
            Design By <span class="author">Ayla CEYLAN</span></p>
    </div>
    </form>
</body>
</html>

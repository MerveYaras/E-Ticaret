<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Uyelik.ascx.cs" Inherits="e_ticaret.Uyelik" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor"
    TagPrefix="cc1" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<link href="../stil/Uyelik.css" rel="stylesheet" type="text/css" />
    
    <style type="text/css">
        #UyeForm
        {
            width: 427px;
        }
        .style1
        {
            width: 32px;
            height: 32px;
        }
        .style2
        {
            color: #FF3300;
        }
        .style3
        {
            font-size: small;
        }
    </style>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>

<div id="form" style="margin: 18px 0 20px 20px; width: 446px;">
                            <div style="margin-bottom: 30px; margin-right: 24px; width: 445px; height: 594px;">
                                <table border="0" cellpadding="4" cellspacing="0" style="width: 100%">
                                    <tbody>
                                        <tr>
                                            <td class="style3">
                                                    E-Posta
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txteposta" runat="server" Width="200px" Enabled="False"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                    ControlToValidate="txteposta" ErrorMessage="*" 
                                                    ForeColor="Red"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                    ControlToValidate="txteposta" ErrorMessage="Geçersiz email" ForeColor="#CC0000" 
                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                                    Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>
                                                <asp:ScriptManager ID="ScriptManager1" runat="server" 
                                                    EnableScriptGlobalization="True">
                                                </asp:ScriptManager>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style3">
                                                    Ad
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtadi" runat="server" Width="200px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtadi" ErrorMessage="*" 
                                                    ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style3">
                                                    Soyad
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtsoyad" runat="server" Width="200px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtsoyad" ErrorMessage="*" 
                                                    ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style3">
                                                    Telefon</td>
                                            <td>
                                                <asp:TextBox ID="txttelefon" runat="server" Width="200px"></asp:TextBox>
                                                <asp:MaskedEditExtender ID="txttelefon_MaskedEditExtender" runat="server" 
                                                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                                                    CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                                                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                                                    Mask="(999)-999-99-99" TargetControlID="txttelefon">
                                                </asp:MaskedEditExtender>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                    ControlToValidate="txttelefon" ErrorMessage="*" 
                                                    ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style3">
                                                <label>
                                                    Cinsiyet</label></td>
                                            <td>
                                                <input name="cinsiyet" runat="server" value="Bayan" id="bayan" type="radio" />
                                                Kadın
                                                <input name="cinsiyet" runat="server" value="Bay" id="bay" type="radio" 
                                                    checked="true" />
                                                <font id="cinsiyet">Erkek</font>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style3">
                                                <label for="dtarih">
                                                    <span class="style3">Doğum Tarihi</span></label><span class="style3"> </span>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txttelefon0" runat="server" Width="200px"></asp:TextBox>
                                                <asp:MaskedEditExtender ID="txttelefon0_MaskedEditExtender" runat="server" 
                                                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                                                    CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                                                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                                                    Mask="99-99-9999" TargetControlID="txttelefon0">
                                                </asp:MaskedEditExtender>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style3">
                                                <label for="sehir">
                                                    Şehir</label></td>
                                            <td>

                                             <asp:DropDownList ID="sehir" runat="server">
                                                    <asp:ListItem Selected="True" value="ISPARTA">ISPARTA</asp:ListItem>
                                                    <asp:ListItem value="ADANA">ADANA</asp:ListItem>
                                                    <asp:ListItem value="ADIYAMAN">ADIYAMAN</asp:ListItem>
                                                    <asp:ListItem value="AFYONKARAHİSAR">AFYONKARAHİSAR</asp:ListItem>
                                                    <asp:ListItem value="AĞRI">AĞRI</asp:ListItem>
                                                    <asp:ListItem value="AMASYA">AMASYA</asp:ListItem>
                                                    <asp:ListItem value="ANKARA">ANKARA</asp:ListItem>
                                                    <asp:ListItem value="ANTALYA">ANTALYA</asp:ListItem>
                                                    <asp:ListItem value="ARTVİN">ARTVİN</asp:ListItem>
                                                    <asp:ListItem value="AYDIN">AYDIN</asp:ListItem>
                                                    <asp:ListItem value="BALIKESİR">BALIKESİR</asp:ListItem>
                                                    <asp:ListItem value="BİLECİK">BİLECİK</asp:ListItem>
                                                    <asp:ListItem value="BİNGÖL">BİNGÖL</asp:ListItem>
                                                    <asp:ListItem value="BİTLİS">BİTLİS</asp:ListItem>
                                                    <asp:ListItem value="BOLU">BOLU</asp:ListItem>
                                                    <asp:ListItem value="BURDUR">BURDUR</asp:ListItem>
                                                    <asp:ListItem value="BURSA">BURSA</asp:ListItem>
                                                    <asp:ListItem value="ÇANAKKALE">ÇANAKKALE</asp:ListItem>
                                                    <asp:ListItem value="ÇANKIRI">ÇANKIRI</asp:ListItem>
                                                    <asp:ListItem value="ÇORUM">ÇORUM</asp:ListItem>
                                                    <asp:ListItem value="DENİZLİ">DENİZLİ</asp:ListItem>
                                                    <asp:ListItem value="DİYARBAKIR">DİYARBAKIR</asp:ListItem>
                                                    <asp:ListItem value="EDİRNE">EDİRNE</asp:ListItem>
                                                    <asp:ListItem value="ELAZIĞ">ELAZIĞ</asp:ListItem>
                                                    <asp:ListItem value="ERZİNCAN">ERZİNCAN</asp:ListItem>
                                                    <asp:ListItem value="ERZURUM">ERZURUM</asp:ListItem>
                                                    <asp:ListItem value="ESKİŞEHİR">ESKİŞEHİR</asp:ListItem>
                                                    <asp:ListItem value="GAZİANTEP">GAZİANTEP</asp:ListItem>
                                                    <asp:ListItem value="GİRESUN">GİRESUN</asp:ListItem>
                                                    <asp:ListItem value="GÜMÜŞHANE">GÜMÜŞHANE</asp:ListItem>
                                                    <asp:ListItem value="HAKKARİ">HAKKARİ</asp:ListItem>
                                                    <asp:ListItem value="HATAY">HATAY</asp:ListItem>
                                                     <asp:ListItem value="MERSİN">MERSİN</asp:ListItem>
                                                    <asp:ListItem value="İSTANBUL">İSTANBUL</asp:ListItem>
                                                    <asp:ListItem value="İZMİR">İZMİR</asp:ListItem>
                                                    <asp:ListItem value="KARS">KARS</asp:ListItem>
                                                    <asp:ListItem value="KASTAMONU">KASTAMONU</asp:ListItem>
                                                    <asp:ListItem value="KAYSERİ">KAYSERİ</asp:ListItem>
                                                    <asp:ListItem value="KIRKLARELİ">KIRKLARELİ</asp:ListItem>
                                                    <asp:ListItem value="KIRŞEHİR">KIRŞEHİR</asp:ListItem>
                                                    <asp:ListItem value="KOCAELİ">KOCAELİ</asp:ListItem>
                                                    <asp:ListItem value="KONYA">KONYA</asp:ListItem>
                                                    <asp:ListItem value="KÜTAHYA">KÜTAHYA</asp:ListItem>
                                                    <asp:ListItem value="MALATYA">MALATYA</asp:ListItem>
                                                    <asp:ListItem value="MANİSA">MANİSA</asp:ListItem>
                                                    <asp:ListItem value="KAHRAMANMARAŞ">KAHRAMANMARAŞ</asp:ListItem>
                                                    <asp:ListItem value="MARDİN">MARDİN</asp:ListItem>
                                                    <asp:ListItem value="MUĞLA">MUĞLA</asp:ListItem>
                                                    <asp:ListItem value="MUŞ">MUŞ</asp:ListItem>
                                                    <asp:ListItem value="NEVŞEHİR">NEVŞEHİR</asp:ListItem>
                                                    <asp:ListItem value="NİĞDE">NİĞDE</asp:ListItem>
                                                    <asp:ListItem value="ORDU">ORDU</asp:ListItem>
                                                    <asp:ListItem value="RİZE">RİZE</asp:ListItem>
                                                    <asp:ListItem value="SAKARYA">SAKARYA</asp:ListItem>
                                                    <asp:ListItem value="SAMSUN">SAMSUN</asp:ListItem>
                                                    <asp:ListItem value="SİİRT">SİİRT</asp:ListItem>
                                                    <asp:ListItem value="SİNOP">SİNOP</asp:ListItem>
                                                    <asp:ListItem value="SİVAS">SİVAS</asp:ListItem>
                                                    <asp:ListItem value="TEKİRDAĞ">TEKİRDAĞ</asp:ListItem>
                                                    <asp:ListItem value="TOKAT">TOKAT</asp:ListItem>
                                                    <asp:ListItem value="TRABZON">TRABZON</asp:ListItem>
                                                    <asp:ListItem value="TUNCELİ">TUNCELİ</asp:ListItem>
                                                    <asp:ListItem value="ŞANLIURFA">ŞANLIURFA</asp:ListItem>
                                                    <asp:ListItem value="UŞAK">UŞAK</asp:ListItem>
                                                    <asp:ListItem value="VAN">VAN</asp:ListItem>
                                                    <asp:ListItem value="YOZGAT">YOZGAT</asp:ListItem>
                                                    <asp:ListItem value="ZONGULDAK">ZONGULDAK</asp:ListItem>
                                                    <asp:ListItem value="AKSARAY">AKSARAY</asp:ListItem>
                                                    <asp:ListItem value="BAYBURT">BAYBURT</asp:ListItem>
                                                    <asp:ListItem value="KARAMAN">KARAMAN</asp:ListItem>
                                                    <asp:ListItem value="KIRIKKALE">KIRIKKALE</asp:ListItem>
                                                    <asp:ListItem value="BATMAN">BATMAN</asp:ListItem>
                                                    <asp:ListItem value="ŞIRNAK">ŞIRNAK</asp:ListItem>
                                                    <asp:ListItem value="BARTIN">BARTIN</asp:ListItem>
                                                    <asp:ListItem value="ARDAHAN">ARDAHAN</asp:ListItem>
                                                    <asp:ListItem value="IĞDIR">IĞDIR</asp:ListItem>
                                                    <asp:ListItem value="YALOVA">YALOVA</asp:ListItem>
                                                    <asp:ListItem value="KARABÜK">KARABÜK</asp:ListItem>
                                                    <asp:ListItem value="KİLİS">KİLİS</asp:ListItem>
                                                    <asp:ListItem value="OSMANİYE">OSMANİYE</asp:ListItem>
                                                    <asp:ListItem value="DÜZCE">DÜZCE</asp:ListItem>
                                                </asp:DropDownList>
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style3">
                                                Adres</td>
                                            <td>
                                                <asp:TextBox ID="txtadres" runat="server" TextMode="MultiLine" Width="301px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style3">
                                                Güvenlik Kodu:
                                            </td>
                                            <td>
                                                 <asp:Image ID="imgCap" runat="server" Height="40px" ImageUrl="~/kod/RetCap.aspx" 
                        Width="120px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style3">
                                               Güvenlik Onayı:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtguvenlik" runat="server" Width="200px"></asp:TextBox>
&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                            </td>
                                            <td>
                                               
                                                <input id="sozlesme" runat="server" value="1" type="checkbox" class="style3"/>
                                                <font ><span class="style3">Bilgilerimin Doğruluğunu Kabul Ediyorum</span></font>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="height: 12px;" align="center">
                                                <asp:UpdateProgress ID="UpdateProgress1" runat="server" 
                                                    AssociatedUpdatePanelID="UpdatePanel1" DisplayAfter="10">
                                                    <ProgressTemplate>
                                                        <img alt="" class="style1" src="../images/loading.gif" />
                                                        <strong></strong><span class="style2"><strong>İşlem Yapılıyor....</strong></span>
                                                    </ProgressTemplate>
                                                </asp:UpdateProgress>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td id="durum" runat="server" colspan="2" 
                                                style="height: 12px; color: #FF0000; font-size: small;" align="center">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td align="justify" valign="top">
                                                &nbsp;<asp:ImageButton 
                                                    ID="ImageButton1" runat="server" 
                                                    ImageUrl="~/images/guncelle.png" onclick="ImageButton1_Click" />
                                                &nbsp;&nbsp;
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div></ContentTemplate>
</asp:UpdatePanel>
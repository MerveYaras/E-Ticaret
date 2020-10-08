<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GUyelik.ascx.cs" Inherits="e_ticaret.GUyelik" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor"
    TagPrefix="cc1" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<link href="../stil/Uyelik.css" rel="stylesheet" type="text/css">
    
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
                                                <asp:TextBox ID="txteposta" runat="server" Width="200px"></asp:TextBox>
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
                                                    Şifre
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtsifre" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                                                <asp:PasswordStrength ID="txtsifre_PasswordStrength" runat="server" 
                                                    Enabled="True" MinimumLowerCaseCharacters="1" MinimumNumericCharacters="1" 
                                                    MinimumSymbolCharacters="1" MinimumUpperCaseCharacters="1" PrefixText=" " 
                                                    TargetControlID="txtsifre" TextCssClass="sifre" 
                                                    TextStrengthDescriptions="Çok Zayıf;Zayıf;Ortalama;Güçlü;Çok Güçlü">
                                                </asp:PasswordStrength>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtsifre" ErrorMessage="*" 
                                                    ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style3">
                                                    Şifre (Tekrar)
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtsifrerepe" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtsifrerepe" ErrorMessage="*" 
                                                    ForeColor="Red"></asp:RequiredFieldValidator>
                                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                                    ControlToCompare="txtsifre" ControlToValidate="txtsifrerepe" 
                                                    ErrorMessage="Şifreler Uymuyor" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
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
                                                <select name="dtarihgun" id="dtarihgun" runat="server">
                                                
                                                    <option  selected="selected" value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                    <option value="5">5</option>
                                                    <option value="6">6</option>
                                                    <option value="7">7</option>
                                                    <option value="8">8</option>
                                                    <option value="9">9</option>
                                                    <option value="10">10</option>
                                                    <option value="11">11</option>
                                                    <option value="12">12</option>
                                                    <option value="13">13</option>
                                                    <option value="14">14</option>
                                                    <option value="15">15</option>
                                                    <option value="16">16</option>
                                                    <option value="17">17</option>
                                                    <option value="18">18</option>
                                                    <option value="19">19</option>
                                                    <option value="20">20</option>
                                                    <option value="21">21</option>
                                                    <option value="22">22</option>
                                                    <option value="23">23</option>
                                                    <option value="24">24</option>
                                                    <option value="25">25</option>
                                                    <option value="26">26</option>
                                                    <option value="27">27</option>
                                                    <option value="28">28</option>
                                                    <option value="29">29</option>
                                                    <option value="30">30</option>
                                                    <option value="31">31</option>
                                                </select>
                                                <select name="dtarihay"  id="dtarihay" runat="server">
                                                   <option  selected="selected" value="1">Ocak</option>
                                                                         <option value="2">Şubat</option>
                                                    <option value="3">Mart</option>
                                                    <option value="4">Nisan</option>
                                                    <option value="5">Mayıs</option>
                                                    <option value="6">Haziran</option>
                                                    <option value="7">Temmuz</option>
                                                    <option value="8">Ağustos</option>
                                                    <option value="9">Eylül</option>
                                                    <option value="10">Ekim</option>
                                                    <option value="11">Kasım</option>
                                                    <option value="12">Aralık</option>
                                                </select>
                                                <select name="dtarihyil" id="dtarihyil" runat="server">
                                                    <option  selected="selected" value="1995">1995</option>
                                                  
                                                  
                                                    <option value="1994">1994</option>
                                                    <option value="1993">1993</option>
                                                    <option value="1992">1992</option>
                                                    <option value="1991">1991</option>
                                                    <option value="1990">1990</option>
                                                    <option value="1989">1989</option>
                                                    <option value="1988">1988</option>
                                                    <option value="1987">1987</option>
                                                    <option value="1986">1986</option>
                                                    <option value="1985">1985</option>
                                                    <option value="1984">1984</option>
                                                    <option value="1983">1983</option>
                                                    <option value="1982">1982</option>
                                                    <option value="1981">1981</option>
                                                    <option value="1980">1980</option>
                                                    <option value="1979">1979</option>
                                                    <option value="1978">1978</option>
                                                    <option value="1977">1977</option>
                                                    <option value="1976">1976</option>
                                                    <option value="1975">1975</option>
                                                    <option value="1974">1974</option>
                                                    <option value="1973">1973</option>
                                                    <option value="1972">1972</option>
                                                    <option value="1971">1971</option>
                                                    <option value="1970">1970</option>
                                                    <option value="1969">1969</option>
                                                    <option value="1968">1968</option>
                                                    <option value="1967">1967</option>
                                                    <option value="1966">1966</option>
                                                    <option value="1965">1965</option>
                                                    <option value="1964">1964</option>
                                                    <option value="1963">1963</option>
                                                    <option value="1962">1962</option>
                                                    <option value="1961">1961</option>
                                                    <option value="1960">1960</option>
                                                    <option value="1959">1959</option>
                                                    <option value="1958">1958</option>
                                                    <option value="1957">1957</option>
                                                    <option value="1956">1956</option>
                                                    <option value="1955">1955</option>
                                                    <option value="1954">1954</option>
                                                    <option value="1953">1953</option>
                                                    <option value="1952">1952</option>
                                                    <option value="1951">1951</option>
                                                    <option value="1950">1950</option>
                                                    <option value="1949">1949</option>
                                                    <option value="1948">1948</option>
                                                    <option value="1947">1947</option>
                                                    <option value="1946">1946</option>
                                                    <option value="1945">1945</option>
                                                    <option value="1944">1944</option>
                                                    <option value="1943">1943</option>
                                                    <option value="1942">1942</option>
                                                    <option value="1941">1941</option>
                                                    <option value="1940">1940</option>
                                                    <option value="1939">1939</option>
                                                    <option value="1938">1938</option>
                                                    <option value="1937">1937</option>
                                                    <option value="1936">1936</option>
                                                    <option value="1935">1935</option>
                                                    <option value="1934">1934</option>
                                                    <option value="1933">1933</option>
                                                    <option value="1932">1932</option>
                                                    <option value="1931">1931</option>
                                                    <option value="1930">1930</option>
                                                    <option value="1929">1929</option>
                                                    <option value="1928">1928</option>
                                                    <option value="1927">1927</option>
                                                    <option value="1926">1926</option>
                                                    <option value="1925">1925</option>
                                                    <option value="1924">1924</option>
                                                    <option value="1923">1923</option>
                                                    <option value="1922">1922</option>
                                                    <option value="1921">1921</option>
                                                    <option value="1920">1920</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style3">
                                                <label for="sehir">
                                                    Şehir</label></td>
                                            <td>
                                                <select runat="server" name="sehir" id="sehir">
                                                    <option selected="selected" value="ISPARTA">ISPARTA</option>
                                                    <option value="ADANA">ADANA</option>
                                                    <option value="ADIYAMAN">ADIYAMAN</option>
                                                    <option value="AFYONKARAHİSAR">AFYONKARAHİSAR</option>
                                                    <option value="AĞRI">AĞRI</option>
                                                    <option value="AMASYA">AMASYA</option>
                                                    <option value="ANKARA">ANKARA</option>
                                                    <option value="ANTALYA">ANTALYA</option>
                                                    <option value="ARTVİN">ARTVİN</option>
                                                    <option value="AYDIN">AYDIN</option>
                                                    <option value="BALIKESİR">BALIKESİR</option>
                                                    <option value="BİLECİK">BİLECİK</option>
                                                    <option value="BİNGÖL">BİNGÖL</option>
                                                    <option value="BİTLİS">BİTLİS</option>
                                                    <option value="BOLU">BOLU</option>
                                                    <option value="BURDUR">BURDUR</option>
                                                    <option value="BURSA">BURSA</option>
                                                    <option value="ÇANAKKALE">ÇANAKKALE</option>
                                                    <option value="ÇANKIRI">ÇANKIRI</option>
                                                    <option value="ÇORUM">ÇORUM</option>
                                                    <option value="DENİZLİ">DENİZLİ</option>
                                                    <option value="DİYARBAKIR">DİYARBAKIR</option>
                                                    <option value="EDİRNE">EDİRNE</option>
                                                    <option value="ELAZIĞ">ELAZIĞ</option>
                                                    <option value="ERZİNCAN">ERZİNCAN</option>
                                                    <option value="ERZURUM">ERZURUM</option>
                                                    <option value="ESKİŞEHİR">ESKİŞEHİR</option>
                                                    <option value="GAZİANTEP">GAZİANTEP</option>
                                                    <option value="GİRESUN">GİRESUN</option>
                                                    <option value="GÜMÜŞHANE">GÜMÜŞHANE</option>
                                                    <option value="HAKKARİ">HAKKARİ</option>
                                                    <option value="HATAY">HATAY</option>
                                                     <option value="MERSİN">MERSİN</option>
                                                    <option value="İSTANBUL">İSTANBUL</option>
                                                    <option value="İZMİR">İZMİR</option>
                                                    <option value="KARS">KARS</option>
                                                    <option value="KASTAMONU">KASTAMONU</option>
                                                    <option value="KAYSERİ">KAYSERİ</option>
                                                    <option value="KIRKLARELİ">KIRKLARELİ</option>
                                                    <option value="KIRŞEHİR">KIRŞEHİR</option>
                                                    <option value="KOCAELİ">KOCAELİ</option>
                                                    <option value="KONYA">KONYA</option>
                                                    <option value="KÜTAHYA">KÜTAHYA</option>
                                                    <option value="MALATYA">MALATYA</option>
                                                    <option value="MANİSA">MANİSA</option>
                                                    <option value="KAHRAMANMARAŞ">KAHRAMANMARAŞ</option>
                                                    <option value="MARDİN">MARDİN</option>
                                                    <option value="MUĞLA">MUĞLA</option>
                                                    <option value="MUŞ">MUŞ</option>
                                                    <option value="NEVŞEHİR">NEVŞEHİR</option>
                                                    <option value="NİĞDE">NİĞDE</option>
                                                    <option value="ORDU">ORDU</option>
                                                    <option value="RİZE">RİZE</option>
                                                    <option value="SAKARYA">SAKARYA</option>
                                                    <option value="SAMSUN">SAMSUN</option>
                                                    <option value="SİİRT">SİİRT</option>
                                                    <option value="SİNOP">SİNOP</option>
                                                    <option value="SİVAS">SİVAS</option>
                                                    <option value="TEKİRDAĞ">TEKİRDAĞ</option>
                                                    <option value="TOKAT">TOKAT</option>
                                                    <option value="TRABZON">TRABZON</option>
                                                    <option value="TUNCELİ">TUNCELİ</option>
                                                    <option value="ŞANLIURFA">ŞANLIURFA</option>
                                                    <option value="UŞAK">UŞAK</option>
                                                    <option value="VAN">VAN</option>
                                                    <option value="YOZGAT">YOZGAT</option>
                                                    <option value="ZONGULDAK">ZONGULDAK</option>
                                                    <option value="AKSARAY">AKSARAY</option>
                                                    <option value="BAYBURT">BAYBURT</option>
                                                    <option value="KARAMAN">KARAMAN</option>
                                                    <option value="KIRIKKALE">KIRIKKALE</option>
                                                    <option value="BATMAN">BATMAN</option>
                                                    <option value="ŞIRNAK">ŞIRNAK</option>
                                                    <option value="BARTIN">BARTIN</option>
                                                    <option value="ARDAHAN">ARDAHAN</option>
                                                    <option value="IĞDIR">IĞDIR</option>
                                                    <option value="YALOVA">YALOVA</option>
                                                    <option value="KARABÜK">KARABÜK</option>
                                                    <option value="KİLİS">KİLİS</option>
                                                    <option value="OSMANİYE">OSMANİYE</option>
                                                    <option value="DÜZCE">DÜZCE</option>
                                                </select>
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
                                                    ImageUrl="../images/but_uyeol.png" onclick="ImageButton1_Click" />
                                                &nbsp;&nbsp;
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div></ContentTemplate>
</asp:UpdatePanel>
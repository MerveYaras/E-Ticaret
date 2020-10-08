<%@ Page Title="" Language="C#" MasterPageFile="~/UyeOzel/UyeOzel.Master" AutoEventWireup="true" CodeBehind="OdemeYap.aspx.cs" Inherits="e_ticaret.OdemeYap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link href="css/odemesecenekleri.css" rel="stylesheet" type="text/css" />
<link href="css/jq_keypad.css" rel="stylesheet" type="text/css" />
<link href="js/form/form.css" media="screen" rel="stylesheet" type="text/css" />

<script language="javascript" src="js/jq.js" type="text/javascript"></script>
<script language="javascript" src="js/jq_mask.js" type="text/javascript"></script>
<script language="javascript" src="js/jq_keypad.js" type="text/javascript"></script>
<script language="javascript" src="js/form/form.js" type="text/javascript"></script>
<script charset="utf-8" language="javascript" type="text/javascript">    $(function () { $("input, textarea, select, button").uniform(); });</script>
<script language="javascript" type="text/javascript">

    jQuery(function ($) {
        $("#skt").mask("99 / 9999");
        $("#faks_input").mask("0 (999) 999 99 99");
        $("#gsm_input").mask("0 (999) 999 99 99");
    });

    $(document).ready(function () {
        $('input[name=KartNo1]').JQFNumKeypad({ clearText: 'Temizle' });
        $('input[name=KartNo2]').JQFNumKeypad({ clearText: 'Temizle' });
        $('input[name=KartNo3]').JQFNumKeypad({ clearText: 'Temizle' });
        $('input[name=KartNo4]').JQFNumKeypad({ clearText: 'Temizle' });
        $('#CCV').keyup(function () {
            if ($(this).val().length == 3) {
                $('#skt').focus();
                $('#CCV').blur();
            }
        });
    });

    /* ----- os */
    function osTab(section) {

        $('#osbuton1').removeClass();
        $('#osbuton2').removeClass();
        $('#osbuton3').removeClass();

        $('#osbuton1').addClass('osbuton2 fl');
        $('#osbuton2').addClass('osbuton2 fl');
        $('#osbuton3').addClass('osbuton2 fl');

        $('#osbuton' + section).removeClass();
        $('#osbuton' + section).addClass('osbuton fl');

        $('#os-1-content').hide();
        $('#os-2-content').hide();
        $('#os-3-content').hide();

        $('#os-' + section + '-content').show();

        return true;

    }

    function Temizle() {
        $("#Kartisim").attr("value", "");
        $("#KartNo1").attr("value", "");
        $("#KartNo2").attr("value", "");
        $("#KartNo3").attr("value", "");
        $("#KartNo4").attr("value", "");
        $("#CCV").attr("value", "");
        $("#skt").attr("value", "");
        $("#skt").attr("value", "");
        return true;
    }
        
        </script>
<div>
<div class="fl ml_10 mt_10 odemesecenegiust">
			<div id="osbuton1" class="osbuton fl" onclick="osTab('1');">
				Kredi Kartı</div>
			
			
		</div>
		<div class="fl ml_10 ha odemesecenegialt">
			<div id="os-1-content" class="ostabArea fl ha ostabAreaKredi">
				
					<table border="0" cellpadding="2" cellspacing="2" class="ml_10 mt_10" width="550">
						<tr>
							<td height="35" width="140">
							<div style="float: left; margin-top: 4px;">
								<strong>Kartınızdan Çekilecek Tutar</strong></div>
							</td>
							<td height="35" width="10">
							    &nbsp;</td>
							<td align="left" height="35" width="400">
							<input id="Kartisim0" runat="server" name="Kartisim0" style="width: 157px;" 
                                    type="text" readonly="true" /></td>
						</tr>
						<tr>
							<td height="35" width="140">
							<div style="float: left; margin-top: 4px;">
								<strong>Kart Üzerindeki İsim</strong></div>
							</td>
							<td height="35" width="10">
							<div style="float: left; margin-top: 4px;">
								<strong>:</strong> </div>
							</td>
							<td align="left" height="35" width="400">
							<input id="Kartisim" runat="server" name="Kartisim" style="width: 157px;" type="text" /></td>
						</tr>
						<tr>
							<td height="35" width="140">
							<div style="float: left; margin-top: 4px;">
								<strong>Kart Numarası</strong></div>
							</td>
							<td height="35" width="10">
							<div style="float: left; margin-top: 4px;">
								<strong>:</strong> </div>
							</td>
							<td align="left" height="35" width="400">
							<input id="KartNo1" maxlength="4" name="KartNo1" ondrop="return false;" style="width: 35px; float: left; margin-right: 5px;" type="text" />
							<input id="KartNo2" maxlength="4" name="KartNo2" ondrop="return false;" style="width: 35px; float: left; margin-right: 5px;" type="text" />
							<input id="KartNo3" maxlength="4" name="KartNo3" ondrop="return false;" style="width: 35px; float: left; margin-right: 5px;" type="text" />
							<input id="KartNo4"  maxlength="4" name="KartNo4" ondrop="return false;" style="width: 35px; float: left; margin-right: 5px;" type="text" />
							</td>
						</tr>
						<tr>
							<td height="35" width="140">
							<div style="float: left; margin-top: 4px;">
								<strong>Güvenlik Kodu (CCV)</strong></div>
							</td>
							<td height="35" width="10">
							<div style="float: left; margin-top: 4px;">
								<strong>:</strong> </div>
							</td>
							<td align="left" height="35" width="400">
							<input id="CCV" maxlength="3" name="CCV" style="width: 30px;" type="text" /></td>
						</tr>
						<tr>
							<td height="35" width="140">
							<div style="float: left; margin-top: 4px;">
								<strong>Son Kullanma Tarihi</strong></div>
							</td>
							<td height="35" width="10">
							<div style="float: left; margin-top: 4px;">
								<strong>:</strong> </div>
							</td>
							<td align="left" height="35" width="400">
							<input id="skt" name="skt" style="width: 60px;" type="text" /></td>
						</tr>
						<tr>
							<td height="35" width="140">
							<div style="float: left; margin-top: 4px;">
								<strong>Kart Tipi</strong></div>
							</td>
							<td height="35" width="10">
							<div style="float: left; margin-top: 4px;">
								<strong>:</strong> </div>
							</td>
							<td align="left" height="35" width="400">
							<select name="karttipi">
							<option value="Visa">Visa</option>
							<option value="Master">Master Card</option>
							</select> </td>
						</tr>
						<tr>
							<td height="35" width="140">
							<div style="float: left; margin-top: 4px;">
								<strong>Kartın Ait Olduğu Banka</strong></div>
							</td>
							<td height="35" width="10">
							<div style="float: left; margin-top: 4px;">
								<strong>:</strong> </div>
							</td>
							<td align="left" height="35" width="400">
							<select id="banka" runat="server" name="banka">
							<option selected="selected" value="">Bankanızı Seçiniz
							</option>
							<option value="46">AKBANK A.Ş.</option>
							<option value="900">AKK TUR. VE TİC. A.Ş.</option>
							<option value="135">ANADOLUBANK A.Ş.</option>
							<option value="208">ASYA KATILIM BANKASI A.Ş.
							</option>
							<option value="103">BANKEUROPA BANKASI A.Ş.</option>
							<option value="92">CITIBANK N.A.</option>
							<option value="134">DENİZBANK A.Ş.</option>
							<option value="71">FORTIS BANK A.Ş.</option>
							<option value="111">FİNANSBANK A.Ş.</option>
							<option value="62">GARANTİ BANKASI A.Ş.</option>
							<option value="12">HALK BANKASI A.Ş.</option>
							<option value="123">HSBC BANK A.Ş.</option>
							<option value="93">KOÇBANK A.Ş.</option>
							<option value="205">KUVEYT TÜRK KATILIM BANKASI
							</option>
							<option value="108">MNG BANK A.Ş.</option>
							<option value="99">ING BANK</option>
							<option value="56">PAMUKBANK T.A.Ş.</option>
							<option value="59">ŞEKERBANK A.Ş.</option>
							<option value="64">İŞ BANKASI A.Ş.</option>
							<option value="15">VAKIFLAR BANKASI T.A.O.</option>
							<option value="10">ZİRAAT BANKASI</option>
							<option value="125">TEKFENBANK A.Ş.</option>
							<option value="109">TEKSTİL BANKASI A.Ş.</option>
							<option value="96">TURKISH BANK A.Ş.</option>
							<option value="32">TÜRK EKONOMİ BANKASI TEB A.Ş.
							</option>
							<option value="206">TÜRKİYE FİNANS KATILIM BANKASI
							</option>
							<option value="67">YAPI ve KREDİ BANKASI A.Ş.
							</option>
							<option value="0999">Banka Listede Yok</option>
							<option value="0998">YABANCI BANKA KREDİ KARTI
							</option>
							</select> </td>
						</tr>
						<tr>
							<td align="left" colspan="3"><label>
							<input runat="server" id="onay" name="onaylarim" type="checkbox" value="2" /><span style="line-height: 20px;"><strong><a class="cp" href="#" style="color: #666;" title="Mesafeli Satış Sözleşmesi">Mesafeli 
							Satış Sözleşmesi</a>&#39;ni Okudum, Anladım ve Onaylıyorum</strong></span></label></td>
						</tr>
						<tr>
							<td align="left" colspan="3"><br />
							<br />
							<hr style="border: 0px; border-top: #DFDFDF 1px solid; margin-bottom: 15px;" />
							<img class="cp" onclick="Temizle();" src="images/temizle.jpg" />
                                <asp:ImageButton ID="ImageButton1" class="cp ml_5" 
                                    ImageUrl="images/odemeyap.jpg" runat="server" onclick="ImageButton1_Click" />
                            </td>
						</tr>
					</table>
				
			</div>
			
			
		</div>

</div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/YonetimOzel/YonetimOzel.Master" AutoEventWireup="true" CodeBehind="FSifreDegistir.aspx.cs" Inherits="e_ticaret.FSifreDegistir" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    <table style="width: 100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" style="font-size: x-small" 
                    Text="Eski Şifrenizi Giriniz :"></asp:Label>
            </td>
            <td>
                <b>
                <asp:TextBox ID="txteski" runat="server" CssClass="kutucuk" TextMode="Password" 
                    Width="214px"></asp:TextBox>
                </b>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <b>
            <td style="width: 170px; font-size: x-small;">
                Şifreniz :</td>
            <td>
                <b>
                <asp:TextBox ID="txtyeni" runat="server" CssClass="kutucuk" TextMode="Password" 
                    Width="214px"></asp:TextBox>
                <asp:PasswordStrength ID="txtyeni_PasswordStrength" runat="server" 
                    Enabled="True" MinimumLowerCaseCharacters="1" MinimumNumericCharacters="1" 
                    MinimumSymbolCharacters="1" MinimumUpperCaseCharacters="1" 
                    PrefixText="Güvenlik Seviyesi :" TargetControlID="txtyeni" 
                    TextStrengthDescriptions="Çok Zayıf;Zayıf;Ortalama;Güçlü;Çok Güçlü">
                </asp:PasswordStrength>
                </b>
            </td>
            </b>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <b>
            <td style="width: 170px">
                <span style="font-size: x-small">Şifreniz (</span><span 
                    style="color: #CC3300; font-size: x-small">tekrar</span><span 
                    style="font-size: x-small">) :</span></td>
            <td>
                <b>
                <asp:TextBox ID="txtyeni1" runat="server" CssClass="kutucuk" 
                    TextMode="Password" Width="214px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtyeni" ControlToValidate="txtyeni1" 
                    ErrorMessage="Şifreniz Eşleşmedi.." Font-Size="X-Small" ForeColor="Red"></asp:CompareValidator>
                </b>
            </td>
            </b>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 170px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Değiştir" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 170px">
                &nbsp;</td>
            <td>
                <b>
                <asp:Image ID="Image3" runat="server" Height="28px" 
                    ImageUrl="~/images/Tips.png" Visible="False" Width="35px" />
                <asp:Label ID="Label2" runat="server" Font-Size="X-Small" Text="Şifre Değişti." 
                    Visible="False"></asp:Label>
                </b>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</div>
</asp:Content>

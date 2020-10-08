<%@ Page Title="" Language="C#" MasterPageFile="~/YonetimOzel/YonetimOzel.Master" AutoEventWireup="true" CodeBehind="UrunGuncelle.aspx.cs" Inherits="e_ticaret.UrunGuncelle" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc1" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
            <td style="font-size: x-small">
                Ürün Kategorisi</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="LinqDataSource1" DataTextField="KatAdi" DataValueField="Id" 
                    Height="23px" Width="190px">
                </asp:DropDownList>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                    ContextTypeName="e_ticaret.E_ticaretvtDataContext" EntityTypeName="" 
                    OrderBy="KatAdi" TableName="Kategoris">
                </asp:LinqDataSource>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: x-small">
                Ürün Markası</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="LinqDataSource2" DataTextField="Marka" DataValueField="markaKod" 
                    Height="26px" Width="188px">
                </asp:DropDownList>
                <asp:LinqDataSource ID="LinqDataSource2" runat="server" 
                    ContextTypeName="e_ticaret.E_ticaretvtDataContext" EntityTypeName="" 
                    OrderBy="Marka" TableName="tblMarkas">
                </asp:LinqDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: x-small">
                Ürün Adı</td>
            <td>
                <asp:TextBox ID="txtadi" runat="server" Height="26px" Width="275px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtadi" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: x-small">
                Liste Fiyatı</td>
            <td>
                <asp:TextBox ID="txtliste" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: x-small">
                Garanti Süresi</td>
            <td>
                <asp:TextBox ID="txtgaranti" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: x-small">
                Stok</td>
            <td>
                <asp:TextBox ID="txtstok" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: x-small">
                Teslimat Süresi</td>
            <td>
                <asp:TextBox ID="txtteslimat" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: x-small">
                İndirimli Mi</td>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: x-small">
                Kısa Tanıtım</td>
            <td>
                <asp:TextBox ID="txtkisa" runat="server" TextMode="MultiLine" Width="370px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: x-small">
                Ürün resim</td>
            <td>
                <asp:AsyncFileUpload ID="AsyncFileUpload1" runat="server" 
                    onuploadedcomplete="AsyncFileUpload1_UploadedComplete1" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: x-small">
                İçerik</td>
            <td>
                <cc1:Editor ID="Editor1" runat="server" Height="350px" Width="450px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
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
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Ürün Güncelle" Width="156px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

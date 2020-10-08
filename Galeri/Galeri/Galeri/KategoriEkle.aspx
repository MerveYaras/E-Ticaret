<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KategoriEkle.aspx.cs" Inherits="Galeri.KategoriEkle" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
        <asp:TextBox ID="TextBox1" runat="server" Height="49px" TextMode="MultiLine" Width="566px"></asp:TextBox>
        <br />
        <asp:AsyncFileUpload ID="AsyncFileUpload1" runat="server" OnUploadedComplete="AsyncFileUpload1_UploadedComplete" />
        <br />
        <asp:Button ID="Button1" runat="server" Height="28px" Text="Ekle" Width="108px" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>

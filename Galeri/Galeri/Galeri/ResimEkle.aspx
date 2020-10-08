<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResimEkle.aspx.cs" Inherits="Galeri.ResimEkle" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="LinqDataSource1" DataTextField="KategoriAdi" DataValueField="Id" Height="34px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="469px">
        </asp:DropDownList>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Galeri.kaynakDataContext" EntityTypeName="" OrderBy="Id desc" TableName="Kategoris">
        </asp:LinqDataSource>
        <asp:AjaxFileUpload ID="AjaxFileUpload1" runat="server"  AllowedFileTypes="jpg,jpeg"
      MaximumNumberOfFiles="30" OnUploadComplete="AjaxFileUpload1_UploadComplete" />
    
    </div>
    </form>
</body>
</html>

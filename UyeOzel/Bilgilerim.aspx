<%@ Page Title="" Language="C#" MasterPageFile="~/UyeOzel/UyeOzel.Master" AutoEventWireup="true" CodeBehind="Bilgilerim.aspx.cs" Inherits="e_ticaret.Bilgilerim" %>

<%@ Register src="../kod/Uyelik.ascx" tagname="Uyelik" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <uc1:Uyelik ID="Uyelik1" runat="server" />
   
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/AltTema.Master" AutoEventWireup="true" CodeBehind="Markalar.aspx.cs" Inherits="e_ticaret.Markalar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" 
        DataKeyField="markaKod" DataSourceID="LinqDataSource1" 
        RepeatColumns="8" RepeatDirection="Horizontal" Font-Size="Small" 
        BackColor="#93AE34" EnableTheming="True">
        <ItemStyle BorderStyle="Groove" />
        <ItemTemplate>
           
            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "MarkaiUrunler.aspx?MarkaId="+Eval("markaKod") %>' runat="server"><%# Eval("Marka") %></asp:HyperLink>
       <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
        ContextTypeName="e_ticaret.E_ticaretvtDataContext" EntityTypeName="" 
        OrderBy="Marka" TableName="tblMarkas">
    </asp:LinqDataSource>
</asp:Content>

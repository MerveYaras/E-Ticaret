<%@ Page Title="" Language="C#" MasterPageFile="~/YonetimOzel/YonetimOzel.Master" AutoEventWireup="true" CodeBehind="UrunSilGuncelle.aspx.cs" Inherits="e_ticaret.UrunSilGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width:100%;">
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="#93AE34" CellPadding="4" 
                    DataKeyNames="urunKod" DataSourceID="LinqDataSource2" Font-Size="X-Small" 
                    ForeColor="#333333" GridLines="None" Width="667px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="urunKod" HeaderText="Ürün Kod" InsertVisible="False" 
                            ReadOnly="True" SortExpression="urunKod" />
                        <asp:BoundField DataField="urunAd" HeaderText="Ürün Adı" ReadOnly="True" 
                            SortExpression="urunAd" />
                        <asp:BoundField DataField="listeFiyat" HeaderText="Liste Fiyat" ReadOnly="True" 
                            SortExpression="listeFiyat" />
                        <asp:CheckBoxField DataField="IndirimliMi" HeaderText="İndirimli Mi" 
                            ReadOnly="True" SortExpression="IndirimliMi" />
                        <asp:CheckBoxField DataField="Sil" HeaderText="Sil" SortExpression="Sil" />
                        <asp:CommandField ButtonType="Button" CancelText="İptal" EditText="Sil" 
                            ShowEditButton="True" UpdateText="Sil" />
                        <asp:TemplateField HeaderText="Güncelle">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1"  ForeColor="Black" runat="server" 
                                    NavigateUrl='<%# Eval("urunKod", "UrunGuncelle.aspx?UrunKod={0}") %>' 
                                    Text="Detay Al"></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#93AE34" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#93AE34" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#93AE34" ForeColor="White" HorizontalAlign="Center" 
                        Font-Size="X-Small" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:LinqDataSource ID="LinqDataSource2" runat="server" 
                    ContextTypeName="e_ticaret.E_ticaretvtDataContext" EnableDelete="True" 
                    EnableUpdate="True" EntityTypeName="" OrderBy="urunAd" TableName="Uruns">
                </asp:LinqDataSource>
            </td>
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

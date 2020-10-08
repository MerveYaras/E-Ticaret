<%@ Page Title="" Language="C#" MasterPageFile="~/YonetimOzel/YonetimOzel.Master" AutoEventWireup="true" CodeBehind="KategoriEkle.aspx.cs" Inherits="e_ticaret.KategoriEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width: 100%;">
    <tr>
        <td colspan="2" style="font-size: x-small; text-align: center">
            Kategori Ekleme</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="font-size: x-small">
            Kategori Adı</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="225px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Ekle" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td style="font-size: xx-small; color: #CC3300">
            Kategoriler Alfabetik olarak gelmektedir.</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    BackColor="#93AE34" CellPadding="4" Font-Size="X-Small" ForeColor="#333333" 
                    GridLines="Horizontal" Width="675px" HorizontalAlign="Left" 
                    DataKeyNames="Id" DataSourceID="LinqDataSource1" AllowPaging="True">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Kategori No" ReadOnly="True" />
                        <asp:BoundField DataField="KatAdi" HeaderText="Kategori Adı" />
                        <asp:CommandField ButtonType="Button" CancelText="İptal" EditText="Güncele" 
                            ShowEditButton="True" UpdateText="Güncelle" />
                        <asp:CommandField ButtonType="Button" DeleteText="Sil" 
                            ShowDeleteButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" BorderColor="#D7D7D6" BorderStyle="Dotted" 
                        BorderWidth="1px" Font-Size="X-Small" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#93AE34" Font-Bold="True" ForeColor="White" 
                        HorizontalAlign="Left" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                        <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                ContextTypeName="e_ticaret.E_ticaretvtDataContext" EnableDelete="True" 
                EnableUpdate="True" EntityTypeName="" OrderBy="KatAdi" TableName="Kategoris">
            </asp:LinqDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>

</asp:Content>

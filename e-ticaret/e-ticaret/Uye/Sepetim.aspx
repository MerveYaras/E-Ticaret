<%@ Page Title="" Language="C#" MasterPageFile="~/Uye/UyeOzel.Master" EnableEventValidation="true" AutoEventWireup="true" CodeBehind="Sepetim.aspx.cs" Inherits="e_ticaret.Sepetim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 577px">

    <table style="width:95%;">
        <tr>
            <td style="font-size: x-small; text-align: center;" colspan="4">
                <strong>Sepetteki Ürünlerim</strong></td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="#93AE34" CellPadding="4" Font-Size="X-Small" ForeColor="#333333" 
                    GridLines="Horizontal" Width="675px" HorizontalAlign="Left" 
                    onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" 
                    DataKeyNames="UrunKod" onrowcancelingedit="GridView1_RowCancelingEdit" 
                    onrowdeleting="GridView1_RowDeleting">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="UrunKod" HeaderText="Ürün Kod" ReadOnly="True" />
                        <asp:BoundField DataField="UrunAd" HeaderText="Ürün Adı" ReadOnly="True" />
                        <asp:TemplateField HeaderText="Adet">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" Width="50px" Text='<%# Eval("Adet") %>' runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Adet") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Fiyat" HeaderText="Birim Fiyatı" ReadOnly="True" />
                        <asp:CommandField ButtonType="Button" EditText="Güncelle" ShowEditButton="True" 
                            UpdateText="Güncelle" CancelText="İptal" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                                    CommandName="Delete"  OnClientClick="return confirm('Silmek istediğinizden emin misiniz?');" Text="Sepetten Çıkar" />
                            </ItemTemplate>
                        </asp:TemplateField>
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
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="lblurunyok" runat="server" 
                    Text="Sepetiniz Ürün Bulunmamaktadır." Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 124px; height: 16px;">
                </td>
            <td style="height: 16px">
                </td>
            <td style="height: 16px;">
                </td>
            <td style="height: 16px">
                </td>
        </tr>
        <tr>
            <td style="width: 124px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="border: thin groove #93AE34;">
                <b>Ara Toplam:&nbsp;</b></td>
            <td style="border: thin groove #93AE34;">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 124px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="border: thin groove #93AE34;">
                <b>KDV ( %18 )</b></td>
            <td style="border: thin groove #93AE34;">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 124px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="border: thin groove #93AE34;">
                <b>Toplam Tutar :</b></td>
            <td style="border: thin groove #93AE34;">
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 124px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td colspan="2" rowspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Ödeme Yap" 
                    onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 124px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 124px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 124px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 124px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</div>
</asp:Content>

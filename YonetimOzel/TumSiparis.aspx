<%@ Page Title="" Language="C#" MasterPageFile="~/YonetimOzel/YonetimOzel.Master" AutoEventWireup="true" CodeBehind="TumSiparis.aspx.cs" Inherits="e_ticaret.TumSiparis" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td colspan="3">
              
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="#93AE34" CellPadding="4" Font-Size="X-Small" 
                    ForeColor="#333333" GridLines="Horizontal" HorizontalAlign="Left" 
                    Width="675px" onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="SiparisNo" HeaderText="Sipariş No" />
                        <asp:BoundField DataField="AdSoyad" HeaderText="Ad Soyad" />
                        <asp:BoundField DataField="Tarih" HeaderText="Siparis Tarih" ReadOnly="True" />
                        <asp:BoundField DataField="Fiyat" HeaderText="Toplam Fiyatı" ReadOnly="True" />
                        <asp:CheckBoxField DataField="Onay" HeaderText="Ödeme Onayı" />
                        <asp:CommandField ButtonType="Button" SelectText="Detay" 
                            ShowSelectButton="True" />
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
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
                <asp:Label ID="lblurunyok" runat="server" 
                    Text="Siparişiniz Bulunmamaktadır." Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;
                &nbsp;
                &nbsp;
                <table style="width:100%;" id="detayasiparis" runat="server">
                    <tr>
                        <td colspan="4" 
                            style="font-size: x-small; text-decoration: underline; text-align: center">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" 
                                Text="Satın Alınan Ürünler"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    BackColor="#93AE34" CellPadding="4" Font-Size="X-Small" ForeColor="#333333" 
                    GridLines="Horizontal" Width="675px" HorizontalAlign="Left">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="UrunKod" HeaderText="Ürün Kod" ReadOnly="True" />
                        <asp:BoundField DataField="UrunAd" HeaderText="Ürün Adı" ReadOnly="True" />
                        <asp:BoundField DataField="Fiyat" HeaderText="Fiyatı" ReadOnly="True" />
                        <asp:BoundField DataField="Adet" HeaderText="Adet" />
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
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                                ID="Label3" runat="server" Font-Bold="True" 
                                Text="Alıcı Bilgileri" 
                                style="font-size: x-small; text-align: center" Font-Underline="True"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                    BackColor="#93AE34" CellPadding="4" Font-Size="X-Small" ForeColor="#333333" 
                    GridLines="Horizontal" Width="675px" HorizontalAlign="Left">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="AdSoyad" HeaderText="Ad Soyad" ReadOnly="True" />
                        <asp:BoundField DataField="il" HeaderText="İl" ReadOnly="True" />
                        <asp:BoundField DataField="Adres" HeaderText="Adres" ReadOnly="True" />
                        <asp:BoundField DataField="Kargo" HeaderText="Kargo" />
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
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: x-small">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    </table>
            </td>
        </tr>
    </table>
</asp:Content>

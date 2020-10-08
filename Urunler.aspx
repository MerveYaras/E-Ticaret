<%@ Page Title="" Language="C#" MasterPageFile="~/AltTema.Master" AutoEventWireup="true" CodeBehind="Urunler.aspx.cs" Inherits="e_ticaret.Urunler" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
     <div id="products">
      <div class="group">
            <h3 id="katbaslik" runat="server">ÜRÜN
                </h3>
          <table style="width: 144%;">
              <tr>
                  <td rowspan="10" style="width: 83px">
                      <asp:Image ID="Image1" runat="server" Height="232px" Width="208px" />
                  </td>
                  <td style="width: 83px">
                      &nbsp;</td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td style="border: thin groove #93AE34;">
                      <span style="font-size: x-small">Ürün Adı</span></td>
                  <td style="border: thin groove #93AE34">
                      <asp:Label ID="lblurunad" runat="server" Font-Bold="True" Font-Size="X-Small" 
                          Text="Label"></asp:Label>
&nbsp;</td>
              </tr>
              <tr>
                  <td style="border: thin groove #93AE34; font-size: x-small">
                      Ürün Tanıtım</td>
                  <td style="border: thin groove #93AE34">
                      <asp:Label ID="lblozet" runat="server" Font-Bold="True" Font-Size="X-Small" 
                          Text="Label"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td style="border: thin groove #93AE34; font-size: x-small">
                      Ücret</td>
                  <td style="border: thin groove #93AE34">
                      <asp:Label ID="lblucret" runat="server" Font-Bold="True" Font-Size="Small" 
                          Text="Label" Font-Underline="True"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td style="border: thin groove #93AE34; font-size: x-small">
                      Teslimat Süresi</td>
                  <td style="border: thin groove #93AE34">
                      <asp:Label ID="lblteslimat" runat="server" Font-Bold="True" Font-Size="X-Small" 
                          Text="Label"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td style="border: thin groove #93AE34; font-size: x-small">
                      Marka</td>
                  <td style="border: thin groove #93AE34">
                      <asp:Label ID="lblmarka" runat="server" Font-Bold="True" Font-Size="X-Small" 
                          Text="Label"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td style="border: thin groove #93AE34; font-size: x-small">
                      Adet</td>
                  <td style="border: thin groove #93AE34">
                      <asp:DropDownList ID="DropDownList1" runat="server">
                          <asp:ListItem>1</asp:ListItem>
                          <asp:ListItem>2</asp:ListItem>
                          <asp:ListItem>3</asp:ListItem>
                          <asp:ListItem>4</asp:ListItem>
                          <asp:ListItem>5</asp:ListItem>
                          <asp:ListItem>6</asp:ListItem>
                          <asp:ListItem>7</asp:ListItem>
                          <asp:ListItem>8</asp:ListItem>
                      </asp:DropDownList>
                  </td>
              </tr>
              <tr>
                  <td style="width: 83px; font-size: x-small">
                      &nbsp;</td>
                  <td rowspan="2">
                      <asp:ImageButton ID="ImageButton1" runat="server" 
                          ImageUrl="~/images/sepete-ekle.jpg" Width="110px" 
                          onclick="ImageButton1_Click" />
                  </td>
              </tr>
              <tr>
                  <td style="width: 83px; font-size: x-small">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td style="width: 83px; font-size: x-small">
                      &nbsp;</td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td style="width: 83px; font-size: x-small">
                      &nbsp;</td>
                  <td style="width: 83px; font-size: x-small">
                      &nbsp;</td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td colspan="3" style="border: thin groove #93AE34">
                  
                    <div id="aciklamalar" runat="server">
                    </div>
                  </td>
              </tr>
          </table>
        </div>
        </div>
</asp:Content>


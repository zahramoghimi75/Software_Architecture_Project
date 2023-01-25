<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <contenttemplate>
    <table style="margin-right: -95px; width: 1180px;">
        <tr>
            <td colspan="2" align="center" dir="rtl">
                <table class="btn-fullwidth" style="width: 100%">
                    <tr>
                        <td align="left">
                            <br />
                            <br />
                        </td>
                    </tr>                         
                </table>

                 
                <asp:Panel ID="Panel3" runat="server" BackColor="White" Height="1px">
                </asp:Panel>

                 
    <br />
    <table align="center" class="btn-fullwidth" dir="rtl" style="width: 540px">
        <tr>
            <td class="hsize-30" style="height: 35px">
                <asp:Label ID="Label20" runat="server" Text="جستجو براساس دسته بندی محصول :" 
                    Font-Bold="True" Font-Italic="False" Font-Names="Adobe Arabic" 
                    Font-Size="14pt"></asp:Label>
            </td>
            <td class="hsize-30" style="height: 35px">
                <asp:DropDownList ID="com_category" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="category" DataValueField="ID" 
                    font-bold="True" font-names="Adobe Arabic" font-size="14pt" forecolor="Black" 
                    height="30px" width="299px">
                </asp:DropDownList>
            </td>
            <td class="hsize-30" style="height: 35px">
                <asp:ImageButton ID="btn_search1" runat="server" ImageUrl="~/Icon/search.png" 
                    onclick="btn_search1_Click" />
            </td>
        </tr>
        <tr>
            <td class="hsize-40">
                <asp:Label ID="Label21" runat="server" Text="جستجو براساس نام محصول :" 
                    Font-Bold="True" Font-Italic="False" Font-Names="Adobe Arabic" 
                    Font-Size="14pt"></asp:Label>
            </td>
            <td class="hsize-40">
                <asp:TextBox ID="txt_name" runat="server" BorderColor="Silver" BorderStyle="Solid"
                    BorderWidth="1px" Height="30px" Width="294px" Font-Bold="True" 
                    Font-Size="14pt" Font-Names="Adobe Arabic" Font-Italic="False"></asp:TextBox>
            </td>
            <td class="hsize-40">
                <asp:ImageButton ID="btn_search2" runat="server" ImageUrl="~/Icon/search.png" 
                    onclick="btn_search2_Click" />
            </td>
        </tr>
        <tr>
            <td style="height: 39px">
                <asp:Label ID="Label22" runat="server" Text="جستجو در محدوده قیمت :" 
                    Font-Bold="True" Font-Italic="False" Font-Names="Adobe Arabic" Font-Size="14pt"></asp:Label>
            </td>
            <td style="height: 39px">
                <asp:TextBox ID="txt_price1" runat="server" BorderColor="Silver" BorderStyle="Solid"
                    BorderWidth="1px" Height="30px" Width="136px" Font-Bold="True" 
                    Font-Size="14pt" Font-Names="Adobe Arabic" Font-Italic="False"></asp:TextBox>
                &nbsp;-&nbsp;
                <asp:TextBox ID="txt_price2" runat="server" BorderColor="Silver" BorderStyle="Solid"
                    BorderWidth="1px" Height="30px" Width="138px" Font-Bold="True" 
                    Font-Size="14pt" Font-Names="Adobe Arabic" Font-Italic="False"></asp:TextBox>
            </td>
            <td style="height: 39px">
                <asp:ImageButton ID="btn_search3" runat="server" ImageUrl="~/Icon/search.png" 
                    onclick="btn_search3_Click" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    </td> </tr> <tr> <td colspan="2"> 
            <asp:DataList ID="gallery_dlist" runat="server"
    RepeatColumns="3" RepeatDirection="Horizontal" Width="100%" BackColor="White"> <ItemTemplate> 
                    <br />
                    <table
    align="center" class="btn-fullwidth" dir="rtl" 
                        
                        style="border: thin solid #ADEEAA; width: 90%; height: 214px;border-radius:5px;">
    <tr> <td align="center" style="height: 195px">
        <asp:Image ID="Image15" runat="server"
    BorderColor="#CCCCCC" Height="200px" ImageUrl='<%# Bind("img_address") %>' Width="250px"
    /> </td> </tr> <tr> <td align="center" style="height: 27px"> 
                    <asp:Label ID="Label8" runat="server" Font-Bold="True"
    Font-Names="Adobe Arabic" Font-Size="14pt" ForeColor="Black" Text='<%# Bind("name_cala") %>'></asp:Label> </td> </tr> <tr> 
                    <td align="center" style="height: 27px"> 
                    <asp:Label ID="Label9" runat="server"
    Font-Bold="True" Font-Names="Adobe Arabic" Font-Size="14pt" ForeColor="#CC0000" 
                        Text='دسته بندی :'></asp:Label> &nbsp;<asp:Label ID="Label19" runat="server" Font-Bold="True"
    Font-Names="Adobe Arabic" Font-Size="14pt" ForeColor="#CC0000" Text='<%# Bind("category") %>'></asp:Label> </td> </tr> <tr> 
                    <td align="center" style="height: 27px"> 
                    <asp:Label ID="Label10" runat="server"
    Font-Bold="True" Font-Names="Adobe Arabic" Font-Size="16pt" ForeColor="#0066FF" 
                        Text='<%# Bind("price") %>'></asp:Label> 
                        <asp:Label ID="Label17" runat="server" Font-Bold="True"
    Font-Names="Adobe Arabic" Font-Size="16pt" ForeColor="#3366FF" Text="ریال"></asp:Label>
    </td> </tr> </tr> </table> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;<br /> </ItemTemplate> </asp:DataList> </td> </tr> <tr> <td> 
            <asp:TextBox
    ID="txt_shenas" runat="server" Visible="False"></asp:TextBox> <asp:TextBox ID="txt_price"
    runat="server" Visible="False"></asp:TextBox> 
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                connectionstring="<%$ ConnectionStrings:ShopOnlineDbsConnectionString %>" 
                deletecommand="DELETE FROM [TblCategory] WHERE [ID] = @ID" 
                insertcommand="INSERT INTO [TblCategory] ([category]) VALUES (@category)" 
                selectcommand="SELECT [ID], [category] FROM [TblCategory]" 
                updatecommand="UPDATE [TblCategory] SET [category] = @category WHERE [ID] = @ID">
                <deleteparameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </deleteparameters>
                <insertparameters>
                    <asp:Parameter Name="category" Type="String" />
                </insertparameters>
                <updateparameters>
                    <asp:Parameter Name="category" Type="String" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </updateparameters>
            </asp:SqlDataSource>
            </td> <td> &nbsp;</td> </tr> </table>
                        </contenttemplate>
    </asp:UpdatePanel>
</asp:Content>


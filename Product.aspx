<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Product.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content1" runat="Server">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap-rtl.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="Scripts/bootstrap.js" type="text/javascript"></script>
    <style>
        .modalbackground
        {
            background-color: Black;
            opacity: 0.5;
            z-index: 20;
        }
        .modalpopup
        {
            position: relative;
            width: 100%;
        }
    </style>
<%--    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>--%>
<%--    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>--%>

                <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </cc1:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>

            <table style="margin-right: -95px; width: 1180px;">
                <tr>
                    <td colspan="2" align="center" dir="rtl">
                        <table class="btn-fullwidth" style="width: 100%">
                            <tr>
                                <td align="left">
                                    <br />
                                    <asp:ImageButton ID="btn_basket" runat="server" ImageUrl="~/Icon/baskets.png" OnClick="btn_basket_Click" />
                                    <asp:ImageButton ID="btn_empty" runat="server" ImageUrl="~/Icon/baskets.png" OnClick="btn_empty_Click"
                                        Visible="False" />
                                    <br />
                                    &nbsp;
                                    <asp:Label ID="lbl_count" runat="server" ForeColor="#299160" Text="0" Font-Bold="True"
                                        Font-Names="Adobe Arabic" Font-Size="15pt"></asp:Label>
                                    &nbsp;<asp:Label ID="Label24" runat="server" ForeColor="#299160" Text="عدد" Font-Bold="True"
                                        Font-Names="Adobe Arabic" Font-Size="15pt"></asp:Label>
                                    &nbsp;
                                    <br />
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShopOnlineDbsConnectionString %>"
                                        DeleteCommand="DELETE FROM [TblBasket] WHERE [ID] = @ID" InsertCommand="INSERT INTO [TblBasket] ([code], [name], [price], [count], [price_col], [pic]) VALUES (@code, @name, @price, @count, @price_col, @pic)"
                                        SelectCommand="SELECT [ID], [code], [name], [price], [count], [price_col], [pic] FROM [TblBasket]"
                                        UpdateCommand="UPDATE [TblBasket] SET [code] = @code, [name] = @name, [price] = @price, [date] = @date, [count] = @count, [price_col] = @price_col, [pic] = @pic WHERE [ID] = @ID">
                                        <DeleteParameters>
                                            <asp:Parameter Name="ID" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="shenas" Type="String" />
                                            <asp:Parameter Name="name" Type="String" />
                                            <asp:Parameter Name="price" Type="Int64" />
                                            <asp:Parameter Name="count" Type="Int32" />
                                            <asp:Parameter Name="price_col" Type="Int64" />
                                            <asp:Parameter Name="pic" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="shenas" Type="String" />
                                            <asp:Parameter Name="name" Type="String" />
                                            <asp:Parameter Name="price" Type="Int64" />
                                            <asp:Parameter Name="count" Type="Int32" />
                                            <asp:Parameter Name="price_col" Type="Int64" />
                                            <asp:Parameter Name="pic" Type="String" />
                                            <asp:Parameter Name="ID" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                    <asp:GridView ID="GridView_Basket" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
                                        DataSourceID="SqlDataSource1" GridLines="None" ShowHeader="False" Width="300px"
                                        OnRowDeleted="GridView_Basket_RowDeleted" OnRowDeleting="GridView_Basket_RowDeleting"
                                        Visible="False">
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" DeleteText="&lt;img src=&quot;Icon/remove.png&quot;&gt;">
                                                <HeaderStyle Width="35px" />
                                                <ItemStyle Width="35px" />
                                            </asp:CommandField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <table class="services_box">
                                                        <tr>
                                                            <td align="center" rowspan="2" style="width: 50px">
                                                                &nbsp;
                                                            </td>
                                                            <td rowspan="2" style="width: 10px">
                                                                <asp:Image ID="Image18" runat="server" ImageUrl='<%# Bind("pic") %>' Width="45px" />
                                                            </td>
                                                            <td class="hsize-30" style="width: 100%">
                                                                <asp:Label ID="Label31" runat="server" Font-Bold="True" Font-Size="13pt" Text='<%# Bind("name") %>'
                                                                    Font-Names="Adobe Arabic"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="hsize-30" style="height: 29px">
                                                                <asp:Label ID="Label33" runat="server" ForeColor="#0066CC" Text='<%# Bind("count") %>'
                                                                    Font-Bold="True" Font-Names="Adobe Arabic" Font-Size="13pt"></asp:Label>
                                                                &nbsp;<asp:Label ID="Label34" runat="server" ForeColor="#0066CC" Text="عدد" Font-Bold="True"
                                                                    Font-Names="Adobe Arabic" Font-Size="13pt"></asp:Label>
                                                                &nbsp;-
                                                                <asp:Label ID="Label35" runat="server" ForeColor="#339966" Text='<%# Bind("price_col") %>'
                                                                    Font-Bold="True" Font-Names="Adobe Arabic" Font-Size="13pt"></asp:Label>
                                                                &nbsp;<asp:Label ID="Label36" runat="server" ForeColor="#339966" Text="ریال" Font-Bold="True"
                                                                    Font-Names="Adobe Arabic" Font-Size="13pt"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3">
                                                                <asp:Panel ID="Panel2" runat="server" BackColor="Silver" Height="1px">
                                                                </asp:Panel>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                    <asp:Label ID="lbl_tprice" runat="server" Font-Bold="True" Font-Names="Adobe Arabic"
                                        Font-Size="17pt" ForeColor="#003399" Text="0" Visible="False"></asp:Label>
                                    <br />
                                    <asp:Label ID="lbl1" runat="server" Font-Bold="True" Font-Names="Adobe Arabic" Font-Size="17pt"
                                        ForeColor="#990033" Text="جمع مبلغ خرید :" Visible="False"></asp:Label>
                                    &nbsp;<asp:Label ID="lbl_price" runat="server" Font-Bold="True" Font-Names="Adobe Arabic"
                                        Font-Size="17pt" ForeColor="#003399" Text="0" Visible="False"></asp:Label>
                                    &nbsp;<asp:Label ID="lbl2" runat="server" Font-Bold="True" Font-Names="Adobe Arabic"
                                        Font-Size="17pt" ForeColor="#990033" Visible="False"></asp:Label>
                                    <br />
                                    <br />
                                    <asp:Button ID="btn_pay" runat="server" CssClass="btn btn-info" Text="تسویه حساب محصول"
                                        ValidationGroup="a" Width="265px" Height="45px" Visible="False" OnClick="btn_pay_Click"
                                        Font-Bold="True" Font-Names="Adobe Arabic" Font-Size="17pt" />
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
                                    <asp:Label ID="Label20" runat="server" Text="جستجو براساس دسته بندی محصول :" Font-Bold="True"
                                        Font-Italic="False" Font-Names="Adobe Arabic" Font-Size="14pt"></asp:Label>
                                </td>
                                <td class="hsize-30" style="height: 35px">
                                    <asp:DropDownList ID="com_category" runat="server" DataSourceID="SqlDataSource2"
                                        DataTextField="category" DataValueField="ID" Font-Bold="True" Font-Names="Adobe Arabic"
                                        Font-Size="14pt" ForeColor="Black" Height="30px" Width="299px">
                                    </asp:DropDownList>
                                </td>
                                <td class="hsize-30" style="height: 35px">
                                    <asp:ImageButton ID="btn_search1" runat="server" ImageUrl="~/Icon/search.png" OnClick="btn_search1_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="hsize-40">
                                    <asp:Label ID="Label21" runat="server" Text="جستجو براساس نام محصول :" Font-Bold="True"
                                        Font-Italic="False" Font-Names="Adobe Arabic" Font-Size="14pt"></asp:Label>
                                </td>
                                <td class="hsize-40">
                                    <asp:TextBox ID="txt_name" runat="server" BorderColor="Silver" BorderStyle="Solid"
                                        BorderWidth="1px" Height="30px" Width="294px" Font-Bold="True" Font-Size="14pt"
                                        Font-Names="Adobe Arabic" Font-Italic="False"></asp:TextBox>
                                </td>
                                <td class="hsize-40">
                                    <asp:ImageButton ID="btn_search2" runat="server" ImageUrl="~/Icon/search.png" OnClick="btn_search2_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 39px">
                                    <asp:Label ID="Label22" runat="server" Text="جستجو در محدوده قیمت :" Font-Bold="True"
                                        Font-Italic="False" Font-Names="Adobe Arabic" Font-Size="14pt"></asp:Label>
                                </td>
                                <td style="height: 39px">
                                    <asp:TextBox ID="txt_price1" runat="server" BorderColor="Silver" BorderStyle="Solid"
                                        BorderWidth="1px" Height="30px" Width="136px" Font-Bold="True" Font-Size="14pt"
                                        Font-Names="Adobe Arabic" Font-Italic="False"></asp:TextBox>
                                    &nbsp;-&nbsp;
                                    <asp:TextBox ID="txt_price2" runat="server" BorderColor="Silver" BorderStyle="Solid"
                                        BorderWidth="1px" Height="30px" Width="137px" Font-Bold="True" Font-Size="14pt"
                                        Font-Names="Adobe Arabic" Font-Italic="False"></asp:TextBox>
                                </td>
                                <td style="height: 39px">
                                    <asp:ImageButton ID="btn_search3" runat="server" ImageUrl="~/Icon/search.png" OnClick="btn_search3_Click" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:DataList ID="gallery_dlist" runat="server" RepeatColumns="4" RepeatDirection="Horizontal"
                            Width="100%" OnItemCommand="gallery_dlist_ItemCommand" BackColor="White">
                            <ItemTemplate>
                                <br />
                                <table align="center" class="btn-fullwidth" dir="rtl" style="border: thin solid #D7CFC1;
                                    width: 90%; height: 214px; border-radius: 5px;">
                                    <tr>
                                        <td align="center" style="height: 195px">
                                            <asp:Image ID="Image15" runat="server" BorderColor="#CCCCCC" Height="140px" ImageUrl='<%# Bind("img_address") %>'
                                                Width="210px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="height: 27px">
                                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Adobe Arabic"
                                                Font-Size="13pt" ForeColor="Black" Text='<%# Bind("name_cala") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="height: 27px">
                                            <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Names="Adobe Arabic"
                                                Font-Size="14pt" ForeColor="#CC0000" Text='<%# Bind("category") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="height: 27px">
                                            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Adobe Arabic"
                                                Font-Size="16pt" ForeColor="#0066FF" Text='<%# Bind("price") %>'></asp:Label>
                                            <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Adobe Arabic"
                                                Font-Size="16pt" ForeColor="#3366FF" Text="ریال"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="hsize-40" style="height: 54px">
                                            <asp:Button ID="btn_pay" runat="server" CssClass="btn btn-success" Text="افزودن به سبد خرید"
                                                Width="200px" CommandName="select" CommandArgument='<%# Bind("code") %>' Font-Bold="True"
                                                Font-Names="Adobe Arabic" Font-Size="14pt" Height="40px" />
                                            <br />
                                        </td>
                                    </tr>
                                    </tr>
                                    <tr>
                                        <td align="center" class="hsize-40" style="height: 54px">
                                            <asp:Button ID="Button4" runat="server" CommandName="show" Font-Bold="True" 
                                                Font-Names="adobe arabic" Font-Size="14pt" Height="40px" Text="جزئیات محصول" 
                                                Width="200px" CssClass="btn btn-info" 
                                                CommandArgument='<%# Bind("code") %>'/>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="height: 16px">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;<br />

                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txt_shenas" runat="server" Visible="False"></asp:TextBox>
                        <asp:TextBox ID="txt_price" runat="server" Visible="False"></asp:TextBox>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ShopOnlineDbsConnectionString %>"
                            DeleteCommand="DELETE FROM [TblCategory] WHERE [ID] = @ID" InsertCommand="INSERT INTO [TblCategory] ([category]) VALUES (@category)"
                            SelectCommand="SELECT [ID], [category] FROM [TblCategory]" UpdateCommand="UPDATE [TblCategory] SET [category] = @category WHERE [ID] = @ID">
                            <DeleteParameters>
                                <asp:Parameter Name="ID" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="category" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="category" Type="String" />
                                <asp:Parameter Name="ID" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>











 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" BorderStyle="None" />
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
        Text="Button" Visible="False" />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" placeholder="کد را وارد کنید" 
                Visible="False"></asp:TextBox>
        <br />

        <asp:Panel ID="Panel1" runat="server" CssClass="modalpopup">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            جزئیات محصول
                            <div class="pull-left">
                                <button id="btn_exit" 
                                    style="border-style: none; background-color: #f5f5f5;">&times</button>
                            </div>
                        </div>
                        <div class="panel-body">
                        <div class="col-md-12">
                            <asp:TextBox ID="txtDescript" runat="server" BorderColor="White" Height="200px" 
                                ReadOnly="True" TextMode="MultiLine" Visible="False" Width="100%"></asp:TextBox>
                                </div>
                            <div class="col-md-12" style="margin:10px;">
                            <asp:Label ID="lblDescript" runat="server" Text="Label" Visible="True"></asp:Label>
                            </div>           
                            <br />                 
                            <asp:Image ID="imgCala" runat="server" />
                            <br />
                        </div>
                    </div>
                </div>
            </div>
        </asp:Panel>
        <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" CancelControlID="btn_exit"
            PopupControlID="Panel1" TargetControlID="Button1" BackgroundCssClass="modalbackground">
        </cc1:ModalPopupExtender>

            </ContentTemplate>
    </asp:UpdatePanel>
<%--        </ContentTemplate>
    </asp:UpdatePanel>--%>
</asp:Content>

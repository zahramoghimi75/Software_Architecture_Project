<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.master" AutoEventWireup="true" CodeFile="Orders.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content1" Runat="Server">
    <br />
    <table align="center" class="services_box" dir="rtl" 
        style="width: 600px; margin-right: 400px;">
        <tr>
            <td>
            <asp:Label ID="Label2" runat="server" ForeColor="Black" 
                    Text="جستجو براساس شناسه خرید و نام خریدار :" Font-Size="14pt" Font-Bold="True" 
                    Font-Names="Adobe Arabic"></asp:Label>
            </td>
            <td>
            <asp:TextBox ID="txt_search" runat="server" BorderColor="Silver" 
                BorderStyle="Solid" BorderWidth="1px" Height="28px" Width="300px" 
                Font-Bold="True" Font-Size="14pt" Font-Names="Adobe Arabic" ForeColor="Black"></asp:TextBox>
            </td>
            <td>
                <asp:ImageButton ID="btn_search" runat="server" ImageUrl="~/Icon/search.png" 
                    onclick="btn_search_Click" />
            </td>
        </tr>
    </table>
    <br />
    <table align="right" class="services_box" dir="rtl" 
        style="margin-right: 100px; width: 1000px;">
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server" BackColor="Silver" Height="1px">
                </asp:Panel>
                <br />
            <asp:Label ID="Label3" runat="server" ForeColor="Blue" 
                    Text="لیست خریداران" Font-Size="20pt" Font-Bold="True" 
                    Font-Names="Adobe Arabic"></asp:Label>
                <br />
                <hr />
            <asp:GridView ID="GridView_Buyer" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" BackColor="White" CellPadding="4" 
                DataSourceID="SqlDataSource1" 
                Width="1120px" DataKeyNames="sh_buy" 
                    onselectedindexchanged="GridView_Buyer_SelectedIndexChanged">

<SortedAscendingCellStyle BackColor="#EDF6F6"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#0D4AC4"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#D6DFDF"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#002876"></SortedDescendingHeaderStyle>
                <AlternatingRowStyle BackColor="#EDDEEB" />
                <Columns>
                    <asp:CommandField SelectText="انتخاب مشتری" ShowSelectButton="True">
                    <ItemStyle ForeColor="#0099FF" />
                    </asp:CommandField>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="ID" Visible="False" />
                    <asp:BoundField DataField="sh_buy" HeaderText="شناسه خرید" ReadOnly="True" 
                        SortExpression="sh_buy" />
                    <asp:BoundField DataField="name" HeaderText="نام خریدار" 
                        SortExpression="name" />
                    <asp:BoundField DataField="tel" HeaderText="تلفن" SortExpression="tel" />
                    <asp:BoundField DataField="code_posti" HeaderText="کد پستی" 
                        SortExpression="code_posti" />
                    <asp:BoundField DataField="address" HeaderText="آدرس" 
                        SortExpression="address" />
                    <asp:BoundField DataField="date_buy" HeaderText="تاریخ خرید" 
                        SortExpression="date_buy" />
                    <asp:BoundField DataField="price_final" DataFormatString="{0:###,##0}" 
                        HeaderText="جمع کل سفارش-تومان" SortExpression="price_final" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#3366CC" Font-Bold="True" Font-Size="14pt" 
                    ForeColor="White" Height="40px" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Font-Names="Adobe Arabic" />
                <PagerSettings Mode="NextPrevious" />
                <PagerStyle BackColor="#3366CC" ForeColor="White" HorizontalAlign="Left" />
                <RowStyle BackColor="White" BorderColor="#CCCCCC" Font-Bold="True" 
                    ForeColor="Black" HorizontalAlign="Center" Height="35px" Font-Size="13pt" 
                    Font-Names="Adobe Arabic" />
                <SelectedRowStyle BackColor="#FF66CC" Font-Bold="True" ForeColor="White" 
                    Font-Size="13pt" Font-Names="Adobe Arabic" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />

            </asp:GridView>
                <br />
                <br />
            <asp:Label ID="Label4" runat="server" ForeColor="#FF9900" 
                    Text="لیست سفارشات مشتری" Font-Size="20pt" Font-Bold="True" 
                    Font-Names="Adobe Arabic"></asp:Label>
                <br />
                <hr />
            <asp:GridView ID="GridView_Product" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" BackColor="White" CellPadding="4" 
                DataSourceID="SqlDataSource2" 
                Width="1120px" DataKeyNames="code">

<SortedAscendingCellStyle BackColor="#EDF6F6"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#0D4AC4"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#D6DFDF"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#002876"></SortedDescendingHeaderStyle>
                <AlternatingRowStyle BackColor="#D9EEF2" />
                <Columns>
                    <asp:BoundField DataField="code" HeaderText="کد کالا" ReadOnly="True" 
                        SortExpression="code" />
                    <asp:BoundField DataField="name_cala" HeaderText="نام کالا" 
                        SortExpression="name_cala" />
                    <asp:BoundField DataField="category" HeaderText="دسته بندی" 
                        SortExpression="category" />
                    <asp:BoundField DataField="price" HeaderText="قیمت واحد-تومان" 
                        SortExpression="price" DataFormatString="{0:###,##0}" />
                    <asp:BoundField DataField="count" HeaderText="تعداد" SortExpression="count" />
                    <asp:BoundField DataField="price_col" HeaderText="قیمت کل-تومان" 
                        SortExpression="price_col" DataFormatString="{0:###,##0}" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#009999" Font-Bold="True" Font-Size="14pt" 
                    ForeColor="White" Height="40px" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Font-Names="Adobe Arabic" />
                <PagerSettings Mode="NextPrevious" />
                <PagerStyle BackColor="#009999" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" BorderColor="#CCCCCC" Font-Bold="True" 
                    ForeColor="Black" HorizontalAlign="Center" Height="35px" Font-Size="13pt" 
                    Font-Names="Adobe Arabic" />
                <SelectedRowStyle BackColor="#990033" Font-Bold="True" ForeColor="White" 
                    Font-Size="10pt" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />

            </asp:GridView>
                &nbsp;
                <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ShopOnlineDbsConnectionString %>" 
                
                    
                    
                    SelectCommand="SELECT [ID], [sh_buy], [name], [tel], [code_posti], [address], [date_buy], [price_final] FROM [TblBuyer]" 
                    DeleteCommand="DELETE FROM [TblBuyer] WHERE [sh_buy] = @sh_buy" 
                    InsertCommand="INSERT INTO [TblBuyer] ([sh_buy], [name], [tel], [code_posti], [address], [date_buy], [price_final]) VALUES (@sh_buy, @name, @tel, @code_posti, @address, @date_buy, @price_final)" 
                    UpdateCommand="UPDATE [TblBuyer] SET [ID] = @ID, [name] = @name, [tel] = @tel, [code_posti] = @code_posti, [address] = @address, [date_buy] = @date_buy, [price_final] = @price_final WHERE [sh_buy] = @sh_buy">
                <DeleteParameters>
                    <asp:Parameter Name="sh_buy" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="sh_buy" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="tel" Type="String" />
                    <asp:Parameter Name="code_posti" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="date_buy" Type="String" />
                    <asp:Parameter Name="price_final" Type="Int64" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="tel" Type="String" />
                    <asp:Parameter Name="code_posti" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="date_buy" Type="String" />
                    <asp:Parameter Name="price_final" Type="Int64" />
                    <asp:Parameter Name="sh_buy" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
               
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ShopOnlineDbsConnectionString %>" 
                
                    
                    SelectCommand="SELECT * FROM [ViewBasket]">
            </asp:SqlDataSource>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>


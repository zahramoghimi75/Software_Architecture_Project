<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content1" Runat="Server">
    <br />
    <table align="center" class="services_box" dir="rtl" style="width: 500px">
        <tr>
            <td>
            <asp:Label ID="Label2" runat="server" ForeColor="Black" 
                    Text="شناسه خرید را وارد کنید :" Font-Size="14pt" Font-Bold="True" 
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
    <table align="center" class="services_box" dir="rtl" 
    
        style="border: thin solid #CCCCCC; margin-right: -50px; background-color: #FFFFFF; width: 1100px;">
        <tr>
            <td align="center">
                <br />
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" ForeColor="#990033" Text="نام خریدار :" 
                    Font-Size="14pt" Font-Bold="True" Font-Names="Adobe Arabic"></asp:Label>
            &nbsp;<asp:Label ID="lbl_name" runat="server" ForeColor="#339966" Font-Size="14pt" 
                    Font-Bold="True" Font-Names="Adobe Arabic"></asp:Label>
            &nbsp;/
            <asp:Label ID="Label4" runat="server" ForeColor="#990033" Text="تاریخ خرید :" 
                    Font-Size="14pt" Font-Bold="True" Font-Names="Adobe Arabic"></asp:Label>
            &nbsp;<asp:Label ID="lbl_date" runat="server" ForeColor="#339966" Font-Size="14pt" 
                    Font-Bold="True" Font-Names="Adobe Arabic"></asp:Label>
            &nbsp;<br />
                <br />
            <asp:GridView ID="GridView_Product" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" BackColor="White" CellPadding="4" 
                DataSourceID="SqlDataSource1" 
                Width="1000px" DataKeyNames="code">

<SortedAscendingCellStyle BackColor="#EDF6F6"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#0D4AC4"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#D6DFDF"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#002876"></SortedDescendingHeaderStyle>
                <AlternatingRowStyle BackColor="#E1F0FF" />
                <Columns>
                    <asp:BoundField DataField="code" HeaderText="کد محصول" ReadOnly="True" 
                        SortExpression="code" />
                    <asp:BoundField DataField="name_cala" HeaderText="نام محصول" 
                        SortExpression="name_cala" />
                    <asp:BoundField DataField="category" HeaderText="دسته بندی" 
                        SortExpression="category" />
                    <asp:BoundField DataField="price" DataFormatString="{0:###,###}" 
                        HeaderText="قیمت واحد-تومان" SortExpression="price" />
                    <asp:BoundField DataField="count" HeaderText="تعداد" SortExpression="count" />
                    <asp:BoundField DataField="price_col" DataFormatString="{0:###,###}" 
                        HeaderText="قیمت کل - تومان" SortExpression="price_col" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#993399" Font-Bold="True" Font-Size="14pt" 
                    ForeColor="White" Height="40px" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Font-Names="Adobe Arabic" />
                <PagerSettings Mode="NextPrevious" />
                <PagerStyle BackColor="#FF9900" ForeColor="Black" HorizontalAlign="Left" />
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
                <asp:Label ID="lbl_tsum" runat="server" ForeColor="#0033CC" Font-Size="14pt" 
                    Font-Bold="True" Font-Names="B Nazanin" Visible="False">0</asp:Label>
                <br />
            &nbsp;
            &nbsp;<asp:Label ID="Label5" runat="server" ForeColor="#990033" Text="جمع مبلغ نهایی :" 
                    Font-Size="12pt" Font-Bold="True" Font-Names="B Nazanin"></asp:Label>
            &nbsp;<asp:Label ID="lbl_sum" runat="server" ForeColor="#0033CC" Font-Size="14pt" 
                    Font-Bold="True" Font-Names="B Nazanin">0</asp:Label>
            &nbsp;&nbsp;
                <br />
                <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ShopOnlineDbsConnectionString %>" 
                
                    
                    SelectCommand="SELECT * FROM [ViewBasket]">
            </asp:SqlDataSource>
                <br />
            </td>
        </tr>
    </table>
    <br />
    <br />
</asp:Content>


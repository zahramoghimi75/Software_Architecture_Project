<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content1" Runat="Server">
    <br />
    <table align="right" class="nav-justified" dir="rtl" 
        
        
        style="border: thin outset #FFFFFF; margin-right: 80px; width: 1190px; background-color: #FFFFFF;">
        <tr>
            <td style="height: 52px; background-color: #00CC99;" colspan="2">
                &nbsp;
                <asp:label id="Label11" runat="server" font-names="Adobe Arabic" font-size="22pt"
                    forecolor="White" text="فرم تعریف محصول" font-bold="True"></asp:label>
            </td>
        </tr>
        <tr>
            <td style="height: 23px">
            </td>
            <td style="height: 23px" align="center">
    <asp:label id="lbl_msg" runat="server" font-names="B Yekan" font-size="10pt" forecolor="#0066FF">
    </asp:label>
            </td>
        </tr>
        <tr>
            <td style="height: 31px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:label id="Label1" runat="server" font-names="Adobe Arabic" font-size="14pt"
                    forecolor="Black" text="کد محصول :" font-bold="True"></asp:label>
            </td>
            <td style="height: 31px">
                <asp:textbox id="txt_code" runat="server" forecolor="Black" width="200px" font-names="Adobe Arabic"
                    font-size="14pt" font-bold="True" height="25px"></asp:textbox>
            </td>
        </tr>
        <tr>
            <td style="height: 31px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:label id="Label2" runat="server" font-names="Adobe Arabic" font-size="14pt"
                    forecolor="Black" text="دسته بندی :" font-bold="True"></asp:label>
            </td>
            <td style="height: 31px">
                <asp:dropdownlist id="com_category" runat="server" width="208px" 
                    forecolor="Black" font-bold="True"
                    font-names="Adobe Arabic" font-size="14pt" height="27px" 
                    DataSourceID="SqlDataSource2" DataTextField="category" DataValueField="ID">
                </asp:dropdownlist>
            </td>
        </tr>
                <tr>
            <td style="height: 31px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:label id="Label8" runat="server" font-names="Adobe Arabic" font-size="14pt"
                    forecolor="Black" text="نام محصول :" font-bold="True"></asp:label>
            </td>
            <td style="height: 31px">
                <asp:textbox id="txt_name" runat="server" forecolor="Black" width="450px" font-names="Adobe Arabic"
                    font-size="14pt" font-bold="True" height="25px"></asp:textbox>
            </td>
        </tr>
        <tr>
            <td style="height: 31px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:label id="Label9" runat="server" font-names="Adobe Arabic" font-size="14pt"
                    forecolor="Black" text="قیمت :" font-bold="True"></asp:label>
            </td>
            <td style="height: 31px">
                <asp:textbox id="txt_price" runat="server" forecolor="Black" width="200px" font-names="Adobe Arabic"
                    font-size="14pt" font-bold="True" height="25px">0</asp:textbox>
                &nbsp;<asp:label id="Label10" runat="server" font-names="B Yekan" font-size="10pt"
                    forecolor="Black" text="تومان"></asp:label>
            </td>
        </tr>
        <tr>
            <td style="height: 79px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:label id="Label6" runat="server" font-names="Adobe Arabic" font-size="14pt"
                    forecolor="Black" text="ویژگی های محصول :" font-bold="True"></asp:label>
            </td>
            <td style="height: 79px">
                <asp:textbox id="txt_des" runat="server" forecolor="Black" height="120px" textmode="MultiLine"
                    width="750px" font-names="Adobe Arabic" font-size="14pt" font-bold="True"></asp:textbox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:label id="Label7" runat="server" font-names="Adobe Arabic" font-size="14pt"
                    forecolor="Black" text="تصویر محصول :" font-bold="True"></asp:label>
            </td>
            <td>
                <asp:image id="Image_poduct" runat="server" height="130px" width="150px" />
                <asp:fileupload id="FileUpload1" runat="server" font-size="10pt" forecolor="Black" />
            </td>
        </tr>
        <tr>
            <td class="scrtabs-tab-container" style="height: 74px">
            </td>
            <td class="scrtabs-tab-container" style="height: 74px">
                <asp:button id="btnsave" runat="server" font-names="B Yekan" font-size="10pt" forecolor="White"
                    height="42px" onclick="btnsave_Click" text="ثبت محصول" 
                    width="375px" BackColor="#339966"/>
                <asp:button id="btnedit" runat="server" font-names="B Yekan" font-size="10pt" forecolor="White"
                    height="42px" onclick="btnedit_Click" text="ویرایش محصول" 
                    width="375px" BackColor="#3399FF"/>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <br />
                <asp:gridview id="GridView_Product" runat="server" allowpaging="True" autogeneratecolumns="False"
                    backcolor="White" bordercolor="Silver" borderstyle="Solid" borderwidth="2px"
                    cellpadding="4" datakeynames="code" datasourceid="SqlDataSource1" onselectedindexchanged="GridView_Product_SelectedIndexChanged"
                    width="1120px">
                    <alternatingrowstyle backcolor="#E0FCFE" />
                    <columns>
                        <asp:CommandField SelectText="انتخاب محصول" ShowSelectButton="True">
                        <ItemStyle ForeColor="#0066FF" Width="100px" />
                        </asp:CommandField>
                        <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" 
                            Visible="False"></asp:BoundField>
                        <asp:BoundField DataField="code" HeaderText="کد محصول" 
                            SortExpression="code" ReadOnly="True">
                        </asp:BoundField>
                        <asp:BoundField DataField="cat_id" HeaderText="cat_id" 
                            SortExpression="cat_id" Visible="False">
                        </asp:BoundField>
                        <asp:BoundField DataField="category" HeaderText="گروه محصول" 
                            SortExpression="category">
                        </asp:BoundField>
                        <asp:BoundField DataField="name_cala" HeaderText="نام محصول" 
                            SortExpression="name_cala">
                        </asp:BoundField>
                        <asp:BoundField DataField="price" HeaderText="قیمت محصول" 
                            SortExpression="price" DataFormatString="{0:#,###}">
                        </asp:BoundField>
                        <asp:BoundField DataField="img_address" HeaderText="img_address" 
                            SortExpression="img_address" Visible="False">
                        </asp:BoundField>
                        <asp:BoundField DataField="descript" HeaderText="ویژگی محصول" 
                            SortExpression="descript" />
                    </columns>
                    <footerstyle backcolor="#99CCCC" forecolor="#003399" />
                    <headerstyle backcolor="#00CC99" bordercolor="Black" borderstyle="Solid" borderwidth="1px"
                        font-bold="True" font-names="Adobe Arabic" font-size="15pt" forecolor="White"
                        height="45px" horizontalalign="Center" verticalalign="Middle" />
                    <pagersettings mode="NextPrevious" />
                    <pagerstyle backcolor="#00CC99" forecolor="White" horizontalalign="Left" font-bold="True"
                        font-size="20pt" />
                    <rowstyle backcolor="White" bordercolor="#CCCCCC" font-bold="False" font-names="B Yekan"
                        font-size="10pt" forecolor="Black" height="35px" horizontalalign="Center" />
                    <selectedrowstyle backcolor="#990033" font-bold="True" font-size="10pt" forecolor="White" />
                    <sortedascendingcellstyle backcolor="#EDF6F6" />
                    <sortedascendingheaderstyle backcolor="#0D4AC4" />
                    <sorteddescendingcellstyle backcolor="#D6DFDF" />
                    <sorteddescendingheaderstyle backcolor="#002876" />
                    <sortedascendingcellstyle backcolor="#EDF6F6"></sortedascendingcellstyle>
                    <sortedascendingheaderstyle backcolor="#0D4AC4"></sortedascendingheaderstyle>
                    <sorteddescendingcellstyle backcolor="#D6DFDF"></sorteddescendingcellstyle>
                    <sorteddescendingheaderstyle backcolor="#002876"></sorteddescendingheaderstyle>
                </asp:gridview>
                <br />
                <asp:sqldatasource id="SqlDataSource1" runat="server" connectionstring="<%$ ConnectionStrings:ShopOnlineDbsConnectionString %>"
                    selectcommand="SELECT * FROM [ViewCala]" 
                 >
                </asp:sqldatasource>
                <asp:sqldatasource id="SqlDataSource2" runat="server" connectionstring="<%$ ConnectionStrings:ShopOnlineDbsConnectionString %>"
                    deletecommand="DELETE FROM [TblCategory] WHERE [ID] = @ID" insertcommand="INSERT INTO [TblCategory] ([category]) VALUES (@category)"
                    selectcommand="SELECT [ID], [category] FROM [TblCategory]"
                    
                    
                    updatecommand="UPDATE [TblCategory] SET [category] = @category WHERE [ID] = @ID" 
                 >
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
                </asp:sqldatasource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>

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
</asp:Content>


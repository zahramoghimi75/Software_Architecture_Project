<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Buyer.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content1" Runat="Server">
    <br />
 <table style="border: thin outset #FFFFFF; width: 600px; margin-right: 20px; background-color: #FFFFFF;">
        <tr>
            <td class="hsize-30" style="height: 40px; background-color: #00CC99;" 
                colspan="2">
            &nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" ForeColor="White" Text="مشخصات خریدار" 
                    Font-Size="18pt" Font-Bold="True" Font-Names="Adobe Arabic"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="hsize-30" style="height: 10px">
            </td>
            <td class="hsize-30" style="height: 10px">
            </td>
        </tr>
        <tr>
            <td class="hsize-30" style="height: 35px">
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="نام خریدار :" 
                    Font-Size="14pt" Font-Bold="True" Font-Names="Adobe Arabic"></asp:Label>
            </td>
            <td class="hsize-30" style="height: 35px">
            <asp:TextBox ID="txt_name" runat="server" ForeColor="Black" Width="200px" 
                    Font-Bold="True" Font-Names="Adobe Arabic" Font-Size="14pt" Height="30px"></asp:TextBox>
            <asp:TextBox ID="txt_price" runat="server" ForeColor="Black" Width="200px" 
                    Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="hsize-30" style="height: 35px">
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="تلفن :" 
                    Font-Size="14pt" Font-Bold="True" Font-Names="Adobe Arabic"></asp:Label>
            </td>
            <td class="hsize-30" style="height: 35px">
            <asp:TextBox ID="txt_tel" runat="server" ForeColor="Black" Width="200px" 
                    Font-Bold="True" Font-Names="Adobe Arabic" Font-Size="14pt" Height="30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="hsize-30" style="height: 35px">
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="کد پستی :" 
                    Font-Size="14pt" Font-Bold="True" Font-Names="Adobe Arabic"></asp:Label>
            </td>
            <td class="hsize-30" style="height: 35px">
            <asp:TextBox ID="txt_code_posti" runat="server" ForeColor="Black" Width="200px" 
                    Font-Bold="True" Font-Names="Adobe Arabic" Font-Size="14pt" Height="30px" 
                    MaxLength="10"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="hsize-30" style="height: 35px">
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="آدرس :" 
                    Font-Size="14pt" Font-Bold="True" Font-Names="Adobe Arabic"></asp:Label>
            </td>
            <td class="hsize-30" style="height: 35px">
            <asp:TextBox ID="txt_address" runat="server" ForeColor="Black" Width="500px" 
                    Font-Bold="True" Font-Names="Adobe Arabic" Font-Size="14pt" Height="30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="hsize-30" style="height: 25px">
            </td>
            <td class="hsize-30" style="height: 25px">
            </td>
        </tr>
        <tr>
            <td class="hsize-50" style="height: 54px">
            </td>
            <td class="hsize-50" style="height: 54px">
                <asp:Button
    ID="btn_save" runat="server" CssClass="btn btn-success" Text="ثبت مشخصات خریدار" Width="200px" 
                        CommandName="select" CommandArgument='<%# Bind("sh_gold") %>' 
                    Height="45px" onclick="btn_save_Click" Font-Bold="True" 
                    Font-Names="Adobe Arabic" Font-Size="14pt" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
<br />
<br />
</asp:Content>


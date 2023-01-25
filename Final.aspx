<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Final.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content1" Runat="Server">
<table class="nav-justified">
        <tr>
            <td align="center">
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Font-Size="17pt" ForeColor="#339966" 
                    Text="کاربر محترم سفارش شما با موفقیت ثبت شده" Font-Bold="True" 
                    Font-Italic="False" Font-Names="Adobe Arabic"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Font-Size="17pt" ForeColor="#CC3300" 
                    Text="جهت پیگیری محصول خود از شناسه خرید زیر استفاده نمایید" 
                    Font-Bold="True" Font-Italic="False" Font-Names="Adobe Arabic"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lbl_shenas" runat="server" Font-Size="25pt" ForeColor="#0066CC" 
                    Font-Bold="True" Font-Names="Adobe Arabic"></asp:Label>
                <br />
                <br />
                <asp:Button ID="btnFactor" runat="server" Font-Names="Vazir" Font-Size="14pt" 
                    Height="49px" Text="صدور فاکتور" Width="189px" onclick="btnFactor_Click"/>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


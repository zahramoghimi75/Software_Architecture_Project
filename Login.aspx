<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content1" Runat="Server">
    <br />
    <table align="center" class="nav-justified" dir="rtl" 
        style="border: thin solid #C0C0C0; width: 400px">
        <tr>
            <td colspan="2">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Icon/Login.png" />
            </td>
        </tr>
        <tr>
            <td style="width: 72px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 72px; height: 42px">
&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Font-Names="B Yekan" Font-Size="10pt" 
                    ForeColor="Black" Text="نام کاربری :"></asp:Label>
                        </td>
            <td class="scrtabs-tab-container">
                <asp:TextBox ID="txt_username" runat="server" ForeColor="Black" Width="220px" 
                    Font-Names="B Yekan" Font-Size="10pt"></asp:TextBox>
                        </td>
        </tr>
        <tr>
            <td style="height: 29px; width: 72px">
&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Font-Names="B Yekan" Font-Size="10pt" 
                    ForeColor="Black" Text="رمز عبور :"></asp:Label>
                        </td>
            <td style="height: 29px">
                <asp:TextBox ID="txt_password" runat="server" ForeColor="Black" Width="220px" 
                    Font-Names="B Yekan" Font-Size="10pt" TextMode="Password"></asp:TextBox>
                        </td>
        </tr>
        <tr>
            <td style="width: 72px; height: 37px">
            </td>
            <td style="height: 37px">
                <asp:Label ID="lbl_error" runat="server" Font-Names="B Yekan" Font-Size="10pt" 
                    ForeColor="#CC0000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 72px; height: 53px">
            </td>
            <td style="height: 53px">
                <asp:Button ID="btnlogin" runat="server" Font-Names="B Yekan" Font-Size="10pt" 
                    ForeColor="Black" Height="42px" onclick="btnlogin_Click" Text="ورود به پنل مدیریت" 
                    Width="220px" />
                        </td>
        </tr>
        <tr>
            <td style="width: 72px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table class="nav-justified">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
</asp:Content>


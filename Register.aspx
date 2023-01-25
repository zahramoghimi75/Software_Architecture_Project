<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Register.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content1" runat="Server">
    <table class="nav-justified" style="width: 1000px">
        <tr>
            <td>
                <table class="nav-justified" dir="rtl" style="margin-right: 10px">
                    <tr>
                        <td style="height: 32px" colspan="2">
                            <h1 dir="RTL" style="font-family: 'b nazanin'; font-size: 25px; font-weight: bold;
                                color: #000000">
                                عضویت در سایت</h1>
                            <p dir="RTL" style="font-family: 'b nazanin'; font-size: 18px; color: #0000FF; font-weight: bold;">
                                &nbsp;</p>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 32px">
                            <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="نام :"
                                Font-Size="14pt" Font-Bold="True" Font-Names="Adobe Arabic"></asp:Label>
                        </td>
                        <td style="height: 32px">
                            <asp:TextBox ID="txt_fname" runat="server" ForeColor="Black" Width="250px" Font-Bold="True"
                                Font-Names="Adobe Arabic" Font-Size="14pt" Height="30px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 32px">
                            <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="نام خانوادگی :" Font-Size="14pt"
                                Font-Bold="True" Font-Names="Adobe Arabic"></asp:Label>
                        </td>
                        <td style="height: 32px">
                            <asp:TextBox ID="txt_lname" runat="server" ForeColor="Black" Width="250px" Font-Bold="True"
                                Font-Names="Adobe Arabic" Font-Size="14pt" Height="30px"></asp:TextBox>
                        </td>
                    </tr>
                                        <tr>
                        <td style="height: 32px">
                            <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="پست الکترونیک :" Font-Size="14pt"
                                Font-Bold="True" Font-Names="Adobe Arabic"></asp:Label>
                        </td>
                        <td style="height: 32px">
                            <asp:TextBox ID="txt_email" runat="server" ForeColor="Black" Width="250px" Font-Bold="True"
                                Font-Names="Adobe Arabic" Font-Size="14pt" Height="30px"></asp:TextBox>
                        </td>
                    </tr>
                                        <tr>
                        <td style="height: 32px">
                            <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="نام کاربری :" Font-Size="14pt"
                                Font-Bold="True" Font-Names="Adobe Arabic"></asp:Label>
                        </td>
                        <td style="height: 32px">
                            <asp:TextBox ID="txt_username" runat="server" ForeColor="Black" Width="250px" Font-Bold="True"
                                Font-Names="Adobe Arabic" Font-Size="14pt" Height="30px"></asp:TextBox>
                        </td>
                    </tr>
                                        <tr>
                        <td style="height: 32px">
                            <asp:Label ID="Label6" runat="server" ForeColor="Black" Text="رمز عبور :" Font-Size="14pt"
                                Font-Bold="True" Font-Names="Adobe Arabic"></asp:Label>
                        </td>
                        <td style="height: 32px">
                            <asp:TextBox ID="txt_password" runat="server" ForeColor="Black" Width="250px" Font-Bold="True"
                                Font-Names="Adobe Arabic" Font-Size="14pt" Height="30px" 
                                TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 32px">
                            &nbsp;
                        </td>
                        <td style="height: 32px">
                            <asp:Label ID="lbl_msg" runat="server" ForeColor="#0066FF" Font-Size="14pt" Font-Bold="True"
                                Font-Names="Adobe Arabic"></asp:Label>
                        </td>
                    </tr>
                                        <tr>
                        <td style="height: 32px">
                            &nbsp;
                        </td>
                        <td style="height: 32px">
                            <asp:Label ID="Label1" runat="server" ForeColor="#0066FF" Font-Size="14pt" Font-Bold="True"
                                Font-Names="Adobe Arabic"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 32px">
                            &nbsp;
                        </td>
                        <td style="height: 32px">
                            <asp:Button ID="btn_submit" runat="server" CssClass="btn btn-success" Text="عضویت"
                                Width="200px" CommandName="select" CommandArgument='<%# Bind("sh_gold") %>' Height="45px"
                                OnClick="btn_submit_Click" Font-Bold="True" Font-Names="Adobe Arabic" Font-Size="14pt" />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 32px">
                            &nbsp;
                        </td>
                        <td style="height: 32px">
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

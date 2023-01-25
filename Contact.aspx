<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content1" Runat="Server">
    <table class="nav-justified" style="width: 1000px">
        <tr>
            <td>
                <table class="nav-justified" dir="rtl" style="margin-right: 10px">
                    <tr>
                        <td style="height: 32px" colspan="2">
                            <h1 dir="RTL" 
                                style="font-family: 'b nazanin'; font-size: 25px; font-weight: bold; color: #000000">
                                <span lang="AR-SA">تماس با ما </span><span dir="LTR"><o:p></o:p></span>
                            </h1>
                            <p class="MsoNormal" dir="RTL" 
                                style="font-family: 'adobe Arabic'; font-size: 25px; font-weight: bold; color: #339966">
                                <span lang="FA">تلفن تماس :091212345678</span></p>
                            <p class="MsoNormal" dir="RTL" 
                                style="font-family: 'adobe Arabic'; font-size: 25px; font-weight: bold; color: #339966">
                                <span lang="FA">کد پستی :4422335566</span></p>
                                <br />
                            <p class="MsoNormal" dir="RTL" 
                                style="font-family: 'adobe Arabic'; font-size: 25px; font-weight: bold; color: #0033CC">
                                <span lang="FA">پست الکترونیک : zahramoghimi1006@gmail.com</span><span dir="LTR"><o:p></o:p></span></p>
                            <p class="MsoNormal" dir="RTL" 
                                style="font-family: 'adobe Arabic'; font-size: 25px; font-weight: bold; color: #0033CC">
                                aryanbolori@gmail.com</p>
                                   <br />
                                                    <p class="MsoNormal" dir="RTL" 
                                
                                style="font-family: 'adobe Arabic'; font-size: 25px; font-weight: bold; color: #FF3300">
                                <span lang="FA">مدیریت : بلوری و مقیمی</span></p>
                                   <br />
                            <p class="MsoNormal" dir="RTL" 
                                style="font-family: 'adobe Arabic'; font-size: 25px; font-weight: bold; color: #990033">
                                <span lang="FA">آدرس مرکزی : تهران-کاشانی مهران</span></p>

                            <p class="MsoNormal" dir="RTL" 
                                style="font-family: 'adobe Arabic'; font-size: 25px; font-weight: bold; color: #990033">
                                &nbsp;</p>
                            <p class="MsoNormal" dir="RTL" 
                                style="font-family: 'adobe Arabic'; font-size: 25px; font-weight: bold; color: #990033">
                                <span lang="FA">شعبه 1 : تهران – جنت آباد – گلستان هفتم<o:p></o:p></span></p>
                            <p class="MsoNormal" dir="RTL" 
                                style="font-family: 'adobe Arabic'; font-size: 25px; font-weight: bold; color: #990033">
                                &nbsp;</p>
                            <p dir="RTL" 
                                style="font-family: 'b nazanin'; font-size: 18px; color: #0000FF; font-weight: bold;">
                                &nbsp;</p>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 32px">
            <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="نام و نام خانوادگی :" 
                    Font-Size="14pt" Font-Bold="True" Font-Names="Adobe Arabic"></asp:Label>
                        </td>
                        <td style="height: 32px">
            <asp:TextBox ID="txt_name" runat="server" ForeColor="Black" Width="250px" 
                    Font-Bold="True" Font-Names="Adobe Arabic" Font-Size="14pt" Height="30px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 32px">
            <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="پست الکترونیک :" 
                    Font-Size="14pt" Font-Bold="True" Font-Names="Adobe Arabic"></asp:Label>
                        </td>
                        <td style="height: 32px">
            <asp:TextBox ID="txt_email" runat="server" ForeColor="Black" Width="450px" 
                    Font-Bold="True" Font-Names="Adobe Arabic" Font-Size="14pt" Height="30px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 32px">
            <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="دیدگاه :" 
                    Font-Size="14pt" Font-Bold="True" Font-Names="Adobe Arabic"></asp:Label>
                        </td>
                        <td style="height: 32px">
            <asp:TextBox ID="txt_comment" runat="server" ForeColor="Black" Width="452px" 
                    Font-Bold="True" Font-Names="Adobe Arabic" Font-Size="14pt" Height="100px" 
                                TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 32px">
                            &nbsp;</td>
                        <td style="height: 32px">
            <asp:Label ID="lbl_msg" runat="server" ForeColor="#0066FF" 
                    Font-Size="14pt" Font-Bold="True" Font-Names="Adobe Arabic"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 32px">
                            &nbsp;</td>
                        <td style="height: 32px">
                <asp:Button
    ID="btn_submit" runat="server" CssClass="btn btn-success" Text="ارسال دیدگاه" Width="200px" 
                        CommandName="select" CommandArgument='<%# Bind("sh_gold") %>' 
                    Height="45px" onclick="btn_submit_Click" Font-Bold="True" 
                    Font-Names="Adobe Arabic" Font-Size="14pt" />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 32px">
                            &nbsp;</td>
                        <td style="height: 32px">
                            &nbsp;</td>
                    </tr>
                    </table>
                </td>
        </tr>
    </table>
</asp:Content>


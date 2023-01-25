using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if ((txt_username.Text == "admin") && (txt_password.Text == "admin"))
            Response.Redirect("Admin/Index.aspx");
        else
            lbl_error.Text = "نام کاربری و رمز عبور مدیریت اشتباه می باشد";
    }
}
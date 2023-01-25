using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    DataBase dbs = new DataBase();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        dbs.connect();
        dbs.docommand("Insert Into TblUser Values(N'" + txt_fname.Text + "',N'" + txt_lname.Text + "','" + txt_email.Text + "','" + txt_username.Text + "','" + txt_password.Text + "')");
        dbs.disconnect();
        lbl_msg.Text = "عضویت در سایت با موفقیت انجام شد";
    }
}
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
        dbs.docommand("Insert Into TblContact Values(N'" + txt_name.Text + "','" + txt_email.Text + "',N'" + txt_comment.Text + "')");
        dbs.disconnect();
        lbl_msg.Text = "ارسال دیدگاه و نظر شما با موفقیت ارسال شد";
    }
}
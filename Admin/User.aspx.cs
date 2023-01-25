using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Default : System.Web.UI.Page
{
    DataBase dbs = new DataBase();
    static string filename, id, username;
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnsave_Click(object sender, EventArgs e)
    {
        dbs.connect();
        dbs.docommand("Insert Into TblUser Values(N'" + txt_fname.Text + "',N'" + txt_lname.Text + "','" + txt_email.Text + "','" + txt_username.Text + "','" + txt_password.Text + "')");
        dbs.disconnect();
        lbl_msg.Text = "ثبت مشخصات کاربر با موفقیت انجام شد";
        SqlDataSource1.SelectCommand = "Select * From TblUser";
        txt_fname.Text = null;
        txt_lname.Text = null;
        txt_username.Text = null;
        txt_password.Text = null;
        txt_email.Text = null;

    }

    protected void GridView_Product_SelectedIndexChanged(object sender, EventArgs e)
    {
        username = GridView_User.DataKeys[GridView_User.SelectedIndex].Value.ToString();

        dbs.connect();

        DataTable dt_shenas = new DataTable();
        dt_shenas = dbs.select("Select * From TblUser Where username='" + username + "'");
        txt_fname.Text = dt_shenas.Rows[0][0].ToString();
        txt_lname.Text = dt_shenas.Rows[0][1].ToString();
        txt_email.Text = dt_shenas.Rows[0][2].ToString();
        txt_username.Text = dt_shenas.Rows[0][3].ToString();
        txt_password.Text = dt_shenas.Rows[0][4].ToString();
        dbs.disconnect();
    }

}
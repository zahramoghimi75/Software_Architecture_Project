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
    static string filename, id, code;
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnsave_Click(object sender, EventArgs e)
    {
        dbs.connect();
        dbs.docommand("Insert Into TblCategory Values(N'" + txt_category.Text + "')");
        dbs.disconnect();
        lbl_msg.Text = "ثبت مشخصات دسته بندی با موفقیت انجام شد";
        SqlDataSource1.SelectCommand = "Select * From TblCategory";
        txt_category.Text = null;
    }

    protected void GridView_Product_SelectedIndexChanged(object sender, EventArgs e)
    {
        code = GridView_Product.DataKeys[GridView_Product.SelectedIndex].Value.ToString();

        dbs.connect();

        DataTable dt_shenas = new DataTable();
        dt_shenas = dbs.select("Select * From TblCategory Where shenas='" + code + "'");
        id = dt_shenas.Rows[0][0].ToString();
        txt_category.Text = dt_shenas.Rows[0][1].ToString();
        dbs.disconnect();
    }

}
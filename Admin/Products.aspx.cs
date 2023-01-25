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

    public void empty()
    {
        txt_code.Text = null;
        txt_name.Text = null;
        com_category.Text = null;
        txt_price.Text = "0";
        txt_des.Text = null;
        txt_name.Text = null;
        Image_poduct.ImageUrl = null;
    }


    protected void btnsave_Click(object sender, EventArgs e)
    {
        string path;
        path = Request.PhysicalApplicationPath;
        filename = @"~/Products/" + FileUpload1.FileName;
        path += @"Products/" + FileUpload1.FileName;
        FileUpload1.SaveAs(path);
        Image_poduct.ImageUrl = @"~/Products/" + FileUpload1.FileName;

        dbs.connect();
        dbs.docommand("Insert Into TblCala Values('" + txt_code.Text + "',N'" + com_category.SelectedValue + "',N'" + txt_name.Text + "','" + txt_price.Text + "','" + filename + "',N'" + txt_des.Text + "')");
        dbs.disconnect();
        lbl_msg.Text = "ثبت مشخصات محصول با موفقیت انجام شد";
        SqlDataSource1.SelectCommand = "Select * From ViewCala";
        empty();

    }

    protected void btnedit_Click(object sender, EventArgs e)
    {
        dbs.connect();
        dbs.docommand("Update TblCala Set code='" + txt_code.Text + "',cat_id=N'" + com_category.SelectedValue + "',name_cala=N'" + txt_name.Text + "',price='" + txt_price.Text + "',descript=N'" + txt_des.Text + "' Where code='" + code + "'");
        dbs.disconnect();
        lbl_msg.Text = "ویرایش مشخصات محصول با موفقیت انجام شد";
        SqlDataSource1.SelectCommand = "Select * From ViewCala";
        empty();
    }

    protected void GridView_Product_SelectedIndexChanged(object sender, EventArgs e)
    {
        code = GridView_Product.DataKeys[GridView_Product.SelectedIndex].Value.ToString();

        dbs.connect();

        DataTable dt_shenas = new DataTable();
        dt_shenas = dbs.select("Select * From TblCala Where code='" + code + "'");
        id = dt_shenas.Rows[0][0].ToString();
        txt_code.Text = dt_shenas.Rows[0][1].ToString();
        code = dt_shenas.Rows[0][1].ToString();
        com_category.SelectedValue = dt_shenas.Rows[0][2].ToString();
        txt_name.Text = dt_shenas.Rows[0][3].ToString();
        txt_price.Text = dt_shenas.Rows[0][4].ToString();
        txt_des.Text = dt_shenas.Rows[0][6].ToString();
        Image_poduct.ImageUrl = dt_shenas.Rows[0][5].ToString();
        dbs.disconnect();
    }

}
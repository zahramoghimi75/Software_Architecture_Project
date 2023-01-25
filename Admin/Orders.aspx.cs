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
    DataTable dt = new DataTable();
    static string id, sh_buy;

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource2.SelectCommand = "Select * From ViewBasket Where code=0";
    }

    protected void GridView_Buyer_SelectedIndexChanged(object sender, EventArgs e)
    {
        sh_buy = GridView_Buyer.DataKeys[GridView_Buyer.SelectedIndex].Value.ToString();

        SqlDataSource2.SelectCommand = "Select * From ViewBasket where sh_buy='" + sh_buy + "'";
    }

    protected void btn_search_Click(object sender, ImageClickEventArgs e)
    {
        SqlDataSource1.SelectCommand = "Select * From TblBuyer where sh_buy='" + txt_search.Text + "' or name Like N'%" + txt_search.Text + "%'";
    }
}
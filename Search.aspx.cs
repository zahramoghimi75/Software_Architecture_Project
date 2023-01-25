using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    DataBase dbs = new DataBase();
    DataTable dt = new DataTable();
    static int price_final;

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "Select * From ViewBasket where code=0";
    }

    protected void btn_search_Click(object sender, ImageClickEventArgs e)
    {
        dbs.connect();
        dt = dbs.select("Select * From ViewBasket where sh_buy='" + txt_search.Text + "'");
        if (dt.Rows.Count > 0)
        {
            lbl_name.Text = dt.Rows[0][6].ToString();
            lbl_date.Text = dt.Rows[0][10].ToString();
            price_final = Convert.ToInt32(dt.Rows[0][11]);
            lbl_tsum.Text = price_final.ToString();

            decimal price = decimal.Parse(lbl_tsum.Text);
            lbl_sum.Text = String.Format("{0:###,###}", price_final)+" تومان";
        }
        dbs.disconnect();
        SqlDataSource1.SelectCommand = "Select * From ViewBasket where sh_buy='" + txt_search.Text + "'";
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    DataBase dbs = new DataBase();
    static string shkharid;
    static int price_col = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            full_list("Select * From ViewCala");
        }
    }

    public void full_list(string query)
    {
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=ShopOnlineDbs;Integrated Security=True");
        SqlCommand cmd = new SqlCommand(query, con);

        con.Open();
        PagedDataSource pagedDS = new PagedDataSource();
        DataTable dt = new DataTable("_T");
        dt.Load(cmd.ExecuteReader());
        pagedDS.DataSource = dt.DefaultView;
        pagedDS.AllowPaging = true;
        pagedDS.PageSize = 33;
        pagedDS.CurrentPageIndex = CurrentPage;
        gallery_dlist.DataSource = pagedDS;
        gallery_dlist.DataBind();
        con.Close();
    }

    public int CurrentPage
    {
        get
        {
            object o = this.ViewState["_CurrentPage"];
            if (o == null)
                return 0;
            else
                return (int)o;
        }

        set
        {
            this.ViewState["_CurrentPage"] = value;
        }
    }



    protected void btn_search1_Click(object sender, ImageClickEventArgs e)
    {
        full_list("Select * From ViewCala where category=N'" + com_category.Text + "'");
    }

    protected void btn_search2_Click(object sender, ImageClickEventArgs e)
    {
        full_list("Select * From ViewCala where name_cala=N'" + txt_name.Text + "'");
    }

    protected void btn_search3_Click(object sender, ImageClickEventArgs e)
    {
        full_list("Select * From ViewCala where price Between '" + txt_price1.Text + "' and '" + txt_price2.Text + "'");
    }

}
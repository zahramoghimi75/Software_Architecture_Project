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

            SumPrice();
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            lbl_count.Text = dv.Count.ToString();
        }
    }

    public void SumPrice()
    {
        DataTable dt_sum = new DataTable();
        dbs.connect();
        dt_sum = dbs.select("Select Sum(price_col) From TblBasket");
        if (string.IsNullOrEmpty(dt_sum.Rows[0][0].ToString()))
            price_col = 0;
        else
            price_col = Convert.ToInt32(dt_sum.Rows[0][0]);
        dbs.disconnect();
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
        full_list("Select * From ViewCala where category Like N'%" + com_category.SelectedItem + "%'");
    }

    protected void btn_search2_Click(object sender, ImageClickEventArgs e)
    {
        full_list("Select * From ViewCala where name_cala Like N'%" + txt_name.Text + "%'");
    }

    protected void btn_search3_Click(object sender, ImageClickEventArgs e)
    {
        full_list("Select * From ViewCala where price Between '" + txt_price1.Text + "' and '" + txt_price2.Text + "'");
    }

    protected void btn_empty_Click(object sender, ImageClickEventArgs e)
    {
        GridView_Basket.Visible = false;
        btn_empty.Visible = false;
        btn_basket.Visible = true;
        btn_pay.Visible = false;
        lbl1.Visible = false;
        lbl2.Visible = false;
        lbl_price.Visible = false;
    }

    protected void btn_basket_Click(object sender, ImageClickEventArgs e)
    {
        GridView_Basket.Visible = true;
        btn_empty.Visible = true;
        btn_basket.Visible = false;
        btn_pay.Visible = true;
        lbl1.Visible = true;
        lbl2.Visible = true;
        lbl_price.Visible = true;
        lbl_tprice.Text = price_col.ToString();

        decimal price = decimal.Parse(lbl_tprice.Text);
        lbl_price.Text = String.Format("{0:###,###}", price_col);
    }

    protected void btn_pay_Click(object sender, EventArgs e)
    {
        Session["price_final"] = price_col;
        Response.Redirect("Buyer.aspx");
    }

    protected void GridView_Basket_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        lbl_count.Text = dv.Count.ToString();
        SumPrice();
    }

    protected void GridView_Basket_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        lbl_count.Text = dv.Count.ToString();
        SumPrice();
    }

    protected void gallery_dlist_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "select")
        {
            txt_shenas.Text = e.CommandArgument.ToString();

            Session["code"] = txt_shenas.Text;

            dbs.connect();
            DataTable dt_price = new DataTable();
            dt_price = dbs.select("Select * From TblCala where code='" + txt_shenas.Text + "'");
            txt_price.Text = (Convert.ToInt32(dt_price.Rows[0][4]) * 1).ToString();
            //.............................................................................

            dbs.docommand("Insert Into TblBasket Values('" + txt_shenas.Text + "',N'" + dt_price.Rows[0][3] + "','" + dt_price.Rows[0][4] + "','" + 1 + "','" + txt_price.Text + "','" + dt_price.Rows[0][5] + "')");
            //.............................................................................

            SqlDataSource1.SelectCommand = "Select * From TblBasket";
            dbs.disconnect();

            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            lbl_count.Text = dv.Count.ToString();

            SumPrice();
        }
        //else
        //    if (e.CommandName == "detail")
        //    {
        //        //txt_shenas.Text = e.CommandArgument.ToString();
        //        //txtFname.Text = txt_shenas.Text;
        //        ModalPopupExtender1.Show();


        //        //dbs.connect();
        //        //DataTable dt_cala = new DataTable();
        //        //dt_cala = dbs.select("Select * From TblCala where code='" + txt_shenas.Text + "'");
        //        //lbl_cala.Text = dt_cala.Rows[0][3].ToString();
        //        //dbs.disconnect();
        //    }
            else
                if (e.CommandName == "show")
                {
                    txt_shenas.Text = e.CommandArgument.ToString();
                    dbs.connect();
                    DataTable dt_cala = new DataTable();
                    dt_cala = dbs.select("Select * From TblCala where code='" + txt_shenas.Text + "'");
                    lblDescript.Text = dt_cala.Rows[0][6].ToString();
                    txtDescript.Text = dt_cala.Rows[0][6].ToString();
                    imgCala.ImageUrl=dt_cala.Rows[0][5].ToString();
                    dbs.disconnect();
                    ModalPopupExtender1.Show();
                }
    }

    protected void btn_load_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //txtFname.Text = TextBox1.Text;
        ModalPopupExtender1.Show();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        //txtFname.Text = TextBox1.Text;
        ModalPopupExtender1.Show();
    }
}
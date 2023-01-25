using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Factor : System.Web.UI.Page
{
    public string shfactor;
    protected void Page_Load(object sender, EventArgs e)
    {
        shfactor = Session["shbuy"].ToString();
        SqlDataSource1.SelectCommand = "Select * From ViewBasket Where sh_buy='" + shfactor + "'";
    }
}
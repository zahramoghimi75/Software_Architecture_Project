using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    DataBase dbs = new DataBase();
    static string sh_buy, date, price_final;

    protected void Page_Load(object sender, EventArgs e)
    {
        PersianCalendar pdate = new PersianCalendar();
        date = pdate.GetYear(DateTime.Now).ToString() + "/" + pdate.GetMonth(DateTime.Now).ToString().PadLeft(2, '0') + "/" + pdate.GetDayOfMonth(DateTime.Now).ToString().PadLeft(2, '0');

        price_final = Session["price_final"].ToString();
        txt_price.Text = price_final.ToString();
    }

    public string shenaseh(int size)
    {
        int[] a = new int[size];
        Random rnd = new Random();
        for (int i = 0; i < size; i++)
        {
            a[i] = 65 + rnd.Next() % 10;  //فرمولی برای تولید رشته تصادفی
        }
        //........................................................................تا این قسمت اعداد تصادفی تولید می شوند و داخل آرایه ریخته می شود
        string str = "";
        {
            foreach (int j in a) //داخل آرایه می گردد
                str += (j); //در اینجا مشخص می کند که مقادیر تصادفی برابر کاراکتر باشد
        }
        return str;
        //..................................................................در این قسمت شروع به جستجوی اعداد تصادفی می کند

    }

    protected void btn_save_Click(object sender, EventArgs e)
    {
        sh_buy = shenaseh(5);

        dbs.connect();
        dbs.docommand("Insert Into TblBuyer Values('" + sh_buy + "',N'" + txt_name.Text + "','" + txt_tel.Text + "','" + txt_code_posti.Text + "',N'" + txt_address.Text + "','" + date + "','" + txt_price.Text + "')");

        DataTable dt_basket = new DataTable();
        dt_basket = dbs.select("Select * From TblBasket");
        for (int i = 0; i < dt_basket.Rows.Count; i++)
        {
            dbs.docommand("Insert Into TblBuy Values('" + dt_basket.Rows[i][1] + "','" + sh_buy + "','" + dt_basket.Rows[i][4] + "','" + dt_basket.Rows[i][5] + "')");
        }

        dbs.docommand("Delete From TblBasket");
        dbs.disconnect();
        Session["shbuy"] = sh_buy;
        Response.Redirect("Final.aspx");
    }
}
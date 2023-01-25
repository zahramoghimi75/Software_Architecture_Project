using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;

public class DataBase
{
    private SqlConnection con;
    private SqlCommand cmd;
    private SqlDataAdapter da;

    public DataBase()
    {
        con = new SqlConnection();
        cmd = new SqlCommand();
        da = new SqlDataAdapter();
        cmd.Connection = con;
        da.SelectCommand = cmd;
    }

    public void connect()
    {
        try
        {
            string cs = "Data Source=.;Initial Catalog=ShopOnlineDbs;Integrated Security=True";
            con.ConnectionString = cs;
            con.Open();
        }
        catch (System.Data.SqlClient.SqlException)
        {
            // MessageBox.Show("را راه اندازی کنید " + "sqlserver " + "سرویس ");
        }
    }

    public void disconnect()
    {
        con.Close();
    }

    public DataTable select(string sql)
    {
        DataTable dt = new DataTable();
        cmd.CommandText = sql; //کد اسکیوال از این طریق به پایگاه داده ارسال می شود
        da.Fill(dt); //وظیفه ی دیتا آداپتور پر کردن محتویات جدول است
        return dt;
    }


    public void docommand(string sql)
    {
        cmd.CommandText = sql;
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception e)
        {
            //MessageBox.Show(e.ToString());
        }
    }
}

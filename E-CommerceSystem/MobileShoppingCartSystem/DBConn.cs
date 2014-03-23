using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

using System.Data.SqlClient;

public class DBConn
{
    private static SqlConnection con;
    private static SqlDataAdapter adp;
    private static SqlCommand com;
    private static DataTable dt;

    private static SqlConnection GetConn()
    {
        return new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|MobileShop.mdf;Integrated Security=True;User Instance=True");
    }

    public static bool DBUpdate(string sql)
    {
        con = DBConn.GetConn();
        con.Open();
        com = new SqlCommand(sql, con);
        bool f = com.ExecuteNonQuery() > 0;
        con.Close();
        return f;
    }

    public static DataTable DBFetch(string sql)
    {
        con = DBConn.GetConn();
        con.Open();

        adp = new SqlDataAdapter(sql, con);
        dt = new DataTable();
        adp.Fill(dt);

        con.Close();
        return dt;
    }
}

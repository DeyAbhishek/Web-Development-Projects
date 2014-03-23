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


public class Bill
{
    DataTable BillTB;
    string sql;

	public Bill()
	{
        sql = "Select * from Bill";
        BillTB = DBConn.DBFetch(sql);
	}

    public Bill(string billno)
    {
        sql = "Select * from Bill where billno = '" + billno + "'";
        BillTB = DBConn.DBFetch(sql);
    }

    public DataTable getBill
    {
        get
        {
            return BillTB;
        }
    }

    public bool insertBill(string billno,string bdate,string tamt,string uid)
    {
        sql = "insert into Bill values('" + billno + "','" + bdate + "','" + tamt + "','" + uid + "')";
        bool f = DBConn.DBUpdate(sql);
        return f;
    }
}

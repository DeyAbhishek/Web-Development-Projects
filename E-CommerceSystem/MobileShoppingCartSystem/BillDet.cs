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

public class BillDet
{
    DataTable BillTB;
    string sql;

    public BillDet()
	{
        sql = "Select * from BillDet";
        BillTB = DBConn.DBFetch(sql);
	}

    public BillDet(string billno)
    {
        sql = "Select * from BillDet where billno = '" + billno + "'";
        BillTB = DBConn.DBFetch(sql);
    }

    public DataTable getBillDetails
    {
        get
        {
            return BillTB;
        }
    }

    public bool insertBillDet(string billno,string pid,string price)
    {
        sql = "insert into BillDet values('" + billno + "','" + pid + "','" + price + "')";
        bool f = DBConn.DBUpdate(sql);
        return f;
    }
}

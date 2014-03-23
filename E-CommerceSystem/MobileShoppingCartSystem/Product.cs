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


public class Product
{
    DataTable ProductTB;
    string sql;

	public Product()
	{
        sql = "Select * from product";
        ProductTB = DBConn.DBFetch(sql);
	}

    public Product(string pid)
    {
        sql = "Select * from product where pid = '" + pid + "'";
        ProductTB = DBConn.DBFetch(sql);
    }

    public DataTable getProduct
    {
        get
        {
            return ProductTB;
        }
    }

    public bool insertProd(string pid,string pname,string model,string pco,string price,string des)
    {
        sql = "insert into product values('" + pid + "','" + pname + "','" + model + "','" + pco + "'," + price + ",'" + des + "')";
        bool f = DBConn.DBUpdate(sql);
        return f;
    }

    public bool UpdateProd(string pid, string pname, string model, string pco, string price, string des)
    {
        sql = "update product set pname='" + pname + "', model='" + model + "', pco='" + pco + "',pprice=" + price + ", des='" + des + "' where pid='" + pid + "'";
        bool f = DBConn.DBUpdate(sql);
        return f;
    }
}

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

/// <summary>
/// Summary description for Vendor
/// </summary>
public class Vendor
{
    private DataTable VendorTB;

	public Vendor()
	{
	    VendorTB = DBConn.DBFetch("select * from vendor");	
	}
    
    public Vendor(string userid)
	{
	    VendorTB = DBConn.DBFetch("select * from vendor where userid='" + userid + "'");	
	}

    public DataTable GetVendor
    {
        get
        {
            return VendorTB;
        }
    }

    public bool InsertVendor(string userid, string pass, string Name, string Address, string phno, string mob, string email)
    {
        bool f;
        string sql = "insert into Vendor values('" + userid + "','" + pass + "','" + Name + "','" + Address + "','" + phno + "','" + mob + "','" + email + "')";
        f = DBConn.DBUpdate(sql);
        return f;
    }

    public bool UpdateVendor(string userid, string pass, string Name, string Address, string phno, string mob, string email)
    {
        bool f;
        string sql = "upadte Vendor set pass='" + pass + "',Name='" + Name + "',Addr='" + Address + "',Phno='" + phno + "',mob='" + mob + "',email='" + email + "' where userid='" + userid + "'";
        f = DBConn.DBUpdate(sql);
        return f;
    }
}

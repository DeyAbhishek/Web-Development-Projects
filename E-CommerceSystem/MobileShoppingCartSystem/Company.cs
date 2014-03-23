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
/// Summary description for Company
/// </summary>
public class Company
{
    DataTable CompanyTB;

	public Company()
	{
        string sql = "Select * from Company";
        CompanyTB = DBConn.DBFetch(sql);
	}

    public Company(string CoName)
    {
        string sql = "Select * from Company Name = '" + CoName + "'";
        CompanyTB = DBConn.DBFetch(sql);
    }

    public DataTable CompanyTable
    {
        get
        {
            return CompanyTB;
        }
    }
}

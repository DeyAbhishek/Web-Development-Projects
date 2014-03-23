using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class _Default : System.Web.UI.Page
{
    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        dt = new DataTable();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string sql="";
            if (TxtUid.Text == "")
            {
                Vendor v = new Vendor();
                dt = v.GetVendor;
            }
            else
            {
                Vendor v = new Vendor(TxtUid.Text);
                dt = v.GetVendor;
            }

            if (dt.Rows.Count >= 0)
            {
                GVUser.DataSource = dt;
                GVUser.DataBind();
            }
            else
            {
                LabDisp.Text = "No user found.......";
            }
        }
        catch (Exception ex)
        { 

        }
    }
}

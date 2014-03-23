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

public partial class AdminLogin : System.Web.UI.Page
{
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("UserHome.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            dt = DBConn.DBFetch("Select * from Admin where adminid='" + TxtUid.Text + "' and pass='" + TxtPass.Text + "'");

            if (dt.Rows.Count > 0)
            {
                Response.Redirect("AdminAddProd.aspx");
            }
            else
            {
                LabDisp.Text = "<Font Color=Red>Sorry!!!! User not found.....</Font>";
            }
        }
        catch (Exception ex)
        {
            LabDisp.Text = ex.Message;
        }
    }
}

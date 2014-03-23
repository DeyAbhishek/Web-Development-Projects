using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class MobileUser : System.Web.UI.MasterPage
{
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null)
        {
            LabUser.Text = "You are not <font color='#E86A0D'>Logged in</font>";
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            dt = DBConn.DBFetch("select Name from vendor where userid='" + TxtID.Text + "' and pass='" + TxtPass.Text + "'");

            if (dt.Rows.Count > 0)
            {
                LabUser.Text = "Hello <font color='#E86A0D'>" + dt.Rows[0][0].ToString() + "</font> welcome to Mobile Shop";
                Session["userid"] = TxtID.Text;
                TxtID.Text = "";
                //Response.Redirect("UserHome.aspx");
            }
        }
        catch (Exception ex)
        {
            LabUser.Text = ex.Message;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("UserHome.aspx");
    }
}

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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] != null)
        {
            Response.Redirect("UserHome.aspx");
        }
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            Vendor vd = new Vendor();
            if (vd.InsertVendor(TxtID.Text, TxtPass.Text, TxtName.Text, TxtAdd.Text, TxtPh.Text, TxtMob.Text, TxtMail.Text))
            {
                LabDisp.Text = "User Succcessfully created....";
            }
        }
        catch (Exception ex)
        {
            LabDisp.Text = ex.Message;
        }
    }
}

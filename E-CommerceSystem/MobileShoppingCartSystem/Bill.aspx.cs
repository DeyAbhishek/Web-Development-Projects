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
    DataTable dtuser,dtcart,dt;
    string uid;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            uid = Session["userid"].ToString();
            if (!IsPostBack)
            {
                string sql;
                sql = "Select * from vendor where userid = '" + uid + "'";
                dtuser = DBConn.DBFetch(sql);
                dtcart = (DataTable)Session["cart"];

                int tamt = 0;

                dt = DBConn.DBFetch("Select * from bill");
                int billno = dt.Rows.Count + 1;
                LabBillno.Text = billno.ToString();
                LAbDate.Text = DateTime.Now.ToString("dd-MMM-yyyy");

                LabName.Text = dtuser.Rows[0][2].ToString();
                LabAdd.Text = dtuser.Rows[0][3].ToString();
                foreach (DataRow dr in dtcart.Select())
                {
                    tamt += Int32.Parse(dr["price"].ToString());
                }
                GVBill.DataSource = dtcart;
                GVBill.DataBind();

                LabTamt.Text = tamt.ToString();

            }
        }
        catch (Exception ex)
        {
            LabDisp.Text = ex.Message;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["cart"] = null;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            string sql;
            sql = "Select * from vendor where userid = '" + uid + "'";
            dtuser = DBConn.DBFetch(sql);
            dtcart = (DataTable)Session["cart"];
            bool f=true;
            Bill bl = new Bill();
            BillDet bd = new BillDet();
            
            if (bl.insertBill(LabBillno.Text, LAbDate.Text, LabTamt.Text, uid))
            {
                foreach (DataRow dr in dtcart.Select())
                {
                    if (bd.insertBillDet(LabBillno.Text, dr["pid"].ToString(), dr["price"].ToString()))
                    {
                        f = true;
                    }
                    else
                    {
                        f = false;
                    }
                }
            }

            if (f)
            {
                LabDisp.Text = "Bill paid successfully";
                Session["cart"] = null;
                Response.Redirect("UserHome.aspx");
            }

        }
        catch (Exception ex)
        {
            LabDisp.Text = ex.Message;
        }
    }
}

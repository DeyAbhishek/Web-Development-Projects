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

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string sql = "Select * from Bill where Bdate >= '" + TxtStDate.Text + "' and Bdate <= '" + TxtEndDate.Text + "'";
            dt = DBConn.DBFetch(sql);
            
            if (dt.Rows.Count > 0)
            {
                DataTable billtb=new DataTable();
                billtb.Columns.Add(new DataColumn("Billno",Type.GetType("System.String")));
                billtb.Columns.Add(new DataColumn("BDate",Type.GetType("System.String")));
                billtb.Columns.Add(new DataColumn("Total",Type.GetType("System.String")));
                billtb.Columns.Add(new DataColumn("UserID", Type.GetType("System.String")));
                billtb.Columns.Add(new DataColumn("Det", Type.GetType("System.String")));

                foreach (DataRow dr in dt.Select())
                {
                    DataRow drw = billtb.NewRow();
                    drw["Billno"] = dr["Billno"].ToString();
                    drw["BDate"] = Convert.ToDateTime(dr["BDate"].ToString()).ToString("dd-MMM-yyyy");
                    drw["Total"] = dr["TAmt"].ToString();
                    drw["UserID"] = dr["userid"].ToString();
                    drw["Det"] = "<a href=AdminBillDet.aspx?billno=" + dr["Billno"].ToString() + ">Details</a>";
                    billtb.Rows.Add(drw);

                }

                GVBill.DataSource = billtb;
                GVBill.DataBind();
            }
            else
            {
                LabDisp.Text = "Sorry no record found.....";
            }
        }
        catch (Exception ex)
        { 

        }
    }
}

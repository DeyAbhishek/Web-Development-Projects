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
        string bno = Request.QueryString["billno"];
        
        DataTable dts = new DataTable();
        dts.Columns.Add(new DataColumn("pid", Type.GetType("System.String")));
        dts.Columns.Add(new DataColumn("pname", Type.GetType("System.String")));
        dts.Columns.Add(new DataColumn("price", Type.GetType("System.String")));
        dts.Columns.Add(new DataColumn("mod", Type.GetType("System.String")));
        dts.Columns.Add(new DataColumn("co", Type.GetType("System.String")));

        BillDet bd = new BillDet(bno);
        DataTable dt = bd.getBillDetails;

        foreach (DataRow dr in dt.Select())
        {
            DataRow drs = dts.NewRow();

            string pid = dr["Pid"].ToString();
            Product p = new Product(pid);
            DataTable dtp = p.getProduct;

            drs["pid"] = pid;
            drs["pname"] = dtp.Rows[0][1].ToString();
            drs["price"] = dtp.Rows[0][4].ToString();
            drs["mod"] = dtp.Rows[0][2].ToString();
            drs["co"] = dtp.Rows[0][3].ToString();
            dts.Rows.Add(drs);
        }

        GVBillDet.DataSource = dts;
        GVBillDet.DataBind();
    }
}

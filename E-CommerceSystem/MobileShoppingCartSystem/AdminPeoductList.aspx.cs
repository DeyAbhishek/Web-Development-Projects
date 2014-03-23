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

using System.IO;

public partial class _Default : System.Web.UI.Page
{
    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                Company co = new Company();
                dt = co.CompanyTable;
                DDLCo.DataSource = dt;
                DDLCo.DataTextField = "Name";
                DDLCo.DataBind();
                DDLCo.Items.Insert(0, "Select");
            }
        }
        catch (Exception ex)
        {
            LabDisp.Text = ex.Message;
        }
    }

    protected void DDLCo_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            if (DDLCo.SelectedIndex == 0)
            {
                LabDisp.Text = "Select a company first...";
                return;
            }

            dt = DBConn.DBFetch("Select pid,pname,model from product where PCo='" + DDLCo.SelectedItem.Text + "'");
            
            DataTable dt1 = new DataTable();
            dt1.Columns.Add(new DataColumn("Product", Type.GetType("System.String")));
            dt1.Columns.Add(new DataColumn("Model", Type.GetType("System.String")));
            dt1.Columns.Add(new DataColumn("pid", Type.GetType("System.String")));
            dt1.Columns.Add(new DataColumn("img", Type.GetType("System.String")));


            if (dt.Rows.Count == 0)
            {
                LabDisp.Text = "Sorry!!! no item found";
                return;
            }

            
            foreach (DataRow dr in dt.Select())
            {
                DataRow dr1 = dt1.NewRow();

                string imgname = dr["pid"].ToString() + ".jpg";
                string imgnm = MapPath("ProdImage") + "\\" + imgname;
                string imagepath = "";
                if (File.Exists(imgnm))
                {
                    imagepath = "ProdImage/" + imgname;
                }
                else
                {
                    imagepath = "ProdImage/NOIMG.jpg";
                }

                dr1["img"] = imagepath;
                dr1["Product"] = dr["Pname"].ToString();
                dr1["Model"] = dr["Model"].ToString();
                string href = "AdminProdDetails.aspx?pid=" + dr["pid"].ToString();
                dr1["pid"] = "<a href=" + href +">Details</a>";

                dt1.Rows.Add(dr1);
            }

            GVProdList.DataSource = dt1;
            GVProdList.DataBind();
        }
        catch (Exception ex)
        {
            LabDisp.Text = ex.Message;
        }
    }
}

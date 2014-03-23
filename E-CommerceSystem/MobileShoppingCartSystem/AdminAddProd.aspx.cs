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
        try
        {
            dt = DBConn.DBFetch("select max(pid) from product");

            if (dt.Rows.Count > 0)
            {
                TxtID.Text = (Int32.Parse(dt.Rows[0][0].ToString()) + 1).ToString();
            }
            else
            {
                TxtID.Text = "1";
            }

            if (IsPostBack == false)
            {
                Company co = new Company();
                DDLCo.DataSource = co.CompanyTable;
                DDLCo.DataTextField = "Name";
                DDLCo.DataBind();
                DDLCo.Items.Insert(0, "Select");
            }
        }
        catch (Exception ex)
        {
            LabDISP.Text = ex.Message;
        }
    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            Product p = new Product();
            if (p.insertProd(TxtID.Text, TxtPName.Text, TxtPModel.Text, DDLCo.SelectedItem.Text, TxtPrice.Text, TxtDesc.Text))
            {
                LabDISP.Text = "Product sucessfully added...";
                Response.Redirect("AdminProdDetails.aspx?pid=" + TxtID.Text);
            }
        }
        catch (Exception ex)
        {
            LabDISP.Text = ex.Message;
        }
    }
}

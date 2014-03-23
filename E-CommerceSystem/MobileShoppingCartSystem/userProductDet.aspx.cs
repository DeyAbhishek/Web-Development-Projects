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
            string pid = Request.QueryString["pid"];

            Product p = new Product(pid);
            dt = p.getProduct;
            LabPID.Text = dt.Rows[0][0].ToString();
            LabName.Text = dt.Rows[0][1].ToString();
            LabModel.Text = dt.Rows[0][2].ToString();
            LabCo.Text = dt.Rows[0][3].ToString();
            LabPrice.Text = dt.Rows[0][4].ToString();
            TxtDes.Text = dt.Rows[0][5].ToString();

            string imgname = pid + ".jpg";
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

            MobImg.ImageUrl = imagepath;
        }
        catch (Exception ex)
        {
            LabDisp.Text = ex.Message;
        }
    }

    protected void BtnBack_Click(object sender, EventArgs e)
    {
        
    }

    protected void BtnCart_Click(object sender, EventArgs e)
    {

        DataTable cartTB = new DataTable();

        cartTB.Columns.Add(new DataColumn("pid", Type.GetType("System.String")));
        cartTB.Columns.Add(new DataColumn("pmodel", Type.GetType("System.String")));
        cartTB.Columns.Add(new DataColumn("price", Type.GetType("System.String")));

        if (Session["cart"] != null)
        {
            cartTB = (DataTable)Session["cart"];
        }

        

        DataRow dr = cartTB.NewRow();
        dr["pid"] = LabPID.Text;
        dr["pmodel"] = LabModel.Text;
        dr["price"] = LabPrice.Text;
        cartTB.Rows.Add(dr);

        Session["cart"] = cartTB;

        LabDisp.Text = "Added to cart...";
    }

    protected void BtnBill_Click(object sender, EventArgs e)
    {
         if (Session["userid"] == null)
            {
                LabDisp.Text = "<font color=RED>First login to show and pay bill</font>";                
                return;
            }
            else
            {
                LabDisp.Text = "";
                Response.Redirect("Bill.aspx");
            }

    }
}

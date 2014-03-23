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

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string pid = Request.QueryString["pid"];
            Product p = new Product(pid);
            DataTable dt = p.getProduct;

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

            ProdImg.ImageUrl = imagepath;

            LabID.Text = dt.Rows[0][0].ToString();
            LabName.Text = dt.Rows[0][1].ToString();
            LabMod.Text = dt.Rows[0][2].ToString();
            LabCo.Text = dt.Rows[0][3].ToString();
            LabPrice.Text= dt.Rows[0][4].ToString();
            TxtDesc.Text = dt.Rows[0][5].ToString();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}

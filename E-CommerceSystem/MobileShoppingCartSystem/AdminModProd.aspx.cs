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
            if (p.UpdateProd(DDLPID.SelectedItem.Text, TxtPName.Text, TxtPModel.Text, DDLCo.SelectedItem.Text, TxtPrice.Text, TxtDesc.Text))
            {
                LabDISP.Text = "Product sucessfully Updated...";
                Response.Redirect("AdminProdDetails.aspx?pid=" + DDLPID.SelectedItem.Text);
            }
        }
        catch (Exception ex)
        {
            LabDISP.Text = ex.Message;
        }
    }

    protected void DDLCo_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            if (DDLCo.SelectedIndex == 0)
            {
                LabDISP.Text = "Fiest select a company";
                return;
            }

            dt = DBConn.DBFetch("select * from product where PCo = '" + DDLCo.SelectedItem.Text + "'");
            DDLPID.DataSource = dt;
            DDLPID.DataTextField = "Pid";
            DDLPID.DataBind();
            DDLPID.Items.Insert(0, "Select");
        }
        catch (Exception ex)
        {
            LabDISP.Text = ex.Message;
        }
    }

    protected void DDLPID_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            if (DDLPID.SelectedIndex == 0)
            {
                LabDISP.Text = "Fiest select a Product ID";
                return;
            }

            string imgname = DDLPID.SelectedItem.Text + ".jpg";
            string imgnm = MapPath("ProdImage") + "\\" + imgname;
            if (File.Exists(imgnm))
            {
                ProdImg.ImageUrl = "ProdImage/" + imgname;
            }
            else
            {
                ProdImg.ImageUrl = "ProdImage/NOIMG.jpg";
            }

            Product p = new Product(DDLPID.SelectedItem.Text);

            dt = p.getProduct;
            TxtPName.Text = dt.Rows[0][1].ToString();
            TxtPModel.Text = dt.Rows[0][2].ToString();
            TxtPrice.Text = dt.Rows[0][4].ToString();
            TxtDesc.Text = dt.Rows[0][5].ToString();
        }
        catch (Exception ex)
        {
            LabDISP.Text = ex.Message;
        }
    }

    protected void BtnUpload_Click(object sender, EventArgs e)
    {
        try
        {
            string fname, ext, savepath;
            savepath = MapPath("ProdImage");
            //LabDISP.Text = savepath;
            fname = FileUpload1.FileName;
            if (fname == null)
            {
                LabDISP.Text = "first specify a file.....";
                return;
            }

            ext = Path.GetExtension(fname);
            if (ext == ".jpg")
            {
                fname = DDLPID.SelectedItem.Text + ".jpg";
                savepath += "\\" + fname;
                FileUpload1.SaveAs(savepath);
                LabDISP.Text = "Picture successfully uploaded";
                ProdImg.ImageUrl = "ProdImage/" + fname;
            }
            else
            {
                LabDISP.Text = "Only JPG file allowed...";
            }
        }
        catch (Exception ex)
        {
            LabDISP.Text = ex.Message;
        }
    }
}

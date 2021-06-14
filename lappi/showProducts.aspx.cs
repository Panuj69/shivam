using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class showProducts : System.Web.UI.Page
{
    db d = new db();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
        }
    }
  
    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string ss = "";
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if(CheckBoxList1.Items[i].Selected == true)
            {
                ss+="'"+CheckBoxList1.Items[i].Text+"',";
            }
        }
        if (ss.Length > 0)
        {
            ss = ss.Substring(0, ss.Length - 1);
            //Response.Write("SELECT     dbo.tbl_product.product_id, dbo.tbl_product.product_name, dbo.tbl_product.product_details, dbo.tbl_category.category_name, dbo.tbl_age_group.age_name, dbo.tbl_product.sales_price, dbo.tbl_product.MRP, dbo.tbl_product.image1, dbo.tbl_product.image2, dbo.tbl_product.image3 FROM         dbo.tbl_product INNER JOIN dbo.tbl_age_group ON dbo.tbl_product.age_id = dbo.tbl_age_group.age_id INNER JOIN dbo.tbl_category ON dbo.tbl_product.category_id = dbo.tbl_category.category_id WHERE     (dbo.tbl_product.product_id IN   (SELECT DISTINCT tbl_product_1.product_id  FROM          dbo.tbl_product AS tbl_product_1 INNER JOIN dbo.tbl_product_attribute ON tbl_product_1.product_id = dbo.tbl_product_attribute.product_id WHERE      (tbl_product_1.category_id = "+ DropDownList1.SelectedValue +") AND (dbo.tbl_product_attribute.attribute_id = "+ DropDownList2.SelectedValue +") AND (dbo.tbl_product_attribute.attribute_value IN ("+ ss +"))))");
            //sql data source of gridview
            SqlDataSource1.SelectCommand = "SELECT dbo.tbl_product.product_id, dbo.tbl_product.product_name, dbo.tbl_product.product_details, dbo.tbl_category.category_name, dbo.tbl_age_group.age_name, dbo.tbl_product.sales_price, dbo.tbl_product.MRP, dbo.tbl_product.image1, dbo.tbl_product.image2, dbo.tbl_product.image3 FROM dbo.tbl_product INNER JOIN dbo.tbl_age_group ON dbo.tbl_product.age_id = dbo.tbl_age_group.age_id INNER JOIN dbo.tbl_category ON dbo.tbl_product.category_id = dbo.tbl_category.category_id WHERE (dbo.tbl_product.product_id IN (SELECT DISTINCT tbl_product_1.product_id  FROM dbo.tbl_product AS tbl_product_1 INNER JOIN dbo.tbl_product_attribute ON tbl_product_1.product_id = dbo.tbl_product_attribute.product_id WHERE (tbl_product_1.category_id = " + DropDownList1.SelectedValue + ") AND (dbo.tbl_product_attribute.attribute_id = " + DropDownList2.SelectedValue + ") AND (dbo.tbl_product_attribute.attribute_value IN (" + ss + "))))";
            ListView1.DataBind();
        }
    }
    public void addtocart(object sender, EventArgs e) // This adds items to particular's session - "mycart.aspx"
    {
        if (Session["uid"] == null)
        {
            Response.Redirect("customerlogin.aspx");
        }
        else
        {
            d.insertData("insert into tbl_cart values(" + d.latestId("tbl_cart", "cartid") + "," + Session["uid"] + "," + ((Button)sender).CommandArgument.ToString().Split(':')[0] + ",1," + ((Button)sender).CommandArgument.ToString().Split(':')[1] + ",GETDATE()," + ((Button)sender).CommandArgument.ToString().Split(':')[1] + ")");
            //if (d.getSingleRow("select * from tbl_cart where userid=" + Session["uid"] + " and product_id=" + ((Button)sender).CommandArgument.ToString().Split(':')[0]).Length == 0)
            //{

            //}
       }
    }
    protected void DropDownList1_DataBinding(object sender, EventArgs e)
    {
        
    }
    protected void DropDownList1_DataBound(object sender, EventArgs e)
    {
        if (Request.QueryString["cat"] == null)
        { 
            
        }
        else if (Request.QueryString["cat"].Equals("1"))
        {
            DropDownList1.Items[0].Selected = true;
        }
        else if (Request.QueryString["cat"].Equals("2"))
        {
            DropDownList1.Items[1].Selected = true;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)        //search button on top
    {
        string qry = @"SELECT tbl_product.product_id, tbl_product.product_name, tbl_product.product_details, tbl_category.category_name, tbl_age_group.age_name, tbl_product.sales_price, tbl_product.MRP, tbl_product.image1, tbl_product.image2, tbl_product.image3 
                     FROM tbl_product INNER JOIN tbl_category ON tbl_product.category_id = tbl_category.category_id INNER JOIN tbl_age_group ON tbl_product.age_id = tbl_age_group.age_id 
                     WHERE (tbl_product.enable = 1) and product_id in 
                     (SELECT     product_id 
                     FROM         dbo.tbl_product 
                    WHERE     (product_name + ' ' + product_details LIKE '%"+ TextBox1.Text +"%'))";
        SqlDataSource1.SelectCommand = qry;
        ListView1.DataBind();
    }
}
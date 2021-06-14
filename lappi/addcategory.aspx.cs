using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addcategory : System.Web.UI.Page
{
    db d = new db();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = d.latestId("tbl_category", "category_id");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (d.checkAvailablity("tbl_category", "category_name", TextBox1.Text))
        {
            Label2.Visible = true;
        }
        else
        {
            Label2.Visible = false;
            string qry = "insert into tbl_category values(" + d.latestId("tbl_category", "category_id") + ",'"+ TextBox1.Text +"')";
            d.insertData(qry);
            Response.Redirect("addcategory.aspx");
        }


    }
}
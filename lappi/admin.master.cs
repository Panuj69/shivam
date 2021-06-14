using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_id"] == null)
        {
            Label_qwerty.Text = "SIGN IN";
            LinkButton_12345.Visible = false;  //logout button for admin
            LinkButton_789.Visible = true;  // admin login redirecting to adminlogin.aspx
        }
        else
        {
            Label_qwerty.Text = Session["admin_name"].ToString();
            LinkButton_12345.Visible = true;   // logout btn will now be visible.
            LinkButton_789.Visible = false;
        }

    }
    protected void LinkButton_12345_Click(object sender, EventArgs e)   //logout linkbutton action here
    {
        Session["admin_id"] = null;
        Session["admin_name"] = null;
        Session.Abandon();
        Response.Redirect("showProducts.aspx");
        Label_qwerty.Text = "SIGN IN";
    }
}

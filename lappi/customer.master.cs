using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            Label1.Text = "SIGN IN";
            LinkButton1.Visible = false;    //my cart linkbutton
            LinkButton2.Visible = false;    //logout linkbutton
            LinkButton3.Visible = true;
            LinkButton4.Visible = true;
            LinkButton6.Visible = false;
            LinkButton7.Visible = false;
        }
        else
        {
            Label1.Text = Session["username"].ToString();
            LinkButton1.Visible = true;
            LinkButton2.Visible = true;
            LinkButton3.Visible = false;
            LinkButton4.Visible = false;        //LinkButton4 CUSTOMER LOGIN
            LinkButton5.Visible = false;        //LinkButton5 ADMIN LOGIN
            LinkButton6.Visible = true;
            LinkButton7.Visible = true;
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)   //logout linkbutton action here
    {
        Session["uid"] = null;
        Session["username"] = null;
        Session.Abandon();
        Response.Redirect("showProducts.aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        // redirect to purchases is done in markup, nothing to write here
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("update_customer.aspx");
    }
}

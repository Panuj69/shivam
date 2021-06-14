using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class enquiry : System.Web.UI.Page
{
    db d = new db();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click1(object sender, EventArgs e)       // submit enquiry button
    {
        string qry = " insert into tbl_enquiry values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
        d.insertData(qry);
        Response.Redirect("enquiry_success.aspx");

    }

    protected void LinkButton2_Click(object sender, EventArgs e)        // back to homepage button
    {
        Response.Redirect("contactus.aspx");
    }
}
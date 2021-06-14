using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class feedback : System.Web.UI.Page
{
    db d = new db();
    protected void Page_Load(object sender, EventArgs e)
    {
        RadioButtonList1.SelectedValue = "Excellent";
    }
    protected void LinkButton2_Click(object sender, EventArgs e)   // back button
    {
        Response.Redirect("home.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)    //submit feedback button
    {
        //string selectedValue = RadioButtonList1.SelectedValue;
        string qry = " insert into tbl_feedback values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + TextBox3.Text + "')";
        d.insertData(qry);
        Response.Redirect("feedback_success.aspx");

    }
}
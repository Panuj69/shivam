using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminlogin : System.Web.UI.Page
{
    db d = new db();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)  // admin login
    {
        string[] dt = d.getSingleRow("select * from tbl_admin where admin_name='" + input1.Value + "' and admin_password='" + input2.Value + "'").Split(':');
        try
        {
            if (dt[1].Equals(input1.Value) && dt[2].Equals(input2.Value))
            {
                Session["admin_id"] = dt[0];
                Session["admin_name"] = dt[1];
                Response.Redirect("addproduct.aspx");
            }
            else if (dt[1] != (input1.Value) && dt[2] == (input2.Value))
            {
                Label1.Text = "Invalid Adminname.";
            }
            else if (dt[1] == (input1.Value) && dt[2] != (input2.Value))
            {
                Label1.Text = "Enter password is wrong.";
            }
            else
            {

            }
        }
        catch (Exception ex)
        {

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("forgpw.aspx");
    }
}
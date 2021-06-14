using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    db d = new db();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }
    protected void Button1_Click(object sender, EventArgs e)  // only customer login
    {
        string[] dt = d.getSingleRow("select * from tbl_user where username='" + input1.Value + "' and passw='" + input2.Value + "'").Split(':');
        try
        {
            if (dt[1].Equals(input1.Value) && dt[2].Equals(input2.Value))
            {
                Session["uid"] = dt[0];
                Session["username"] = dt[1];
                Response.Redirect("home.aspx");
            }
            else if(dt[1] != (input1.Value) && dt[2] == (input2.Value))
            {
                Label1.Text= "Invalid Username.";
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
           // Label1.Text = "Wrong username or password entered.";
        }
       
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("forgpw.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("registration.aspx");
    }
}

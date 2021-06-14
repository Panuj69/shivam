
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class forgpw : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection c = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=tinkesh;Integrated Security=True");
        //SqlCommand smd;
        db d = new db();
        Label1.Text = "";
        c.Open();
        string str = "select * from [tbl_user] where username='" + user.Value.Trim() + "'";
        SqlCommand com= new SqlCommand(str, c);
        SqlDataReader reader = com.ExecuteReader();
        if (reader.Read())
        {
            pass.Value = reader["passw"].ToString();
            reader.Close();
            c.Close();
        }
        else
        {
            Label1.Text = "Enter your username";
        }
        
      /*  string un = user.Value;
        string pw = user.Value;
        
        string strcmd="update tbl_user set passw='"+pass.Value+"' where username='"+user.Value+"'";
        
        smd = new SqlCommand(strcmd,c);
        try
        {
            smd.ExecuteNonQuery();
        }
        catch
        {
            errlbl.Text = "Unable to change the password";
        }
        c.Close();
        Response.Redirect("showProducts.aspx?cat=1");
        //Label1.Text = "Password Changes Successfully...Go to LoginPage";*/
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("customerlogin.aspx");
    }
}
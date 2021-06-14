using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class registration : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=tinkesh;Integrated Security=True");
    SqlCommand smd;
    db d = new db();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (!pass.Value.Equals(rpass.Value))
        {

            lblpmatch.Text = "Passwords do not match";
        }
        else
        {
            if(containalpha(mono.Value))
            {
                lblmono.Text = "Invalid mobile number";
            }
            else
            {
                c.Open();
            string uid = d.latestId("tbl_user", "userid");
            string strcmd = "insert into tbl_user values(" + uid + ",'" + user.Value + "','" + pass.Value + "','" + ema.Value + "','" + add.Value + "'," + mono.Value + ")";
            smd = new SqlCommand(strcmd, c);
            try
            {
                smd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                errlbl.Text = "Failed to register";
            }
            c.Close();
            user.Value = String.Empty;
            pass.Value = String.Empty;
            ema.Value = String.Empty;
            add.Value = String.Empty;
            mono.Value = String.Empty;
            Response.Redirect("customerlogin.aspx");
            }
        } 
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("customerlogin.aspx");
    }
    public bool containalpha(string x)
    {
        bool var=false;
        char[] alpha="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".ToCharArray();
        for (int i = 0; i < x.Length;i++ )
        {
            for(int j=0;j<alpha.Length;j++)
            {
                if(x[i].Equals(alpha[j]))
                {
                    var=true;
                }
            }
        }
        return var;
    }
}
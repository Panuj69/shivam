using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class update_customer : System.Web.UI.Page
{
    db d = new db();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            Response.Redirect("customerlogin.aspx");
        }
        else
        {
            string[] dt1 = d.getSingleRow("select * from tbl_user where userid=" + Session["uid"]).Split(':');

        }

    }
}
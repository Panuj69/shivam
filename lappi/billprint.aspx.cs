using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class billprint : System.Web.UI.Page
{
    db d = new db();
    protected void Page_Load(object sender, EventArgs e)
    {
        string qry = "select total,dt from tbl_bill where billid =" + Request.QueryString["billid"];
        Label1.Text = d.getSingleRow(qry).Split(':')[0];
    }
}
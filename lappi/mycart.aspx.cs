using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.Net.Mail;
public partial class mycart : System.Web.UI.Page
{
    db d = new db();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            Response.Redirect("customerlogin.aspx");
        }
        sumss();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string qry = "update tbl_cart set qty= " + ((DropDownList)sender).SelectedValue + " , total = price * " + ((DropDownList)sender).SelectedValue + " where product_id = " + ((DropDownList)sender).ToolTip + " and userid =" + Session["uid"];
        //Response.Write(qry);
        d.updateData(qry);
        GridView1.DataBind();
        sumss();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        d.deleteData("delete from tbl_cart where userid=" + Session["uid"] + " and product_id=" + ((LinkButton)sender).CommandArgument);
        GridView1.DataBind();
        sumss();
    }

    public void sumss()
    {
        string[] dt = d.getSingleRow("SELECT     SUM(total) AS Expr1 FROM         tbl_cart WHERE     (userid = " + Session["uid"] + ")").Split(':');
        if (dt.Length > 0)
        {
            Label2.Text = "Total amount is INR " + dt[0];
            Label2.ToolTip = dt[0];
            Button1.Enabled = true;
        }
        else
        {
            Label2.Text = "";
            Button1.Enabled = false;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)  // PROCEED TO CHECKOUT wala button. This adds data to tbl_bill.
    {
         string billid = d.latestId("tbl_bill", "billid");
        d.insertData("insert into tbl_bill values(" + billid + "," + Session["uid"] + "," + Label2.ToolTip + ",GETDATE())");

        DataSet ds = d.selectData("select * from tbl_cart where userid=" + Session["uid"]);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            d.insertData("insert into tbl_billitems values(" + d.latestId("tbl_billitems", "itemid") + "," + billid + "," + ds.Tables[0].Rows[i][2].ToString() + "," + ds.Tables[0].Rows[i][3].ToString() + "," + ds.Tables[0].Rows[i][6].ToString() + ")");
        }

        d.deleteData("delete from tbl_cart where userid=" + Session["uid"]);
        GridView1.DataBind();
        sumss();
        Button1.Enabled = false;
        //---------------------------------
        DataSet billlist = d.selectData(@"SELECT     dbo.tbl_product.product_name, dbo.tbl_product.product_details, dbo.tbl_category.category_name, dbo.tbl_product.sales_price, dbo.tbl_billitems.qty, dbo.tbl_billitems.total
                      FROM         dbo.tbl_billitems INNER JOIN
                      dbo.tbl_product ON dbo.tbl_billitems.product_id = dbo.tbl_product.product_id INNER JOIN
                      dbo.tbl_category ON dbo.tbl_product.category_id = dbo.tbl_category.category_id
                      WHERE     (dbo.tbl_billitems.billid = " + billid + ")");
        string[] dt = d.getSingleRow("select * from tbl_bill where billid = "+billid).Split(':');
        string[] dt1 = d.getSingleRow("select * from tbl_user where userid=" + Session["uid"]).Split(':');

        string htmlcon = "<h2>TOPDESK Laptops & Accessories - Your Today's purcahse of Date " + dt[3].Substring(0, dt[3].Length - 2) + "</h2><h3>TOTAL PRICE : " + dt[2] + " RS </h3><br/>Hello Dear Customer ! Your shopping details are as below <br/><br/><br/><table border><tr><td><b>PRODUCT NAME</b></td><td><b>CATEGORY</b></td><td><b>PRICE</b></td><td><b>QUANTITY</b></td><td><b>TOTAL</b></td></tr>";

        for (int i = 0; i < billlist.Tables[0].Rows.Count; i++)
        {
            htmlcon += "<tr><td>" + billlist.Tables[0].Rows[i][0] + "</td><td>" + billlist.Tables[0].Rows[i][2] + "</td><td>" + billlist.Tables[0].Rows[i][3] + "</td><td>" + billlist.Tables[0].Rows[i][4] + "</td><td>" + billlist.Tables[0].Rows[i][5] + "</td></tr>";
        }

        htmlcon += "</table>";
       // d.sendmail(dt[3], "YOUR TOPDESK PURCHASE DETAILS", htmlcon);


        Response.Redirect("billprint.aspx?billid=" + billid);
    }
}
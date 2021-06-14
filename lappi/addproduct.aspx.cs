using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class addproduct : System.Web.UI.Page
{
    db d = new db();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = d.latestId("tbl_product", "product_id");
        if (!IsPostBack)
        {
            SetInitialRow();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)    // add product button
    {
        if (d.checkAvailablity("tbl_product", "product_name", TextBox1.Text))
        {
            Label2.Visible = true;
        }
        else
        {
            Label2.Visible = false;
            string product_id = d.latestId("tbl_product", "product_id");
            string qry = "insert into tbl_product values(" + product_id + ",'" + TextBox1.Text + "','" + TextBox2.Text + "'," + DropDownList3.SelectedValue + "," + DropDownList2.SelectedValue + "," + TextBox3.Text + "," + TextBox4.Text + ",'" + product_id + "_1.jpg','" + product_id + "_2.jpg','" + product_id + "_3.jpg',1)";
            
            FileUpload1.SaveAs(Server.MapPath("") + "\\images\\" + product_id + "_1.jpg");
            FileUpload2.SaveAs(Server.MapPath("") + "\\images\\" + product_id + "_2.jpg");
            FileUpload3.SaveAs(Server.MapPath("") + "\\images\\" + product_id + "_3.jpg");

            d.insertData(qry);
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                string attqry = "insert into tbl_product_attribute values(" + d.latestId("tbl_product_attribute", "prod_attr_id") + "," + product_id + "," + GridView1.Rows[i].Cells[1].Text + ",'" + GridView1.Rows[i].Cells[3].Text + "')";
                d.insertData(attqry);
            }

            Response.Redirect("addproduct.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)    //add attribute button
    {

        bool avai = false;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            if (DropDownList4.SelectedValue.Equals(GridView1.Rows[i].Cells[1].Text))
            {
                avai = true;
                break;
            }
        }


        if (avai == false)
        {
            DataTable dt = (DataTable)ViewState["CurrentTable"];
            DataRow dr = null;
            dr = dt.NewRow();
            dr["Srno"] = GridView1.Rows.Count + 1; ;
            dr["AttributeId"] = DropDownList4.SelectedValue;
            dr["AttributeName"] = DropDownList4.SelectedItem.Text;
            dr["AttributeValue"] = TextBox5.Text;
            dt.Rows.Add(dr);

            ViewState["CurrentTable"] = dt;
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

    }

    private void SetInitialRow()
    {

        DataTable dt = new DataTable();
        DataRow dr = null;
        dt.Columns.Add(new DataColumn("Srno", typeof(string)));
        dt.Columns.Add(new DataColumn("AttributeId", typeof(string)));
        dt.Columns.Add(new DataColumn("AttributeName", typeof(string)));
        dt.Columns.Add(new DataColumn("AttributeValue", typeof(string)));
        //dr = dt.NewRow();
        //dr["Srno"] = 1;
        //dr["AttributeId"] = string.Empty;
        //dr["AttributeName"] = string.Empty;
        //dr["AttributeValue"] = string.Empty;
        //dt.Rows.Add(dr);

        //dr = dt.NewRow();



        //Store the DataTable in ViewState

        ViewState["CurrentTable"] = dt;
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
}
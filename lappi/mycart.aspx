<%@ Page Title="" Language="C#" MasterPageFile="~/customer.master" AutoEventWireup="true" CodeFile="mycart.aspx.cs" Inherits="mycart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-2">

</div>
<div class="col-8">

    <asp:GridView CssClass="table-striped" ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" BorderStyle="None">
        <Columns>
            <asp:BoundField DataField="product_name" HeaderText="PRODUCT NAME" 
                SortExpression="product_name" />
            <asp:TemplateField HeaderText="IMAGE" SortExpression="image1">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image1") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" Height="100px" runat="server" ImageUrl='<%# "~/images/"+Eval("image1") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="sales_price" HeaderText="PRICE" 
                SortExpression="sales_price" />
            <asp:TemplateField HeaderText="QUANTITY" SortExpression="qty">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("qty") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                        SelectedValue='<%# Bind("qty") %>' ToolTip='<%# Bind("product_id") %>'>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="dt" HeaderText="Date & Time" SortExpression="dt" />
            <asp:BoundField DataField="total" HeaderText="Total(INR)" SortExpression="total" />
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                        CommandArgument='<%# Eval("product_id") %>' CommandName="Delete" 
                        onclick="LinkButton1_Click" Text="Remove From Cart"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db_games_n_books_ConnectionString %>" 
        
        SelectCommand="SELECT tbl_product.product_name, tbl_product.image1, tbl_product.sales_price, tbl_cart.qty, tbl_cart.dt, tbl_cart.total, tbl_cart.product_id FROM tbl_cart INNER JOIN tbl_product ON tbl_cart.product_id = tbl_product.product_id WHERE (tbl_cart.userid = @uid)">
        <SelectParameters>
            <asp:SessionParameter Name="uid" SessionField="uid" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />
    <h3><b><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></b></h3>
    <b><asp:Button CssClass="form-control btn-primary" ID="Button1" runat="server" 
        Text="Proceed to check out" onclick="Button1_Click" /></b></br>
        <h4><asp:Label id="Label_note" runat="server" style="color:Red" Visible="True"><u>NOTE</u> : Only <b>Cash On Delivery(COD)</b> is available in Payment Modes currently. </asp:Label></h4>

</div>
    <div class="col-2">

</div>
</asp:Content>


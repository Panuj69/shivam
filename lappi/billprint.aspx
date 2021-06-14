<%@ Page Title="" Language="C#" MasterPageFile="~/customer.master" AutoEventWireup="true" CodeFile="billprint.aspx.cs" Inherits="billprint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<%--https://stackoverflow.com/questions/43361813/how-to-print-     the script url   --%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
        function printdiv(printpage) {
            var headstr = "<html><head><title></title></head><body>";
            var footstr = "</body>";
            var newstr = document.all.item(printpage).innerHTML;
            var oldstr = document.body.innerHTML;
            document.body.innerHTML = headstr + newstr + footstr;
            window.print();
            document.body.innerHTML = oldstr;
            return false;
        }
</script>

<div>
<div id="print_div" style="margin-left:30em;position:relative">    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="billid" HeaderText="BILL ID" 
                SortExpression="billid" />
            <asp:BoundField DataField="product_id" HeaderText="PRODUCT ID" 
                SortExpression="product_id" />
            <asp:BoundField DataField="product_name" HeaderText="PRODUCT NAME" 
                SortExpression="product_name" />
            <asp:BoundField DataField="sales_price" HeaderText="SALES PRICE" 
                SortExpression="sales_price" />
            <asp:BoundField DataField="qty" HeaderText="QUANTITY" SortExpression="qty" />
            <asp:BoundField DataField="total" HeaderText="TOTAL" SortExpression="total" />
            <asp:BoundField DataField="category_name" HeaderText="CATEGORY" 
                SortExpression="category_name" />
            <asp:BoundField DataField="dt" HeaderText="DATE & TIME" SortExpression="dt" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <h3>Total Price(INR) : <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>.00</h3>
    <h4><asp:Label ID="Label2" runat="server" Text="PURCHASE SUCCESSFUL. Please complete the payment by Cash On Delivery."></asp:Label></h4>
    </div>
   

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db_games_n_books_ConnectionString %>" SelectCommand="SELECT DISTINCT 
                      dbo.tbl_billitems.billid, dbo.tbl_billitems.product_id, dbo.tbl_product.product_name, dbo.tbl_product.sales_price, dbo.tbl_billitems.qty, dbo.tbl_billitems.total, dbo.tbl_category.category_name, 
                      dbo.tbl_bill.dt
FROM         dbo.tbl_billitems INNER JOIN
                      dbo.tbl_product ON dbo.tbl_billitems.product_id = dbo.tbl_product.product_id INNER JOIN
                      dbo.tbl_category ON dbo.tbl_product.category_id = dbo.tbl_category.category_id INNER JOIN
                      dbo.tbl_bill ON dbo.tbl_billitems.billid = dbo.tbl_bill.billid
WHERE     (dbo.tbl_billitems.billid = @billid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="billid" QueryStringField="billid" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br /><br /><br />
     <center><div style="position:relative">
    <input type="button" class="btn btn-primary btn-lg" onclick="printdiv('print_div')" value="PRINT BILL"/>
</div>
</center>
</div>
  
</asp:Content>

<%--<%@ Page Title="" Language="C#" MasterPageFile="~/customer.master" AutoEventWireup="true" CodeFile="billprint.aspx.cs" Inherits="billsum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
        function printdiv(printpage) {
            var headstr = "<html><head><title></title></head><body>";
            var footstr = "</body>";
            var newstr = document.all.item(printpage).innerHTML;
            var oldstr = document.body.innerHTML;
            document.body.innerHTML = headstr + newstr + footstr;
            window.print();
            document.body.innerHTML = oldstr;
            return false;
        }
</script>
<div class="col-2">

</div>
<div class="col-8">   
    <div id="print_div" style="margin-left:30em;position:relative">
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="billid" HeaderText="BILL ID" 
                SortExpression="billid" />
            <asp:BoundField DataField="product_id" HeaderText="PRODUCT ID" 
                SortExpression="product_id" />
            <asp:BoundField DataField="product_name" HeaderText="PRODUCT NAME" 
                SortExpression="product_name" />
            <asp:BoundField DataField="sales_price" HeaderText="SALES PRICE" 
                SortExpression="sales_price" />
            <asp:BoundField DataField="qty" HeaderText="QUANTITY" SortExpression="qty" />
            <asp:BoundField DataField="total" HeaderText="TOTAL" SortExpression="total" />
            <asp:BoundField DataField="category_name" HeaderText="CATEGORY" 
                SortExpression="category_name" />
            <asp:BoundField DataField="dt" HeaderText="DATE & TIME" SortExpression="dt" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <h3>Total Price(INR) : <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>.00</h3>
    <h4><asp:Label ID="Label2" runat="server" Text="PURCHASE SUCCESSFUL. Please complete the payment by Cash On Delivery."></asp:Label></h4>
    </div>
    <center>
        <div style="position:relative">
            <input type="button" class="btn btn-primary btn-lg" onclick="printdiv('print_div')" value="PRINT BILL"/>
        </div>
    </center>
</div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db_games_n_books_ConnectionString %>" SelectCommand="SELECT DISTINCT 
                      dbo.tbl_billitems.billid, dbo.tbl_billitems.product_id, dbo.tbl_product.product_name, dbo.tbl_product.sales_price, dbo.tbl_billitems.qty, dbo.tbl_billitems.total, dbo.tbl_category.category_name, 
                      dbo.tbl_bill.dt
FROM         dbo.tbl_billitems INNER JOIN
                      dbo.tbl_product ON dbo.tbl_billitems.product_id = dbo.tbl_product.product_id INNER JOIN
                      dbo.tbl_category ON dbo.tbl_product.category_id = dbo.tbl_category.category_id INNER JOIN
                      dbo.tbl_bill ON dbo.tbl_billitems.billid = dbo.tbl_bill.billid
WHERE     (dbo.tbl_billitems.billid = @billid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="billid" QueryStringField="billid" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br /><br /><br />

<div class="col-2">

</div> 
</asp:Content>

--%>
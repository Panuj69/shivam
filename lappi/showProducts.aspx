<%@ Page Title="" Language="C#" MasterPageFile="~/customer.master" AutoEventWireup="true" CodeFile="showProducts.aspx.cs" Inherits="showProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <head>
        
     </head>

<div class="input-group" >
    <div class="container-fluid" style="margin:0 0 1em 0;position:relative">
        <center>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Search for product name" class="form-control" style="width:31em;height:2em;margin-left:29%"></asp:TextBox>
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary" OnClick="LinkButton1_Click" style="border-radius:4px; margin-left: -36%;height: 29px;">
                <center>
                    <span aria-hidden="true" class="glyphicon glyphicon-search"></span>
                </center>
            </asp:LinkButton>
        </center>
    </div>
</div>

            <div class="col-md-2">
                <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" 
                    DataTextField="category_name" DataValueField="category_id" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" ondatabinding="DropDownList1_DataBinding" Height="35px"
                    ondatabound="DropDownList1_DataBound">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server"   
                    ConnectionString="<%$ ConnectionStrings:db_games_n_books_ConnectionString %>" 
                    SelectCommand="SELECT * FROM [tbl_category]"></asp:SqlDataSource>
                
                <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server" 
                    DataTextField="attribute_name" DataValueField="attribute_id" 
                    AutoPostBack="True" DataSourceID="SqlDataSource3" Height="35px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:db_games_n_books_ConnectionString %>" 
                    SelectCommand="SELECT tbl_attribute.attribute_id, tbl_attribute.attribute_name FROM tbl_product_attribute INNER JOIN tbl_product ON tbl_product_attribute.product_id = tbl_product.product_id INNER JOIN tbl_attribute ON tbl_product_attribute.attribute_id = tbl_attribute.attribute_id WHERE (tbl_product.category_id = @getcatid) GROUP BY tbl_attribute.attribute_id, tbl_attribute.attribute_name">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="getcatid" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />




                <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource4" DataTextField="attribute_value" 
                    DataValueField="attribute_value" 
                    onselectedindexchanged="CheckBoxList1_SelectedIndexChanged">
                </asp:CheckBoxList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:db_games_n_books_ConnectionString %>" 
                    
                    
                    SelectCommand="SELECT DISTINCT dbo.tbl_product_attribute.attribute_value 
FROM         dbo.tbl_product INNER JOIN
                      dbo.tbl_product_attribute ON dbo.tbl_product.product_id = dbo.tbl_product_attribute.product_id
WHERE (dbo.tbl_product.category_id =@catid) AND (dbo.tbl_product_attribute.attribute_id=@attrid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="catid" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="attrid" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br /><br />
      
            </div>
        <div class="col-md-10">
    
    
    
  <%--+++++++++++++++++++++++++++++listview starts here+++++++++++++++++++++++++++++--%> 
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
        <div class="row">
        <div class="col-md-3">
          
          <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img class="d-block w-100" src='<%# "images/" + Eval("image1") %>'  style="width:100px;hieght:150px">
                  
                </div>
                <div class="carousel-item">
                  <img class="d-block w-100" src='<%# "images/" + Eval("image2") %>' style="width:100px;hieght:150px">
                </div>
                <div class="carousel-item">
                  <img class="d-block w-100" src='<%# "images/" + Eval("image3") %>'  style="width:100px;hieght:150px">
                </div>
              </div>
            </div>

              
        </div>
        <div class="col-md-5">
          <h3><b><asp:Label ID="product_idLabel" runat="server" 
                Text='<%# Eval("product_id") %>' /> : <asp:Label ID="Label2" runat="server" 
                Text='<%# Eval("product_name") %>' /></b></h3>

          <p><asp:Label ID="Label3" runat="server" 
                Text='<%# Eval("product_details") %>' /></p>
          <p><b>Category</b>: <i><asp:Label ID="Label4" runat="server" 
                Text='<%# Eval("category_name") %>' /></i></p>
                <p><b>Type</b>: <i><asp:Label ID="Label5" runat="server" Text='<%# Eval("age_name") %>' /></i></p>
          <p><b>MRP</b> : <strike><asp:Label ID="Label6" runat="server" Text='<%# Eval("MRP") %>' /></strike> <b>Our Price</b> : <asp:Label ID="Label7" runat="server" 
                Text='<%# Eval("sales_price") %>' /></p>
          <asp:Button OnClick="addtocart" CommandArgument='<%# Eval("product_id")+":"+Eval("sales_price") %>' CssClass="btn btn-primary" ID="Button1" runat="server" Text="ADD TO CART" />
         
          
        </div>
        <div class="col-md-4">
          <h4><b><u>DETAILS</u></b></h4>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:db_games_n_books_ConnectionString %>" 
                    SelectCommand="SELECT tbl_attribute.attribute_name, tbl_product_attribute.attribute_value FROM tbl_attribute INNER JOIN tbl_product_attribute ON tbl_attribute.attribute_id = tbl_product_attribute.attribute_id WHERE (tbl_product_attribute.product_id = @productid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="product_idLabel" DefaultValue="0" 
                            Name="productid" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:GridView CssClass="table" ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="attribute_name" HeaderText="FEATURES" 
                            SortExpression="attribute_name" />
                        <asp:BoundField DataField="attribute_value" HeaderText="DESCRIPTION" 
                            SortExpression="attribute_value" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
        <%--</hr>--%>
        </AlternatingItemTemplate>
     
        <%--<EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>--%>
    
        <ItemTemplate>
        <div class="row">
        <div class="col-md-3">
          <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img class="d-block w-100" src='<%# "images/" + Eval("image1") %>'  style="width:100px;hieght:150px">
                  
                </div>
                <div class="carousel-item">
                  <img class="d-block w-100" src='<%# "images/" + Eval("image2") %>' style="width:100px;hieght:150px">
                </div>
                <div class="carousel-item">
                  <img class="d-block w-100" src='<%# "images/" + Eval("image3") %>'  style="width:100px;hieght:150px">
                </div>
              </div>
            </div>
        </div>
        <div class="col-md-5">
          <h3><b><asp:Label ID="product_idLabel" runat="server" 
                Text='<%# Eval("product_id") %>' /> : <asp:Label ID="Label2" runat="server" Text='<%# Eval("product_name") %>' /></b></h3>

          <p><asp:Label ID="Label3" runat="server"  
                Text='<%# Eval("product_details") %>' /></p>
          <p><b>Category</b>: <i><asp:Label ID="Label4" runat="server" 
                Text='<%# Eval("category_name") %>' /></i></p>
                <p><b>Type</b>: <i><asp:Label ID="Label5" runat="server" Text='<%# Eval("age_name") %>' /></i></p>
          <p><b>MRP</b> : <strike><asp:Label ID="Label6" runat="server" Text='<%# Eval("MRP") %>' /></strike> <b>Our Price</b> : <asp:Label ID="Label7" runat="server" 
                Text='<%# Eval("sales_price") %>' /></p>

            <asp:Button OnClick="addtocart" CommandArgument='<%# Eval("product_id")+":"+Eval("sales_price") %>' CssClass="btn btn-primary" ID="Button1" runat="server" Text="ADD TO CART" />
         
          
        </div>
        <div class="col-md-4">
          <h4><b><u>DETAILS</u></b></h4>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:db_games_n_books_ConnectionString %>" 
                    SelectCommand="SELECT tbl_attribute.attribute_name, tbl_product_attribute.attribute_value FROM tbl_attribute INNER JOIN tbl_product_attribute ON tbl_attribute.attribute_id = tbl_product_attribute.attribute_id WHERE (tbl_product_attribute.product_id = @productid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="product_idLabel" DefaultValue="0" 
                            Name="productid" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:GridView CssClass="table" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="attribute_name" HeaderText="FEATURES" 
                            SortExpression="attribute_name" />
                        <asp:BoundField DataField="attribute_value" HeaderText="DESCRIPTION" 
                            SortExpression="attribute_value" />
                    </Columns>
                </asp:GridView>

            </div>
        </div>
        
        </ItemTemplate>

        <LayoutTemplate>            
            <div ID="itemPlaceHolder" runat="server" />
        </LayoutTemplate>        
    </asp:ListView>
        <br />
        <br />

            <div class="page" style="margin-left:25em">
            <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="3">
                <Fields>
                    <asp:NumericPagerField ButtonType="Button" NextPageText="Next" />
                </Fields>
            </asp:DataPager>
            <div ID="itemPlaceholder" runat="server" />
            </div>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:db_games_n_books_ConnectionString %>" 
                SelectCommand="SELECT tbl_product.product_id, tbl_product.product_name, tbl_product.product_details, tbl_category.category_name, tbl_age_group.age_name, tbl_product.sales_price, tbl_product.MRP, tbl_product.image1, tbl_product.image2, tbl_product.image3 FROM tbl_product INNER JOIN tbl_category ON tbl_product.category_id = tbl_category.category_id INNER JOIN tbl_age_group ON tbl_product.age_id = tbl_age_group.age_id WHERE (tbl_product.enable = 1) AND (tbl_product.category_id = @catid) ORDER BY tbl_product.product_id">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="catid" 
                        PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
    </div>
    

   
</asp:Content>
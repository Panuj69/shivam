<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addproduct.aspx.cs" Inherits="addproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 192px;
    }
    .style5
    {
        width: 311px;
    }
    .style6
    {
        width: 192px;
        height: 29px;
    }
    .style8
    {
        width: 311px;
        height: 29px;
    }
    .style9
    {
        height: 29px;
    }
        .style10
        {
            width: 60px;
        }
        .style11
        {
            width: 60px;
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class = "container" style = "position:relative;top:2em;">
    <div class="row">
     <div class = "col-md-12">

    <table style="width: 100%;" cellpadding="5px">
    <tr>
        <td colspan="3" style="font-weight: 700; font-size:x-large">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            ADD PRODUCT</td>
    </tr>
    <tr>
        <td class="style3">
            PRODUCT ID</td>
        <td class="style10">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="style5">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            PRODUCT NAME</td>
        <td class="style10">
            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
        </td>
        <td class="style5">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="**Field required." 
                ForeColor="Red" ValidationGroup="Z"></asp:RequiredFieldValidator>
            <asp:Label ID="Label2" runat="server" Text="Already Available." Visible="False"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            PRODUCT DETAILS</td>
        <td class="style10">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Height="259px" TextMode="MultiLine" 
                Width="517px"></asp:TextBox>
        </td>
        <td class="style5">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="**Field required." 
                ForeColor="Red" ValidationGroup="Z"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            CATEGORY</td>
        <td class="style10">
            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" 
                DataSourceID="SqlDataSource1" DataTextField="category_name" 
                DataValueField="category_id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:db_games_n_books_ConnectionString %>" 
                SelectCommand="SELECT * FROM [tbl_category]"></asp:SqlDataSource>
        </td>
        <td class="style5">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            TYPE</td>
        <td class="style10">
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" 
                DataSourceID="SqlDataSource2" DataTextField="age_name" DataValueField="age_id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:db_games_n_books_ConnectionString %>" 
                SelectCommand="SELECT * FROM [tbl_age_group]"></asp:SqlDataSource>
        </td>
        <td class="style5">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            SALES PRICE</td>
        <td class="style10">
            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
        </td>
        <td class="style5">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="**Field required." 
                ForeColor="Red" ValidationGroup="Z"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            MRP</td>
        <td class="style10">
            <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>
        </td>
        <td class="style5">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="**Field required." 
                ForeColor="Red" ValidationGroup="Z"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            ADD ATTRIBUTES</td>
        <td class="style10">
            <asp:DropDownList ID="DropDownList4" CssClass="form-control" runat="server" 
                DataSourceID="SqlDataSource3" DataTextField="attribute_name" 
                DataValueField="attribute_id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:db_games_n_books_ConnectionString %>" 
                SelectCommand="SELECT * FROM [tbl_attribute]"></asp:SqlDataSource>
            </td>
        <td class="style5">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style10">
            <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" Height="38px" Width="267px"></asp:TextBox>
        </td>
        <td class="style5">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="**Field required." 
                ForeColor="Red" ValidationGroup="Z"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style10">
            <asp:Button ID="Button2" CssClass="btn-info" runat="server" onclick="Button2_Click" 
                Text="ADD ATTRIBUTE" />
        </td>
        <td class="style5">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            </td>
        <td class="style11">
            <asp:GridView ID="GridView1" runat="server" CssClass="form-control">
            </asp:GridView>
        </td>
        <td class="style8">
            &nbsp;</td>
        <td class="style9">
            </td>
    </tr>
    <tr>
        <td class="style3">
            IMAGE 1<br />
            IMAGE 2<br />
            IMAGE 3</td>
        <td class="style10">
            <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
            <br />
            <asp:FileUpload ID="FileUpload2" CssClass="form-control" runat="server" />
            <br />
            <asp:FileUpload ID="FileUpload3" CssClass="form-control" runat="server" />
        </td>
        <td class="style5">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="FileUpload1" ErrorMessage="**Field required." 
                ForeColor="Red" ValidationGroup="Z"></asp:RequiredFieldValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="FileUpload2" ErrorMessage="**Field required." 
                ForeColor="Red" ValidationGroup="Z"></asp:RequiredFieldValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="FileUpload3" ErrorMessage="**Field required." 
                ForeColor="Red" ValidationGroup="Z"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td class="style10">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="ADD PRODUCT" Width="150px" ValidationGroup="Z"  />
        </td>
        <td class="style5">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>

    </div>
    </div>
    </div>
<br/>
</asp:Content>
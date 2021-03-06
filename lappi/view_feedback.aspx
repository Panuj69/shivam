<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="view_feedback.aspx.cs" Inherits="view_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div><div class="fruitjuice" style="margin-top:7em"><center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" 
        GridLines="Vertical" AllowPaging="True">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="name" HeaderText="NAME" SortExpression="name" />
            <asp:BoundField DataField="email" HeaderText="EMAIL" SortExpression="email" />
            <asp:BoundField DataField="rating" HeaderText="RATING" 
                SortExpression="rating" />
            <asp:BoundField DataField="message" HeaderText="MESSAGE" 
                SortExpression="message" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db_games_n_books_ConnectionString %>" 
        SelectCommand="SELECT * FROM [tbl_feedback]"></asp:SqlDataSource>
    </center>
    </div>
</div>
</asp:Content>


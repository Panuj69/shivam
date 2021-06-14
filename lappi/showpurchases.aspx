<%@ Page Title="" Language="C#" MasterPageFile="~/customer.master" AutoEventWireup="true" CodeFile="showpurchases.aspx.cs" Inherits="showpurchases" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="margin-left:30em">
        
        <asp:GridView ID="GridView1" class="table-striped" runat="server" AutoGenerateColumns="False" 
            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
            CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" style="width:60em;height:15em;">
            <Columns>
                <asp:BoundField DataField="billid" HeaderText="BILL ID" 
                    SortExpression="billid" />
                <asp:BoundField DataField="dt" HeaderText="DATE & TIME" SortExpression="dt" />
                <asp:BoundField DataField="total" HeaderText="TOTAL" SortExpression="total" />
                              
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:db_games_n_books_ConnectionString %>" 
            SelectCommand="SELECT [billid], [total], [dt] FROM [tbl_bill] WHERE ([userid] = @userid)">
            <SelectParameters>
                <asp:SessionParameter Name="userid" SessionField="uid" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>        
    </div>
</asp:Content>


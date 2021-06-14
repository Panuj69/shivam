<%@ Page Title="" Language="C#" MasterPageFile="~/customer.master" AutoEventWireup="true" CodeFile="update_customer.aspx.cs" Inherits="update_customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="div_update" style="margin-top:0em; margin-left: 40em;height:35em">
<div class="update_info" style="margin:5em;">
        
    <h4><asp:Label ID="Label1" runat="server"  Font-Bold="true" Text="User ID and Username cannot be changed."></asp:Label></h4>
    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>


    <asp:DetailsView ID="DetailsView1" runat="server" Height="183px" Width="361px" 
        AutoGenerateRows="False" DataKeyNames="userid" 
        DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="userid" HeaderText="userid" ReadOnly="True" 
                SortExpression="userid" />
            <asp:TemplateField HeaderText="username" SortExpression="username">
                <EditItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("username") %>' 
                        Visible="False"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("username") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("username") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="passw" HeaderText="password" 
                SortExpression="password" />
            <asp:BoundField DataField="email" HeaderText="email" 
                SortExpression="email" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db_games_n_books_ConnectionString %>" 
        DeleteCommand="DELETE FROM [tbl_user] WHERE [userid] = @original_user_id" 
        InsertCommand="INSERT INTO [tbl_user] ([userid], [username], [passw], [email], [address], [mobile]) VALUES (@userid, @username, @passw, @email, @address, @mobile)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [tbl_user] WHERE ([userid] = @user_id)" 
        
        UpdateCommand="UPDATE [tbl_user] SET [username] = @username, [passw] = @passw, [email] = @email, [address] = @address, [mobile] = @mobile WHERE [userid] = @original_userid">
        <DeleteParameters>
            <asp:Parameter Name="original_userid" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="userid" Type="Decimal" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="passw" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="mobile" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="user_id" SessionField="uid" Type="Decimal" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="passw" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="mobile" Type="Decimal" />
            <asp:Parameter Name="original_userid" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
</div>
</asp:Content>


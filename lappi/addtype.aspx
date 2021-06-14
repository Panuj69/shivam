<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addtype.aspx.cs" Inherits="addagegroup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
    .style2
    {
        width: 202px;
    }
    .style3
    {
        width: 256px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class = "container" style = "position:relative;top:2em;">
    <div class="row">
     <div class = "col-md-12">

    <table style="width: 100%;" cellpadding="5px">
        <tr>
            <td colspan="3" style="font-weight: 700;font-size:x-large">
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ADD TYPE</strong></td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp; TYPE ID</td>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp; TYPE NAME</td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server"  CssClass="form-control"></asp:TextBox>
            </td>
            <td>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="**Field required." ForeColor="Red" 
                    ValidationGroup="N"></asp:RequiredFieldValidator>
&nbsp;<asp:Label ID="Label2" runat="server" Text="Already available." Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" Text="ADD" ValidationGroup="N" 
                    Width="130px" onclick="Button1_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

     </div>

    </div>
    </div>


</asp:Content>


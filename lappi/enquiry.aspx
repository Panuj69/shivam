<%@ Page Language="C#" AutoEventWireup="true" CodeFile="enquiry.aspx.cs" Inherits="enquiry" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ENQUIRY FORM</title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="vendor/bootstrap/css/bootstrap-grid.css" rel="stylesheet" type="text/css" />
    <link href="vendor/bootstrap/css/bootstrap-grid.min.css" rel="stylesheet" type="text/css" />
    <link href="vendor/bootstrap/css/bootstrap-reboot.css" rel="stylesheet" type="text/css" />
    <link href="vendor/bootstrap/css/bootstrap-reboot.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <style type="text/css">
        .container-fluid {
    padding: 25px;
    position: relative;
}

.s1mran
{
    padding-bottom:10px;
}

.form-login {
    padding-top: 30px;
    padding-bottom: 50px;
    padding-left: 70px;
    padding-right: 70px;
    border-radius: 30px;
    border-color:Black;
    border-width: 5px;
    box-shadow:12px 12px 21px #888888;
    padding:5em;
}
.form-control {
    border-radius: 10px;
}
    </style>
</head>
<body style="background-image:url(Site_images/image5.jpg);background-repeat:no-repeat;
	background-size: cover;
	background-attachment: fixed;">
    <form id="form1" runat="server" >
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3">
                    <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-dark btn-lg" style="color:white" onclick="LinkButton2_Click"><span aria-hidden="true" style="" class="glyphicon glyphicon-arrow-left"></span>&nbsp;Back to Contact Us</asp:LinkButton></div>
                <div class="col-md-6" style="margin-top:1em"><center><h1><strong>What's your Question?</strong></h1></center>
                    <div class="form-login">
                        <div><asp:TextBox ID="TextBox1" runat="server" class="form-control input-md chat-input" placeholder="Your Name"></asp:TextBox></div><br />
                        <div><asp:TextBox ID="TextBox2" runat="server" class="form-control input-md chat-input" placeholder="Your Email"></asp:TextBox></div><br />
                        <div><asp:TextBox ID="TextBox3" runat="server"  class="form-control input-md chat-input" placeholder="Your Message" TextMode="MultiLine" style="height:7em"></asp:TextBox></div><br />
                        <center><div>
                            <asp:LinkButton ID="LinkButton1" class="btn btn-primary btn-lg" runat="server" onclick="LinkButton1_Click1">Submit</asp:LinkButton></div></center>
                    </div>
                </div>
                <div class="col-md-3"></div>
            </div>
        </div>
    </form>
</body>
</html>

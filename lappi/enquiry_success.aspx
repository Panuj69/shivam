<%@ Page Language="C#" AutoEventWireup="true" CodeFile="enquiry_success.aspx.cs" Inherits="enquiry_success" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="vendor/bootstrap/css/bootstrap-grid.css" rel="stylesheet" type="text/css" />
    <link href="vendor/bootstrap/css/bootstrap-grid.min.css" rel="stylesheet" type="text/css" />
    <link href="vendor/bootstrap/css/bootstrap-reboot.css" rel="stylesheet" type="text/css" />
    <link href="vendor/bootstrap/css/bootstrap-reboot.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <title>ENQUIRY SUBMITTED</title>
</head>
<body style="background-image:url(Site_images/image5.jpg);background-repeat:no-repeat;
	background-size: cover;
	background-attachment: fixed;">
    <form id="form1" runat="server">
    <div style="margin-top:20em">
        <center><h1><strong>Thank you for submitting your question.<br/>You will be contacted soon by our administrator.</strong></h1>
            <br/><br/>
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-lg" 
                Text="Back to Homepage" onclick="Button1_Click"/>
        </center>
    </div>
    </form>
</body>
</html>

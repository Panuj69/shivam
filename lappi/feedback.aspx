<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>YOUR FEEDBACK</title>
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
<body>
    <form id="form1" runat="server" style="background-image:url(Site_images/image5.jpg);background-repeat:no-repeat;
	background-size: cover;
	background-attachment: fixed;">
        <div class="container-fluid" style="margin-top:0em">
                <div class="row">
                    <div class="col-md-3">
                        <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-dark btn-lg" 
                            style="color:white" onclick="LinkButton2_Click" CausesValidation="False"><span aria-hidden="true" style="" class="glyphicon glyphicon-arrow-left"></span>&nbsp;Back to Homepage</asp:LinkButton>
                    </div>
                    <div class="col-md-6" style="margin-top:-3em;"><center><h1><strong><u>FEEDBACK</u></strong></h1></center>
                        <div class="form-login">
                            <div>
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control input-md chat-input s1mran" placeholder="Your Name"></asp:TextBox>
                                
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required." ForeColor="Red" ControlToValidate="TextBox1">
                                </asp:RequiredFieldValidator>

                            </div><br />
                            <div>
                                <asp:TextBox ID="TextBox2" runat="server" 
                                    class="form-control input-md chat-input s1mran" placeholder="Your Email"></asp:TextBox>
                                
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is required." ForeColor="Red" ControlToValidate="TextBox2">
                                </asp:RequiredFieldValidator>
                            </div><br />
                            <div>
                                <center>
                                    <h5><b>*Please provide your feedback on the quality of our service</b>
                                    </h5></center>
                                    <center><asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                        <asp:ListItem Text ="Excellent" Value="Excellent" />
                                        <asp:ListItem Text ="Good" Value="Good" />
                                        <asp:ListItem Text ="Average" Value="Average" />
                                        <asp:ListItem Text ="Poor" Value="Poor" />
                                        <asp:ListItem Text ="Very Bad" Value="Very Bad" />
                                    </asp:RadioButtonList>
                                    </center>
                            </div>
                            <div>
                                <center>
                                    <h5>
                                        <b>*Do you have suggestions on what we can do to provide you with a better service?</b>
                                    </h5>
                                </center>
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control input-md chat-input s1mran" placeholder="Your Message" TextMode="MultiLine" style="height:5em;">
                                    </asp:TextBox>
                                    
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Message is required." ForeColor="Red" ControlToValidate="TextBox3">
                                    </asp:RequiredFieldValidator>
                            </div><br />
                            <center>
                                <div>
                                    <asp:LinkButton ID="LinkButton1" class="btn btn-primary btn-lg" runat="server" 
                                    onclick="LinkButton1_Click">Submit Feedback</asp:LinkButton>
                                </div>
                            </center>
                        </div>
                    </div>
                    <div class="col-md-3">
                    </div>
                </div>
        </div>
    </form>
</body>
</html>

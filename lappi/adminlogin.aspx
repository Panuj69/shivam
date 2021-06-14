<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>ADMIN LOGIN PORTAL</title>
     <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:600'>
    <link rel="stylesheet" href="css/style.css">

    <style type="text/css">
    .login-form {
    padding-top: 50px;
    padding-bottom: 50px;
    padding-left: 70px;
    padding-right: 70px;
    border-radius: 20px;
    border-color:#d2d2d2;
    border-width: 5px;
    padding:11em;
    }
    </style>
</head>
<body style="background-image:url(Site_images/image.jpg); background-position:inherit">
    <form id="form1" runat="server">
    <div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"></label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label">Username</label>
					<input ID="input1" runat="server" type="text" class="input" required/>
                </div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input ID="input2" type="password" class="input" data-type="password" runat="server" required />
				</div></br>
				<div class="group">
                    <asp:Button class="button" Text="Sign In" type="submit" ID="Button1" runat="server" 
                            onclick="Button1_Click" />
				</div></br>
                <div>
                    <asp:Label ID="Label1" class="label" Font-Size="X-Large" ForeColor="White" Font-Bold="true" runat="server"></asp:Label>
                </div></br>
				<div class="hr"></div>
				<div class="foot-lnk">
					<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Forgot Password?</asp:LinkButton>
				</div>
			</div>
		</div>
	</div>
</div>
    </form>
</body>
</html>

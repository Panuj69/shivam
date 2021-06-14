<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:600'>
    <link rel="stylesheet" href="css/style.css">
    <style type="text/css">
    .login-form{
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
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function add_onclick() {

        }

        function mono_onclick() {

        }

// ]]>
    </script>
</head>
<body style="background-image:url(Site_images/image.jpg); background-repeat:no-repeat;background-size: cover;background-attachment: fixed;">
    <form id="form1" runat="server">
    <div>
    
<div class="login-wrap">
	<div class="login-html">
		<%--<input id="tab-1" type="radio" name="tab" class="sign-in"><label for="tab-1" class="tab">Sign In</label>--%>
		<input id="tab-2" type="radio" name="tab" class="sign-up" checked><label for="tab-2" class="tab">Sign Up</label>
		<div class="login-form">
			<%--<div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label">Username</label>
					<input id="user" type="text" class="input">
                    
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" type="password" class="input" data-type="password">
                    
				</div>
                <div class="form-group error">  
               
            </div>  
				<div class="group">
					<input id="check" type="checkbox" class="check" checked>
					<label for="check"><span class="icon"></span> Keep me Signed in</label>
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign In">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="#forgot">Forgot Password?</a>
				</div>
			</div>--%>
			<div class="sign-up-htm">
				<div class="group">
					<label for="user" class="label">Username</label>
					<input runat="server" ID="user" type="text" class="input" required /><asp:RegularExpressionValidator 
                        ID="RegularExpressionValidator3" runat="server" ControlToValidate="user" 
                        ErrorMessage="Enter Proper Username" ForeColor="White" 
                        ValidationExpression="[0-9a-zA-Z]{2,}"></asp:RegularExpressionValidator>
&nbsp;&nbsp;</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input ID="pass" runat="server" type="password" class="input" data-type="password" required /><asp:RegularExpressionValidator 
                        ID="RegularExpressionValidator4" runat="server" ControlToValidate="pass" 
                        ErrorMessage="Passward must contain minimum 4 character,1 alphabet, 1 number " 
                        ForeColor="Yellow" 
                        ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,8}$"></asp:RegularExpressionValidator>
&nbsp;</div>
				<div class="group">
					<label for="pass" class="label">Repeat Password</label>
					<input ID="rpass" runat="server" type="password" class="input" data-type="password" required /><asp:CompareValidator 
                        ID="CompareValidator1" runat="server" ControlToCompare="pass" 
                        ControlToValidate="rpass" ErrorMessage="Passward does not match" 
                        ForeColor="White"></asp:CompareValidator>
                    <br />
                    <asp:Label ID="lblpmatch" runat="server" Text=""></asp:Label>
				</div>
				<div class="group">
					<label for="pass" class="label">Email</label>
					<input ID="ema" runat="server" type="text" class="input" required 
                        causesvalidation="False" /><asp:RegularExpressionValidator 
                        ID="RegularExpressionValidator1" runat="server" ControlToValidate="ema" 
                        ErrorMessage="Enter Proper Email" ForeColor="White" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;</div>
                <div class="group">
					<label for="pass" class="label">Address</label>
					<input ID="add" runat="server" TextMode="MultiLine" type="text" class="input" required onclick="return add_onclick()" />
				</div>
                <div class="group">
					<label for="pass" class="label">Mobile Number</label>
					<input ID="mono" runat="server" type="text" class="input" required onclick="return mono_onclick()" /><asp:RegularExpressionValidator 
                        ID="RegularExpressionValidator2" runat="server" ControlToValidate="mono" 
                        ErrorMessage="Enter Proper Number" ValidationExpression="^[789]\d{9}$" 
                        ForeColor="White"></asp:RegularExpressionValidator>
&nbsp;<asp:Label ID="lblmono" runat="server" Text=""></asp:Label>
				</div>
				<div class="group">
					<asp:Button class="button" Text="Sign In" type="submit" ID="Button1" 
                        runat="server" onclick="Button1_Click" />

                <asp:Label ID="errlbl" runat="server" Text=""></asp:Label>
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Already member?</asp:LinkButton>
				</div>
			</div>
		</div>
	</div>
</div>
    </div>
    </form>
</body>
</html>

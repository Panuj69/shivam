<%@ Page Title="" Language="C#" MasterPageFile="~/customer.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div   style=" Width:100%; Height:55em; position:relative;  margin:0px; padding:66px;top:-8em;">
                <blockquote     style=" background-color:transparent;  text-align:center; width:100%;position:relative; height:55px;margin-top:2em;">
                    <center style="margin-top:-35px;">
                        <h2 style="text-align:center; text-decoration:none;color:Red;Font-family:serif; font-size:3em;">
                            <b>
                                <i>Feel free to reach us !</i>
                            </b>
                        </h2>
                    </center>
                </blockquote>
            <br />
            <div style=" Width:50%; Height:700px; margin-left:15px; " >
                    <h3><strong>Address:</strong></h3>
                    <div style="color:Navy; text-decoration:none; font-size:20px;">Saket College of Art & Commerce,<br />Chinchpada Road<br /> Kalyan east, Thane 421004.
                    </div>
                    <div style="">
                        <h3><strong>Email us at:</strong></h3>
                        <a href="https://stackoverflow.com/users/8714841/" style="color:Navy; text-decoration:none; font-size:20px;">topdeskadmin@gmail.com</a>
                    </div>

                    <div style="">
                        <h3><strong>Contact no:</strong></h3>
                        <b style="color:Navy; text-decoration:none; font-size:20px;" >7038229313</b>
                    </div>
                    <div style="">
                        <h3><strong>Our Shop Working Hours:</strong></h3>
                        <div style="color:Navy; text-decoration:none; font-size:20px;" >Monday to Sunday : 10AM - 9PM</div>
                    </div>
                    <br />
                    <br />
                    <div class="enqry_btn">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="enquiry.aspx" style="color: darkblue;text-decoration: underline;font-size: x-large;font-style: normal;font-family: sans-serif;"><i>Have a Question?Click Here.</i></asp:HyperLink>
                    </div>
                    <br />
            </div>
            <br />

            <div style="width:60em; float:right; border:4px solid black;margin-top:-763px; margin-right:0px;height:36em;">
                <iframe src="https://www.google.co.in/maps/place/Shree+Krushna+Mandir/@19.2027471,73.2010423,16.27z/data=!4m8!1m2!2m1!1smy+live+location!3m4!1s0x3be7930ab44dca29:0xa701366caf6f447b!8m2!3d19.2068991!4d73.206?dcr=0" width="832px" height="496px" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
    </div>>

</asp:Content>


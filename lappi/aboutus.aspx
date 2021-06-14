<%@ Page Title="" Language="C#" MasterPageFile="~/customer.master" AutoEventWireup="true" CodeFile="aboutus.aspx.cs" Inherits="aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <center> <div class="watermelonjuice" style="margin-top:-28px;width: 1400px;height: 100%;">
        <header>
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <!-- Slide One - Set the background image for this slide in the line below -->
          <div class="carousel-item active" style="background-image:url(Site_images/download.jpg)">
            <div class="carousel-caption d-none d-md-block">
            </div>
          </div>
          <!-- Slide Two - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url(Site_images/laptop.jpg)">
            <div class="carousel-caption d-none d-md-block">
            </div>
          </div>
          <!-- Slide Three - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image:url(Site_images/54839.jpg) ">
            <div class="carousel-caption d-none d-md-block">
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
      </center>
    </header>

    <!-- Page Content -->
    
      <div class="container-fluid" style="margin-top: -15px;width: 100%;height: 100%;margin-left: 0em;">
        <center style="margin-left:0em"><h1><u><i>About Us</i></u></h1></center>
        <center>
        <div style="text-align:center;width:60em;font-family:Sans-Serif;font-size:large;font-stretch:normal;font-style:normal">
            <h4>
                At <b>TOP DESK</b>, our aim is to offer you Laptop & Accessories that show you that we really care! 
                Not only have we got the trendiest products in our shop, but we can also guarantee that they are of the finest quality.
                We started as a small business in <b>Mumbai, India, in 2017</b>, 
                and our aim is to continue providing our customers with products that keep them happy, at prices that keep them happy.
                Our customers are our top priority and through our products we work hard towards building long-lasting and meaningful 
                relations with them. 
            </h4>
        </div>
        </center>
        <div class="container" style="position:relative">
        <center><h3><b><u>Our Team of Skilled Superheroes</u></b></h3></center>
        <br /> 
        <div id = 'imagethumbnail' style = "margin-left:0em;">
            <div class="row">
                    <div class="col-md-4">
                        <%--<center>
                        <img class="img-circle img-fluid" src="Site_images/about_us_team_4.jpg" />
                        <h3><b>Chairman</b><br />James Greenwood</h3>
                    </center>--%>
                    </div>

                    <div  class="col-md-4">
                     <center>
                      <img class="img-circle img-fluid" style="width:238px;height:228px" src="Site_images/ketan.jpg" />
                            <h3><b>DESIGNED & DEVELOPED BY</b><br />Ketan Patel</h3>
                     </center>

                      </div>

                    <div class ="col-md-4">
                        <%--<center>
                        <img class="img-circle img-fluid" src="Site_images/about_us_team_5.jpg" />
                         <h3><b>President</b><br />Tyrone Johnson</h3>                        
                    </center>--%>
                    </div>
          </div>
          <div class = "row"> 
            <div class ="col-md-4">
            <center>
               <img class="img-circle img-fluid" src="Site_images/about_us_team_7.jpg" />
                    <h3><b>Finance Manager</b><br />Linda Davis</h3>
            </center>
            </div>

            <div class ="col-md-4">
                <center>
                   <img class="img-circle img-fluid" src="Site_images/about_us_team_8.jpg" />
                    <h3><b>Human Resources</b><br />Nicole Garcia</h3>
            </center>
            </div>

            <div class = "col-md-4">
                    <center>
                    <img class="img-circle img-fluid" src="Site_images/about_us_team_2.jpg" />
                    <h3><b>Store Manager</b><br />Maurice Jones</h3> 
            </center>
            </div>
          </div>
      </div>

    </div>
    </div>
    </div>
</asp:Content>


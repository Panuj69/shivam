<%@ Page Title="" Language="C#" MasterPageFile="~/customer.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="container" style="height:100%;width:100%;background-color:lavender;margin-top:-2em">
<br />
      <div class="slogan">
        <blockquote style="opacity:l;width:100%;position:relative;">
            <center>
                <h3 style="height: 33px;margin-top: -11px;font-family: fantasy;color:DarkBlue;padding: 0px;font-size:50px;">"THE SELL IS BEGIN, HURRY UP!!!"</h3>
            </center>
        </blockquote>
      </div>  
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <!-- Slide One - Set the background image for this slide in the line below -->
          
          <!-- Slide Two - Set the background image for this slide in the line below -->
          <div class="carousel-item active">
            <center>
                <img src="Site_images/images(1).jpg" style="width:100%;height:100%"/>
            </center>
          </div>

          <!-- Slide Three - Set the background image for this slide in the line below -->
          <div class="carousel-item">
            <center>
              <img src="Site_images/images.jpg" style="width:100%;height:100%"/>  
            </center>
          </div>

          <div class="carousel-item">
                <img src="Site_images/image3.jpg" style="width:100%;height:100%"/>
          </div>

          <div class="carousel-item">
            <center>
                <img src="Site_images/image4.jpg" style="width:100%;height:100%"/>
            </center>
          </div>

          <div class="carousel-item">
                <img src="Site_images/image2.jpg" style="width:100%;height:100%"/>
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
      <br />
      <br />

      <div style="font-size: x-large;text-align: center;font-stretch: ultra-expanded;font-family:@Microsoft JhengHei;color:Maroon">
            <b><i><u>WE HAVE ALL TYPES & VARIETIES OF LAPTOPS & ACCESSORIES !!!</u></i></b>
      </div>
        <br />
        <br />
    <div class = "container" style = "margin-left: 12em;"> 
        <div class = "row">
            <div class = "col-md-3">
                <div class="class1" style="width:100%;">
                    <asp:ImageButton ID="ImageButton1" style="height:300px;border-radius:18px;" OnClick="ImageButton1_Click" class="img-rounded img-fluid" src="Site_images/final_card_games_1.jpg" runat="server" ToolTip="Laptops"/>
                </div>
            </div>
            
            <div class="col-md-1">
            </div>

            <div class = "col-md-3">
                <div class="class2" style="width:100%;">
                    <asp:Image ID="Image1" runat="server" style="height:300px;border-radius:18px;" src="Site_images/CARD_2_shop.jpg" class="img-rounded img-fluid" ToolTip="Contact for further details"/>
                </div>
            </div>

            <div class="col-md-1">
            </div>

                <div class = "col-md-3">
                <div class="class3" style="width:100%;">
                    <asp:ImageButton ID="ImageButton2" OnClick="ImageButton2_Click" style="height:300px;border-radius:18px;" src="Site_images/books_card_homepage.jpg" class="img-rounded img-fluid" runat="server" ToolTip="Spare Parts & Accessories"/>
                </div>
            </div>
        </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    </div>
    </div>
</asp:Content>


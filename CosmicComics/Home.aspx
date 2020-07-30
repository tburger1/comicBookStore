<%@ Page Title="" Language="C#" MasterPageFile="~/MyComic.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CosmicComics.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Cosmic Comics
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <h2>Featured Recommended Comics</h2>
    <p></p>
    <!-- Slideshow container -->
    <div class="slideshow-container">
        <!-- Full-width images with number and caption text -->
        <div class="mySlides1 fade">
            <div class="numbertext">1 / 3</div>
            <img src="Images/Amazing_Spider-Man_vol_5_issue_32.jpg" style="height: 550px; width: 350px">
            <div class="text">Amazing Spider-Man</div>
        </div>
        <div class="mySlides1 fade">
            <div class="numbertext">2 / 3</div>
            <img src="Images/Batman_and_the_Outsiders_vol_3_issue_7.jpg" style="height: 550px; width: 350px">
            <div class="text">Batman and the Outsiders</div>
        </div>
        <div class="mySlides1 fade">
            <div class="numbertext">3 / 3</div>
            <img src="Images/Batman_The_Court_of_Owls_vol_1_issue_1.jpg" style="height: 550px; width: 350px">
            <div class="text">Batman The Court of Owls</div>
        </div>
        <!-- Next and previous buttons --> 
        <a class="prev" onclick="plusSlides(-1, 0)">&#10094;</a>
        <a class="next" onclick="plusSlides(1, 0)">&#10095;</a>
    </div>
    <!-- The dots/circles -->
    <div style="text-align: center">
        <span class="dot" onclick="currentSlide(1)"></span>
        <span class="dot" onclick="currentSlide(2)"></span>
        <span class="dot" onclick="currentSlide(3)"></span>
    </div>
    <p></p>
    <h2>Featured New Releases</h2>
    <p></p>
    <!-- Slideshow container -->
    <div class="slideshow-container">
        <!-- Full-width images with number and caption text -->
        <div class="mySlides2 fade">
            <div class="numbertext">1 / 3</div>
            <img src="Images/Guardians_of_the_Galaxy_2019_vol_5_issue_11.jpg" style="height: 550px; width: 350px">
            <div class="text">Guardians of the Galaxy</div>
        </div>
        <div class="mySlides2 fade">
            <div class="numbertext">2 / 3</div>
            <img src="Images/Batman_and_the_Outsiders_vol_3_issue_7.jpg" style="height: 550px; width: 350px">
            <div class="text">Batman and the Outsiders</div>
        </div>
        <div class="mySlides2 fade">
            <div class="numbertext">3 / 3</div>
            <img src="Images/Uncanny_X-Force_Apocalypse_Solution_vol_1_issue_1.jpg" style="height: 550px; width: 350px">
            <div class="text">Uncanny X-Force Apocalypse Solution</div>
        </div>
        <!-- Next and previous buttons -->
        <a class="prev" onclick="plusSlides(-1, 1)">&#10094;</a>
        <a class="next" onclick="plusSlides(1, 1)">&#10095;</a>
    </div>
    <!-- The dots/circles -->
    <div style="text-align: center">
        <span class="dot" onclick="currentSlide(1)"></span>
        <span class="dot" onclick="currentSlide(2)"></span>
        <span class="dot" onclick="currentSlide(3)"></span>
    </div>
    <p>
        <br />
        <br />
    </p>
</asp:Content>

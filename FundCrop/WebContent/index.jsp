<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../CSS/index_style.css">
    
    
 <style>
    *{
    margin: 0%;
    padding: 0%;
    }
    
    /* Styling the navigation bar for the home page
    -------------------------------------------------------------*/
    
    .logo{
      border-radius: 50%;
      
      margin-top:5px;
    }
    
    .l{
    margin-left: 20px;
      margin-right: 20px;
      
      position:relative;
    
    }
    .navbar{
    	height:90px;
        background-color: black;
        width: 100%;
        float: left;
        font-size: 15px;
        margin-bottom: 5px;
    }
    
    .navbar a{
      text-decoration: none;
      color: white;
    }
    .navbar ul{
      display: inline-flex;
      list-style: none;
      color: white;
    }
    
    .navie li{
      text-align: center;
      width:  140px;
      margin: 5px;
      padding: 10px;
    }
    .gotologinOrSignup li{
      float: right;
      text-align: center;
      width: 100px;
      margin: 1px;
      padding: 10px;
    }
    
    
     .navbar ul li:hover
    {
    
      background: rgba(66, 199, 195, 0.733);
      border-radius: 3px;
    }
    .home{
      background-color:#2bab;
    }
    .user-profile {
      float: right;
      right: 0%;
    } 
    
    .navbar .fa{
      margin-right:8px ;
    }

    .dropdown-menu{
        display: none; 
      }
      
       .navbar ul li:hover .dropdown-menu {
        display: block;
        position: absolute;
        background: rgba(0,100,0);
        margin-top: 15x;
        margin-left: -15px;
      }
      
      
      .navbar ul li:hover .dropdown-menu ul{
        display: block;
        margin: 0px;
      }  
      .navbar ul li:hover .dropdown-menu ul li{
        
        width: 150px;
        padding:10px ;
        border-bottom: 1px  dotted #fff;
        background: transparent;
        border-radius: 0;
        text-align: left;
      }
      
      .navbar ul li:hover .dropdown-menu ul li:last child{
      
        border-bottom: none;
      }
      
      .navbar ul li:hover .dropdown-menu ul li a:hover{
        color: #b2ff00;
      }
      
      
      .gotologinOrSignup {
      
        float: right;
      }

/* styling the slideshow window for index page 
-----------------------------------------------------------*/
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;
}
.mySlides {display: none;
}
img {vertical-align: middle;
    z-index: -1;}
    
    
.showcase{
  height: 600px ;
  width: 100%;


}

/* Slideshow container */
.slideshow-container {
  /* background-image: linear-gradient( to bottom ,#476772, rgba(120, 166, 179, 0)); */
  position: absolute;
  margin-top: 80px;
  postion:absolute;
  height: 600px ;
  width: 100%;
}

/* The dots/bullets/indicators */
.dot {
  top:700px;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
/*transition: background-color 0.6s ease;*/
}

.dotline{
  top: 650px;
  position: relative;
  margin-bottom: 200px;
}
.active {
  background-color: #717171;
}

/*Fading animation*/
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 3s;
  animation-name:  fade;
  animation-duration: 3s;
}

@-webkit-keyframes fade {
  from {opacity: .2} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .2} 
  to {opacity: 1}
} 

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}

      /*Styling About Us Division */
      .about{
        top:60px ;
        position: absolute;
        padding-top: 60px;
        height: 800px ;
        width: 100%;  
        background-size: cover;
        background-image: linear-gradient( to bottom ,#476772, rgba(120, 166, 179, 0));
         
      }
      .about p{
      	
        padding-top: 50pxpx;
        padding-left: 50px;
        padding-right: 50px;
        position: absolute;
        font-size: 25px;
        color: #fff;
        border-radius: 3%;
        font-family: 'Times New Roman', Times, serif;
        word-spacing: 15px;
        align-content: content; 
      }
      /* get started button
      ----------------------------- */
      .getstarted{
        left: 36%;
        top: 63%;
        font-size: 25px;
        position: relative;
        box-shadow: 0 4px 8px 0 rgba(114, 110, 110, 0.2), 0 6px 20px 0 rgba(146, 135, 139, 0.19); 
        text-align: center;
        height: 60px;
        width: 300px;
        background-color: rgb(37, 200, 233);
        border-radius: 3%;
        font-weight:lighter ;
        margin: 10px;
        padding: 20px;
        margin-left: 5%;
      }
      
      .getstarted a{
        font-size: 25px;
        text-decoration: none;
        color: #fff;
      }
      
      .getstarted:hover{
        background-color: rgb(228, 88, 202);
      
      }

    /* Contact us Part 
    -------------------------------------------*/

    .contact{
        position: absolute;
        top: 800px;
        background-color: black;
        height: auto;
        width: 100%;
        font-size: 18px;
        color: white ;
      }
  
      .contact h3{
        color: white;
        padding:20px 30px 10px 30px;
      }
      .contact a{
        color: white;
        padding-left:30px;
        display: list-item;
        
      }
      .contact i{
        text-align: center;
        padding: 30px 0px 1px 0px;
        color: white;
      }


  
</style>
</head>

<body>
<!-- Navigation bar -->
     <div class="navbar">
            

        <ul class="navie">
           <div class="l">
            <img class="logo" src="image/logo.png" alt="" >     
             </div>         
            <li><a href="index.jsp" ><i class="fa fa-align-justify" aria-hidden="true"></i>
                About Us</a> 
            <li><a href="#conlink"> <i class="fa fa-phone" aria-hidden="true"></i>
                Contact Us </a></li>               
        </ul>

        <ul class="gotologinOrSignup">
                <li ><a href="login.jsp"><i class="fa fa-user" aria-hidden="true"></i> LogIn</a></li>
                <li><a href="newuser.jsp"><i class="fa fa-lock" aria-hidden="true"></i>Signup</a></li>

        </ul>       
    </div>


<div class="showcase">
    <div class="slideshow-container">

        <div class="mySlides fade">
          <img src="image/1 (1) .jpg" style="width:100%">
        </div>
        
        <div class="mySlides fade">
           <img src="image/2 (1).jpg" style="width:100%">
        </div>
        
        <div class="mySlides fade">
          <img src="image/3 (1).jpg" style="width:100%">
        </div>
        
        <div class="mySlides fade">
            <img src="image/4 (1).jpg" style="width:100%">
          </div>
          
          <div class="mySlides fade">
             <img src="image/5 (1).jpg" style="width:100%">
          </div>
          
          <div class="mySlides fade">
            <img src="image/6 (1).jpg" style="width:100%">
          </div>

          
          <div class="mySlides fade">
             <img src="image/8 (1).jpg" style="width:100%">
          </div>
          
          <div class="mySlides fade">
            <img src="image/9 (1).jpg" style="width:100%">
          </div>
          <div class="mySlides fade">
            <img src="image/11 (1).jpg" style="width:100%">
          </div>
          
          <div class="mySlides fade">
             <img src="image/10 (1).jpg" style="width:100%">
          </div>
          
          <div class="mySlides fade">
            <img src="image/12 (1).jpg" style="width:100%">
          </div>
          <div class="mySlides fade">
            <img src="image/7 (1).jpg" style="width:100%">
          </div>
          
          <div class="mySlides fade">
             <img src="image/sprout (1).jpg" style="width:100%">
          </div>
          
        
    </div>
        <br>
         <div class="dotline" style="text-align:center">
          <span class="dot"></span> 
          <span class="dot active"></span> 
          <span class="dot"></span> 
          <span class="dot"></span> 
          <span class="dot"></span> 
          <span class="dot"></span> 
          <span class="dot"></span> 
          <span class="dot"></span> 
          <span class="dot"></span> 
          <span class="dot"></span> 
          <span class="dot"></span> 
          <span class="dot"></span> 
          <span class="dot"></span> 
  
        </div>

    </div>
        <div class="about">

            <p >
                    Fundcrop is a platform through which the underprivileged farmers can meet a potential investor.
                    It is an initiative taken for the betterment of our future society. We provide a transparent,easy to
                    access and reliable platform which caters to the needs of the farmers. As we say when a farmer
                    grows the nation grows. Our mission is to improve the quality of framing and reduce farmer
                    suicide rates.Fundcrop has 3 types of people accessing the app. we have the farmers, certification authority and the investors. So basically the investors/donaters invest/donate using
                    an e-wallet. This money is then transfered to the farmers through the certification authority.
                    Fundcrop also advises the new farmers about the climatic conditions and a suitable crop to be
                    grow according to the soil type of the particular area Farmer Feed the nation with their produce.
                    Funder Invest/donote now make a difference in a farmers lift. CA Certification authority incharge
                    to maintain transparency and reliability.
              </p>

              <div class="getstarted">
                <a href="newuser.jsp">Get Started</a>
             </div>
        </div>

        <div class="contact" id="conlink" >
            <h3>Contact :</h3>
            <a style="text-decoration: none;">Phone : 098-543278</a>
            <a style="text-decoration: none;">E-mail : fundcrop@gmail.com</a>
            <a style="text-decoration: none; margin-bottom: 30px;">Fax : 654778990</a>
            <i style="text-decoration: none; text-align: center;">&copy; All rights reserved</i>

          </div>


          <script >
          
          var slideIndex = 0;
          showSlides();

          function showSlides() {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            for (i = 0; i < slides.length; i++) {
              slides[i].style.display = "none";  
            }
            slideIndex++;
            if (slideIndex > slides.length) {slideIndex = 1}    
            for (i = 0; i < dots.length; i++) {
              dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex-1].style.display = "block";  
            dots[slideIndex-1].className += " active";
            setTimeout(showSlides, 3000); // Change image every 2 seconds
          }

          </script>


</body>
</html>
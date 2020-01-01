<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="../CSS/newuser.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    
    <title>Document</title>


    <style>
       *{
  margin: 0%;
  padding: 0%;
  }
  
  /* Styling the navigation bar for the home page
  -------------------------------------------------------------*/
  .navbar{
      background-color: rgb(15, 15, 15);
      width: 100%;
      float: left;
      font-size: 15px;
      margin-bottom: 5px;
  }
  .logo{
    margin-left: 20px;
    margin-right: 20px;
    border-radius: 50%;
    position: relative ;
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
    margin-left: 80px;
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
  
  
/* Styling the three options to sign up as 
---------------------------------------------------*/

.newuseroptions{
    height:500px ;
    width: 100%;
    background-color: #466770;
}


.newuseroptions p{
    padding-left: 5%;
    color:white;
    font-size: 2em;
    padding-top: 140px;
    font-family: 'Alegreya Sans', sans-serif;

}

 .signuplist {   /* this is the flex container for the sign in options */
    padding-top:10px;
    display: inline-flex;
    font-family: 'Alegreya Sans', sans-serif; 

}


.signuplist a{
    text-decoration: none;
    color: white;
    font-size: 25px;
}



/* Designing the buttons 
---------------------------------------------------*/
.signuplist > div {
    box-shadow: 0 4px 8px 0 rgba(114, 110, 110, 0.2), 0 6px 20px 0 rgba(146, 135, 139, 0.19); 
    padding-top: 50px;
    text-align: center;
    height: 100px;
    width: 450px;
    background-color: #39C2DC;
    border-radius: 3%;
    font-weight:lighter ;
    margin: 50px;
    padding: 20px;
    margin-left: 5%;
    font-size: 25px;
}

.signuplist > div:hover{
    background-color: rgb(221, 66, 235);
    text-decoration: none;
}
.signuplist a:hover{
  background-color: rgb(221, 66, 235);
  text-decoration: none;
  color: white;
}

.flex-container{
    top :300px ;
    background-color:transparent;
    display: inline-flex;
    position: absolute;
}

.flex-container > div{

    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); 
    background-color: #f1f1f1;
    margin: 50px;
    padding: 20px;
    height: 400px;
    width: 450px;
    margin-left: 5%;
    font-size: 18px;
}

.flex-container > img{
    float: left;
}</style>
</head>
<body>

 <!-- Navigation bar -->
 <div class="navbar">
            

    <ul class="navie">
       <div class="l">
        <img class="logo" src="image/logo.png" alt="">     
         </div>         
        <li><a href="../HTML/index.html" ><i class="fa fa-align-justify" aria-hidden="true"></i>
            About Us</a> 
        <li><a href=""><i class="fa fa-usd" aria-hidden="true"></i>
            Invest </a></li>
        <li><a href=""><i class="fa fa-heart" aria-hidden="true"></i>
            Donate </a></li>
        <li><a href=""> <i class="fa fa-phone" aria-hidden="true"></i>
            Contact Us </a></li>               
    </ul>

    <ul class="gotologinOrSignup">
            <li ><a href="login.jsp"><i class="fa fa-user" aria-hidden="true"></i> LogIn</a></li>
    </ul>       
</div>
        <div class="newuseroptions">
            
                <p>Sign Up As..</p>

        <div class="signuplist">
                <div>
                        <a href="funderSignup.jsp"> Funder </a>
                </div>
                <div>
                        <a href="caSignup.jsp"> Certification Authority </a>                </div>
                <div>
                        <a href="farmerSignup.jsp">Farmer </a>   
                </div>
        </div>
    </div>

        <div class="flex-container">
                <div>  
                        <img src="https://img.icons8.com/ios-glyphs/48/000000/checked.png">
                        <li>Feeds the nation with their produce</li>
                        <li>Recieves funds from the investor/donator</li>
                        <li>Gives a detailed information about the crop/soil type which he has to grow.</li>
                        <li>Farmer is only connected to the CA and not to the investor.</li> 
                        
                        
                        
                </div>
                <div>
                        <img src="https://img.icons8.com/ios-glyphs/48/000000/checked.png">
                        
                        <li>Certification Authority personnel act as a medium to communicate between the farmer and investor/donator .</li>
                        <li>Collects all the farmer details that appears on the dashboard and either approves or rejects them.</li>
                         <li>Responsible for maintaining transparency .</li>      
                
                </div>
                <div>
                        <img src="https://img.icons8.com/ios-glyphs/48/000000/checked.png">                    
                                              
                        <li>Has an option to either Invest or donate.</li>
                   <li>Makes the difference in farmers life.</li>
                   <li>Helps the nation grow.</li>
                   <li>Funding is possible using e-wallet.</li>
                
                
                </div>
        </div>
    
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>

<head>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="../CSS/request.css">

<style>

*{
padding:0px;
margin:0px;
}
    /* Styling the navigation bar for the home page
    -------------------------------------------------------------*/
.navbar{
      background-color: rgb(15, 15, 15);
      width: 100%;
      float: left;
      font-size: 15px;
      margin-bottom: 50px;
  }
.logo{
    margin-left: 20px;
    margin-right: 20px;
    border-radius: 50%;
    position: relative ;
  }
  .l{
    margin-left: 20px;
      margin-right: 20px;
      
      position:relative;
    
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
    width:  200px;
    margin: 5px;
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
  position: relative;
  display: inline-block;
	  margin-right:5%;
    margin-top:20px ;
    right: 0%;
} 
  
.navbar .fa{
    margin-right:8px ;
}

.dropdown-menu{
  position: relative;
    display: none; 

}
    
.navbar ul li:hover .dropdown-menu {
    /* display: block;
    position: absolute;
    background: rgb(15, 15, 15);
    margin-left:90%;
    margin-right:2% ;
    padding: 12px 16px;
  z-index: 1; */

  display: block;
  position: absolute;
  background: rgb(15, 15, 15);
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
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
    color: #2bab;
      background: black;
	  color: white;
	  transition: 0.5s;
}


.gotologinOrSignup {

    float: right;
}
    
body{
	background-image: url('../media/images/hope-3467922_1920.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}
.form-style-5 form{
	float:center;

}

.form-style-5{
	
	float: center;
	max-width: 900px;
	padding: 0px 20px;
	background: #f4f7f8;
	margin-left: 22%;
	background: #f4f7f8;
	border-radius: 8px;
	font-family: Georgia, "Times New Roman", Times, serif;
}

.form-style-5 h1{
	padding: 10px 240px;
	margin: auto;
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
	text-decoration: aquamarine;
	font-size: 40px;
	border: 2px outset #7dcfa7;
	border-width: 10px;
	width:fit-content; 
	width:-webkit-fit-content; 
	width:-moz-fit-content;
   
}

.form-style-5 fieldset{
	border: none;
	float: center;
	
}
.form-style-5 legend {
	font-size: 1.4em;
	margin-bottom: 10px;
	text-align: center;
}



.form-style-5 input[type="text"],
.form-style-5 input[type="number"]{
	
	float: center;
	font-family: Georgia, "Times New Roman", Times, serif;
	background: rgba(255,255,255,.1);
	border: none;
	border-radius: 4px;
	font-size: 15px;
	margin: 0;
	outline: 0;
	padding: 10px 30px;
	width: 100%;
	box-sizing: border-box; 
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box; 
	background-color: #e8eeef;
	color:#8a97a0;
	-webkit-box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
	box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
	margin-bottom: 30px;
}
.form-style-5 input[type="text"]:focus,
.form-style-5 input[type="number"]:focus{
	background: #d2d9dd;
}
.form-style-5 .number {
	background: #1abc9c;
	color: #fff;
	height: 30px;
	width: 30px;
	display: inline-block;
	font-size: 0.8em;
	margin-right: 4px;
	line-height: 30px;
	text-align: center;
	text-shadow: 0 1px 0 rgba(255,255,255,0.2);
	border-radius: 15px 15px 15px 0px;
	text-align: center;
}

.form-style-5 input[type="submit"]
{
	position: relative;
	display: block;
	padding: 19px 39px 18px 39px;
	color: #FFF;
	margin: 0 auto;
	background: #7dcfa7;
	font-size: 18px;
	text-align: center;
	font-style: normal;
	width: 100%;
	border: 1px solid #7dcfa7;
	border-width: 1px 1px 3px;
	margin-bottom: 10px;
}
.form-style-5 input[type="submit"]:hover
{
	background: #109177;
	padding: 19px 39px 18px 39px;
	box-shadow: 0 1px 0 rgba(0,0,0,0.03) outset;
}
</style>
</head>


<body>
 
 
  <!-- Navigation Part --> 
    <div class="navbar">
            

            <ul class="navie">
                <div class="l">
            <img class="logo" src="image/logo.png" alt="" >     
             </div>     
                
                <li class="home"><a href="#" class="active"><i class="fa fa-home" aria-hidden="true"></i>
                    Home </a></li>
                <li><a href="index.jsp" ><i class="fa fa-align-justify" aria-hidden="true"></i>
                    About Us</a> </li>
                <li><a href="funderSignup.jsp"> <i class="fa fa-phone" aria-hidden="true"></i>
                    Contact Us </a></li>               
            </ul>
               <ul class="user-profile">
                <li class="hello"><i class="fa fa-user-circle" aria-hidden="true"></i>
                    </i> ${uname } <i class="fa fa-chevron-down" aria-hidden="true"></i>
                    <div class="dropdown-menu">
                        <ul class="list">
                            <div class="btn">
                				<a href="funderProfile.jsp"><button class="view">My Profile</button></a>
               				</div> 
               				<div class="btn">
                				<button  onclick="document.getElementById('id02').style.display='block'" class="view">My Wallet</button>
               				</div> 
               				<div class="btn">
               					<form action="Logout"> 
               						<input type="submit" class="view" value="Log Out">
               				</div> 
               					</form>
               				</div> 
             </ul>
          </div>
    <!--__________________________________________________________________________________________________ -->
    <!-- Request form -->

      <div class="form-style-5">
         <form action="ServletRequest" method="post">
              <h1 style=" box-sizing: border-box" >Fund Request Form</h1>
              <fieldset>
              <legend><span class="number">1</span> Basic Info</legend>
              <input type="text" name="crop" placeholder="Crop Type *">
              <input type="text" name="duration" placeholder="Duration *">
              <input type="text" name="land" placeholder="Land Covered *">
              <input type="text" name="soil" placeholder="Soil Type *">
              <input type="file" name="document" placeholder="Land_papers.pdf/.png/.jpg">
             
              </fieldset>
              
              <fieldset>
              <legend><span class="number">2</span> Fund</legend>
              <input type="number" name="seed" placeholder="Seed *">
              <input type="number" name="fertilizer" placeholder="Fertilizer *">
              <input type="number" name="manure" placeholder="Manure">
              <input type="number" name="pesticide" placeholder="Pesticide and Insecticide">
              <input type="number" name="irrigation" placeholder="Irrigation">
              <input type="number" name="transpotation" placeholder="Transportation">
              </fieldset>
              <input type="submit" value="submit" />
          </form>
        </div>
</body>
</html>
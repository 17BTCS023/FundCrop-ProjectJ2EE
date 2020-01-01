<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    
<script type="javascript">

const form = document.querySelector('.myform');
form.addEventListener('submit', e=>{
	e.preventDefault();
})

</script>
<style>
*{
  margin: 0%;
  padding: 0%;
  }
  
  body{
    background-color: #476772;
  
  }
  /* Styling the navigation bar for the home page
  -------------------------------------------------------------*/
  
  .logo{
    margin-left: 20px;
    margin-right: 20px;
    border-radius: 50%;
  }
  .navbar{
      background-color: rgb(14, 13, 13);
      /* margin-top: 10px; */
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
    margin: 2px;
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


    /* Styling the login form
    ----------------------------------------- */
    @import "https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css";
    /* .login{
      height: 700px ;
      width: 40%; 
      left: 100%;
      font-family: sans-serif;
      background-color: white;  
      background-color:#343434;
    } */
    
    .login-box{
        font-size: larger;
        background-color: white;  
        height: 450px;
        left:25%;
        top:120px;
        border: 1px solid rgb(180, 170, 151);
        border-radius: 2%;
        width: 800px;
        position: absolute;
        color:black;
        padding: 3px;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    }

    .login-box .newuser{
      background-color: rgb(231, 216, 216);
      padding-top: 30px;
      border-bottom:0.5px solid #4caf50  ;
      text-align: center;
      font-family: 'Jomolhari', serif;
      margin-bottom: 10px;
      padding-bottom: 20px;
      font-size: larger;
    } 

    .log{
      padding-top:30px;
    }
    .cate{
      
      border: none;
      border-bottom:1px solid #4caf50  ;
      box-decoration-break:initial ;
      color:seagreen;
      font-family: 'Jomolhari', serif;

    }

    .login-box .forgotpassword{
      padding-top: 30px;
      height: 50px;
      border-bottom:0.5px solid #4caf50  ;
      text-align: center;
      font-family: 'Jomolhari', serif;
      font-size: large;

    }
   
    .login-box a{

      text-decoration: none;
      color: black;
      border-bottom:1px solid #4caf50 ;
    }
    
    .login-box p{
        /* border-bottom:0.5px solid #4caf50 ; */
        position: relative;
        float: left;
        padding-left: 20px;
        font-size: larger;
        margin-bottom: 0px ;
        font-family: sans-serif;
        padding-top: 0px;
        padding-bottom: 20px;        
        color: rgb(41, 158, 94);
        font-family: 'Jomolhari', serif;
    }
    
    .textbox{
        width: 100%;
        overflow: hidden;
        padding: 3px 0;
        margin: 3px 0;
        font-size: larger;
        border-bottom: 1px solid #4caf50;
    
    }

    .textbox:last-child{
      left: 100px;
      width: 80%;
    }
    
    .textbox i{
        width: 20px;
        float: left;
        text-align: center;
    }
    
    .textbox input{
        font-size: large;
        border: none;
        background:none;
        outline: none;
        color: black;
        font-size: 18px;
        width: 80% ;
        margin: 20px 20px;
    }
    
    .login-box .sub{
      margin-top: 40px;
    }
    .button{
        border-radius: 1%;
        padding-top: 20px;
        width: 100%;
        height:50px ;
        background: none;
        border:1px solid #4caf50  ;
        color: black;
        padding: 5px;
        font-size:15px ;
        cursor: pointer;
        } 
    

    .sub:hover{
      background-color:rgb(65, 161, 107);
    }

</style>
</head>


<body>
    

<!-- Navigation bar -->
<div class="navbar">
            

    <ul class="navie">
       <div class="l">
        <img class="logo" src="image/fundcrop.png" alt="">     
         </div>         
        <li><a href="index.jsp" ><i class="fa fa-align-justify" aria-hidden="true"></i>
            About Us</a> 
        <li><a href=""> <i class="fa fa-phone" aria-hidden="true"></i>
            Contact Us </a></li>               
    </ul>

    <ul class="gotologinOrSignup">
            
            <li><a href="newuser.jsp"><i class="fa fa-lock" aria-hidden="true"></i>Signup</a></li>

    </ul>       
</div>


<div class="login">
  
  <div class="login-box">
      <div class="newuser">Don't have an account? <a href="newuser.jsp">Sign Up</a>
    </div>

     
      <!-- Form for login -->
      <form action="ServletLogin" class= "myform" name = "login"  method="post">
      
       <!-- giving the user to select whether he is a funder/farmer/CA -->
      <p class="log">Log In as a:  </p> 
      <input class ="cate" list="category" name="cat" type="text" required>
        <datalist id="category" aria-required="false">
            <option value="Funder"></option> 
            <option value="Farmer"></option> 
            <option value="Certification Authority"></option>        
        </datalist>
      <div class="textbox">
              <img src="https://img.icons8.com/ios-glyphs/24/000000/user--v1.png">
          <input type="text" name="username" value="" placeholder="Username"  required>
      </div>
      <div class="textbox">
              <img src="https://img.icons8.com/android/24/000000/lock.png">
          <input type="password" id = "psw"name="password" value="" placeholder="Password"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
      </div>

      <!-- Button for value submission -->
      <div class="sub">
      <input type="submit" class="button" id="button" value="submit" >
      </div>
  </form>


      <div class="forgotpassword">
      <a href="forgotpassword.jsp">Forgot Password?</a>
  </div>
  </div>
</div> 



</body>
</html>
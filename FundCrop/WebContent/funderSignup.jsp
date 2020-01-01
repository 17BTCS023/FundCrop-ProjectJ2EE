<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="../CSS/fundersignup.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    
    <script type="javascript">
                
                const form = document.querySelector('.myform');
                form.addEventListener('submit', e =>{
                    e.preventDefault()  // to stop the page from refreshing , since refreshing refreshes a page
                    //console.log(form.username.value);  // accessing the value by the name
                    console.log(form.userid.value); // accessing the value using id
                    const result = pattern.test(form.userid.value);
                    console.log(result);
                    
                })
                //displays a message
                var myInput = document.getElementById("psw");
                var letter = document.getElementById("letter");
                var capital = document.getElementById("capital");
                var number = document.getElementById("number");
                var length = document.getElementById("length");

                // When the user clicks on the password field, show the message box
                myInput.onfocus = function() {
                  document.getElementById("message").style.display = "block";
                }

                // When the user clicks outside of the password field, hide the message box
                myInput.onblur = function() {
                  document.getElementById("message").style.display = "none";
                }

                // When the user starts to type something inside the password field
                myInput.onkeyup = function() {
                  // Validate lowercase letters
                  var lowerCaseLetters = /[a-z]/g;
                  if(myInput.value.match(lowerCaseLetters)) {
                    letter.classList.remove("invalid");
                    letter.classList.add("valid");
                  } else {
                    letter.classList.remove("valid");
                    letter.classList.add("invalid");
                }

                  // Validate capital letters
                  var upperCaseLetters = /[A-Z]/g;
                  if(myInput.value.match(upperCaseLetters)) {
                    capital.classList.remove("invalid");
                    capital.classList.add("valid");
                  } else {
                    capital.classList.remove("valid");
                    capital.classList.add("invalid");
                  }

                  // Validate numbers
                  var numbers = /[0-9]/g;
                  if(myInput.value.match(numbers)) {
                    number.classList.remove("invalid");
                    number.classList.add("valid");
                  } else {
                    number.classList.remove("valid");
                    number.classList.add("invalid");
                  }

                  // Validate length
                  if(myInput.value.length >= 8) {
                    length.classList.remove("invalid");
                    length.classList.add("valid");
                  } else {
                    length.classList.remove("valid");
                    length.classList.add("invalid");
                  }
                }
                </script>  
    <style>
            *{
  margin: 0%;
  padding: 0%;
  }
  
  body{
    background-color: #476772;;
  
  }
  /* Styling the navigation bar for the home page
  -------------------------------------------------------------*/
  
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

/*Designing Sign Up form
--------------------------------------------------------*/


.register-box{
  height:auto;
  width: 800px;
  position: relative;
  float: left;
  left: 25%;
  font-size:20px;
  font-family: sans-serif;
  top: 10px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  color:black;
  border-radius: 2%;
  border: 3px solid rgb(180, 170, 151);
  margin-bottom: 30px;
  background-color:#fff;
}

/* header of the register-box to go back to log in page */
.user-login{
  padding-top: 10px;
  padding-bottom: 10px;
  height: 50px;
  border-bottom:3px solid #4caf50  ;
  text-align: center;
  font-family: 'Jomolhari', serif;
  background-color: #F9F9F9;
}
/* Link for login beside Sign Up as funder */
.user-login > a{
  text-decoration: none;
  color: black;
  border-bottom:1px solid #4caf50 ;
}
/* Sign Up heading */
.register-box p{
  position: relative;
  float: left;
  padding-left: 20px;
  font-size: 25px;
  margin-bottom: 0px ;
  font-family: sans-serif;
  padding-top: 25px;
  
}


/*  Style of input textboxes */
.textbox{
  width: 100%;
  overflow: hidden;
  padding: 8px 0;
  margin: 8px 0;
  font-size: 15px;
  border-bottom: 2px solid #4caf50;

}

.textbox i{
  width: 26px;
  float: left;
  text-align: center;
}

.textbox input{
  border: none;
  background:none;
  outline: none;
  color: black;
  font-size: 18px;
  width: 80% ;
  margin: 0 10px;
}

.textbox >p{
  color: rgb(71, 70, 70);
  font-size: 20px;
  display: flex;
}

/* Reigister button styling */
.button{
  padding-top: 20px;
  width: 100%;
  height:50px ;
  background: none;
  border:2px solid #4caf50  ;
  color: black;
  padding: 5px;
  font-size:18px ;
  cursor: pointer;
  } 

    /* The message box is shown when the user clicks on the password field */
    #message {
      display:none;
      background: #f1f1f1;
      color: #000;
      position: absolute;
      padding: 20px;
      margin-top: 10px;
    }
    
    #message p {
      padding: 10px 35px;
      font-size: 10px;
    }
</style>
</head>
<body>
              <!-- Navigation bar -->
     <div class="navbar">
            

        <ul class="navie">
           <div class="l">
            <img class="logo" src="image/logo.png" alt="fundcrop">     
             </div>         
            <li><a href="index.jsp" ><i class="fa fa-align-justify" aria-hidden="true"></i>
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

                
        <!-- Outer register box, will contain all the text boxes -->
        
                <div class="register-box"> 
        
                    <div class="user-login">
                        Already have an account? <a href="index.jsp">Log In</a> 
                       </div>
                       <p>Sign Up as Funder</p>
                    <form action="ServletFunderSignup" name = "signup" onsubmit="return validation()" method="post">
                        <div class="textbox">
                            <p >Name:<input type="text" name="name" value="" placeholder="Akhil/ Sam.." required="required"></p>
                        </div>
                        <div class="textbox">
                                <p >Password:<input type="password" name="password" value="" placeholder="" required="required"></p>
                        </div>
                        <div class="textbox">
                                <p>Confirm_Password:<input type="password" name="cpassword" value="" placeholder="" required="required"></p>
                        </div>
                        <div class="textbox">
                            <p >Pancard:<input type="text" name="pan" value="" placeholder="AAAPL1234C" required="required"></p>
                        </div>
                        <div class="textbox">
                             <p >State:<input type="text" name="state" value="" placeholder="Karnataka" required="required"></p>
                        </div>
                        <div class="textbox">
                                <p >Pin:<input type="number" name="pin" value="" placeholder="56-00-32" required="required"></p>
                        </div>
                        <div class="textbox">
                                <p >Phone:<input type="text" name="phone" value="" placeholder="000-000-0000" required="required"></p>
                        </div>
                     
        
                        <div class="sub">
                                <input type="submit" class="button" value="Register" >
                        </div>
                    
                    
                    
                    </form>
        
                   
                </div>
                
             
                
                
        </body>
        </html>
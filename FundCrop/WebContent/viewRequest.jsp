<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style>
*{
    margin: 0%;
    padding: 0%;
    font-family: sans-serif;
    
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

/* Designing the grid view that has the farmers request
--------------------------------------------------------- */

.main{
  width: 100%;
  height: auto;
  background-color: #476772;
  font-family: cursive;
}
.card{
  margin: 30px;
  padding: 15px;
  display: inline-block;
  height: 250px;
  width: 300px;
  background-color:rgb(222, 236, 228);
  border-radius: 3%;
  box-shadow: 2px 2px 10px rgb(221, 167, 167);
}

.r{
    font-family: Georgia, 'Times New Roman', Times, serif;
    font-weight:lighter;
    font-size: 30px;
    margin-bottom:50px;
    color: ivory;
    text-align: center;
}

.card:hover{
  box-shadow: 2px 2px 10px rgb(56, 51, 51);
  transition: 0.5s;
  }

.card > tr,th,td{
  margin: 5px;
  padding: 5px;
  text-align: justify;
}


.btn{
  width:100%;
  padding: 0px;
  text-align: center;
}

.btn a{
  text-decoration: none;
  color: white;
}

.view1{

  margin-top: 20px;
  width: 100%;
  height: 40px;
  text-align: center;
  background: transparent;
  border:1px solid black;
  border-radius: 3%;
}


.view{
  margin-top: 20px;
  width: 100%;
  height: 40px;
  text-align: center;
  background: transparent;
  border:1px solid black;
  border-radius: 3%;
  color:#2bab;
}

.view,.view1:hover{
  background: black;
  color: white;
  transition: 0.5s;
}

 /* Contact us Part 
    -------------------------------------------*/

  .contact{
      position: absolute;
      top: auto;
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

/* Styling of the view request  */

.w3-button
{
width: 49%;
height: 60px;
}</style>

</head>
<body>
     <div class="navbar">
            

            <ul class="navie">
                
                    <div class="l">
            <img class="logo" src="image/logo.png" alt="" >     
             </div>    
                
                <li class="home"><a href="#" class="active"><i class="fa fa-home" aria-hidden="true"></i>
                    Home </a href="farmerDashboard.jsp"></li>
                <li><a href="index.jsp" ><i class="fa fa-align-justify" aria-hidden="true"></i>
                    About Us</a> </li>
                <li><a href=""><i class="fa fa-usd" aria-hidden="true"></i>
                    Funds </a></li>
                <li style="background-color: teal"><a href="request.jsp" color="green"><i class="fa fa-heart" aria-hidden="true"></i>
                    Add Request </a></li>
                <li><a href=""> <i class="fa fa-phone" aria-hidden="true"></i>
                    Contact Us </a></li>               
            </ul>
            <ul class="user-profile">
                <li class="hello"><i class="fa fa-user-circle" aria-hidden="true"></i>
                    </i> ${uname} <i class="fa fa-chevron-down" aria-hidden="true"></i>
                    <div class="dropdown-menu">
                        <ul class="list">
                            <div class="btn">
                				<a href="farmerProfile.jsp"><button  class="view">My Profile</button></a>
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
                    </div>
                </li>
            </ul>
    </div>  
       <div id="id01" class="w3-modal" style="display:block;">
       
   
             
        <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:800px">
      
          <div class="w3-center"><br>
            <a href="farmerDashboard.jsp"<span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-transparent w3-display-topright"  title="Close Modal" style="max-width:50px"> ×</span>></a>
          </div>
    
    <form class="w3-container" action="RequestViewed.jsp" style="visiblility:visible">
            <!-- <div class="w3-section"> -->
              
    <div class="row"  style="max-width:800px">
        <div class="col-12">
            <ul class="nav nav-tabs mb-4" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="basicInfo-tab" data-toggle="tab" href="#basicInfo" role="tab" aria-controls="basicInfo" aria-selected="true">Basic Info</a>
                </li>
            </ul>
            <div class="tab-content ml-1" id="myTabContent">
                <div class="tab-pane fade show active" id="basicInfo" role="tabpanel" aria-labelledby="basicInfo-tab" >
                    

                    <div class="row" >
                        <div class="col-sm-3 col-md-2 col-5" >
                            <label style="font-weight:bold;">Name</label>
                        </div>
                        <div class="col-md-8 col-6">
                           ${uname}
                        </div>
                    </div>
                    <hr />
                    
                    <div class="row">
                        <div class="col-sm-3 col-md-2 col-5">
                            <label style="font-weight:bold;">State</label>
                        </div>
                        <div class="col-md-8 col-6">
                        ${state}
                            <%-- <%=session.getAttribute("state")--%>
                        </div>
                    </div>
                    <hr />

                    <div class="row">
                        <div class="col-sm-3 col-md-2 col-5">
                            <label style="font-weight:bold;">Crop Name</label>
                        </div>
                        <div class="col-md-8 col-6">
                            ${crop}
                        </div>
                    </div>
                    <hr />
                    
                    
                    <div class="row">
                        <div class="col-sm-3 col-md-2 col-5">
                            <label style="font-weight:bold;">Documents</label>
                        </div>
                        <div class="col-md-8 col-6">
                           No document submitted
                        </div>
                    </div>
                    <hr />
                    
                    <div class="row">
                        <div class="col-sm-3 col-md-2 col-5">
                            <label style="font-weight:bold;">Amount Needed</label>
                        </div>
                        <div class="col-md-8 col-6">
                            ${amountneeded}
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-sm-3 col-md-2 col-5">
                            <label style="font-weight:bold;">Amount Recieved</label>
                        </div>
                        <div class="col-md-8 col-6">
                            ${amountrecieved}
                        </div>
                    </div>
                    <hr />
                    
                    
                               
           
                    
      </div>                  
            </div>
            <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
               <a href="farmerDashboard.jsp"<button type ="submit" onclick="farmerDashboard.jsp" type="button" class="w3-button w3-green" type="button" class="w3-button w3-" style="width: 90%">Approved</button>/></a>
            

          </div>

        </form>
    </div>
   </div> 
   
    <!-- Farmer's Wallet -->
    
    
   
  <div id="id02" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px; text-align: center;align-content: center;">
  
        <div class="w3-center" ><br>
        <span onclick="farmerDashboard.jsp" style="width: 100px;"  class="w3-button w3-xlarge w3-transparent w3-display-topright" title="Close Modal">×</span>
        <!--img src="img_avatar4.png" alt="Avatar" style="width:30%" class="w3-circle w3-margin-top"-->
      </div>

      <form class="w3-container" action="ServletFarmerWallet" style="align-content: center;">
        <div class="w3-section" >
          <h3><img src="image/iconfinder_cash-money-wallet_532652.png" style="width: 50px">Total Balance<h4>Rs. | 00</h4></h3>
          <hr style="border-top: 1px solid grey">
          <label style="left: 1%;">Enter the amount</label> <input class="w3-input w3-border" type="number" style="align-content: center;width:50%; margin-left: 25%;" placeholder="Amount" name="money" required >
          <button class="w3-button w3-red w3-section w3-padding" type="submit" style="width: 40%; left: 20%; ">Add Money</button>
    
        </div>
      </form>

      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey" style="align-content: center;">
        <button onclick="farmerDashboard.jsp' "type="button" class="w3-button w3-green" style="width: 40%; align-content: center;">Done</button>
        
      </div>

    </div>
  </div>
  </div>
  <!-- __________________________________________________________________________________________________________ --> 
    <div class="contact" id="conlink" >
            <h3>Contact :</h3>
            <a style="text-decoration: none;">Phone : 098-543278</a>
            <a style="text-decoration: none;">E-mail : fundcrop@gmail.com</a>
            <a style="text-decoration: none; margin-bottom: 30px;">Fax : 654778990</a>
            <i style="text-decoration: none; text-align: center;">&copy; All rights reserved</i>

          </div> 
          
</body>
</html>
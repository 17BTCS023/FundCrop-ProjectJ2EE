<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.* , javax.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="../CSS/funder_profile.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Document</title>

    <script>
            $(document).ready(function () {
                        $imgSrc = $('#imgProfile').attr('src');
                        function readURL(input) {
            
                            if (input.files && input.files[0]) {
                                var reader = new FileReader();
            
                                reader.onload = function (e) {
                                    $('#imgProfile').attr('src', e.target.result);
                                };
            
                                reader.readAsDataURL(input.files[0]);
                            }
                        }
                        $('#btnChangePicture').on('click', function () {
                            // document.getElementById('profilePicture').click();
                            if (!$('#btnChangePicture').hasClass('changing')) {
                                $('#profilePicture').click();
                            }
                            else {
                                // change
                            }
                        });
                        $('#profilePicture').on('change', function () {
                            readURL(this);
                            $('#btnChangePicture').addClass('changing');
                            $('#btnChangePicture').attr('value', 'Confirm');
                            $('#btnDiscard').removeClass('d-none');
                            // $('#imgProfile').attr('src', '');
                        });
                        $('#btnDiscard').on('click', function () {
                            // if ($('#btnDiscard').hasClass('d-none')) {
                            $('#btnChangePicture').removeClass('changing');
                            $('#btnChangePicture').attr('value', 'Change');
                            $('#btnDiscard').addClass('d-none');
                            $('#imgProfile').attr('src', $imgSrc);
                            $('#profilePicture').val('');
                            // }
                        });
                    });
            </script>
</head>

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
  margin-top:20px ;
  float: right;
  right: 0%;
} 

.navbar .fa{
  margin-right:8px ;
}

.dropdown-menup{
  display: none; 
}
  
.navbar ul li:hover .dropdown-menup {
  display: block;
  position: absolute;
  background: rgb(15, 15, 15);
  margin-top: 15x;
  margin-left: -15px;
}
  
  
.navbar ul li:hover .dropdown-menup ul{
  display: block;
  margin: 0px;
}  
.navbar ul li:hover .dropdown-menup ul li{
  
  width: 150px;
  padding:10px ;
  border-bottom: 1px  dotted #fff;
  background: transparent;
  border-radius: 0;
  text-align: left;
}

.navbar ul li:hover .dropdown-menup ul li:last child{

  border-bottom: none;
}

.navbar ul li:hover .dropdown-menup ul li a:hover{
  color: #2bab;
}


/* Styling the profile for funder
-------------------------------------------------------------*/
.main{
  background-color: rgba(23, 136, 189, 0.733);
  width: 100%;
  height: auto;
  padding-top: 200px;
padding-bottom: 50px;
}
.image-container {
  position: relative;
}

.image {
  opacity: 1;
  display: block;
  width: 100%;
  height: auto;
  transition: .5s ease;
  backface-visibility: hidden;
}

 .middle {
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  /* transform: translate(-50%, -50%); */
  /* -ms-transform: translate(-50%, -50%); */
  text-align: center;
} 

.image-container:hover .image {
  opacity: 0.3;
}

.image-container:hover .middle {
  opacity: 1;
}

 /* Contact farmer Part 
    -------------------------------------------*/

    .contact{
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
</style>

<body>

<%
String url= "jdbc:mysql://localhost:3306/fundy";
String user = "root";
String pass = "root";
String qry = "SELECT * from farmer";

try {
	    Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(url, user, pass);
		PreparedStatement pst =conn.prepareStatement(qry);
		ResultSet rs = pst.executeQuery();
		
	if(rs!=null){	
		%>
        <div class="navbar">
            

                <ul class="navie">
                    
                        <img class="logo" src="image/logo.png" alt="">     
                    
                    <li class="home"><a href="#" class="active"><i class="fa fa-home" aria-hidden="true"></i>
                        Home </a></li>
                    <li><a href="../HTML/index.html" ><i class="fa fa-align-justify" aria-hidden="true"></i>
                        About Us</a> </li>
                    <li><a href=""><i class="fa fa-usd" aria-hidden="true"></i>
                        Invest </a></li>
                    <li><a href=""><i class="fa fa-heart" aria-hidden="true"></i>
                        Donate </a></li>
                    <li><a href=""> <i class="fa fa-phone" aria-hidden="true"></i>
                        Contact Us </a></li>               
                </ul>
                <ul class="user-profile">
                    <li class="hello"><i class="fa fa-user-circle" aria-hidden="true"></i>
                        </i> <i class="fa fa-chevron-down" aria-hidden="true"></i>
                        <div class="dropdown-menup">
                            <ul class="listp">
                                <li><a href="farmerDashboard.jsp"></a></li>
                                <li><a href="">My Wallet</a></li>
                                <li><a href="../HTML/index.html">Log Out</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
        </div>

        <div class="main">
        
        


<div class="container">
<div class="row">
<div class="col-12">
<div class="card">

<div class="card-body">
    <div class="card-title mb-4">
        <div class="d-flex justify-content-start">
            <div class="image-container">
                <img src="http://placehold.it/150x150" id="imgProfile" style="width: 150px; height: 150px" class="img-thumbnail" />
                <div class="middle">
                    <input type="button" class="btn btn-secondary" id="btnChangePicture" value="Change" />
                    <input type="file" style="display: none;" id="profilePicture" name="file" />
                </div>
            </div>
            <div class="userData ml-3">
                <h2 class="d-block" style="font-size: 1.5rem; font-weight: bold"> <%=rs.getString("name") %> Profile</h2>
                <h6 class="d-block"> <%=rs.getString("address") %></h6>
                <h6 class="d-block"> <%=rs.getString("state") %></h6>
            </div>
            <div class="ml-auto">
                <input type="button" class="btn btn-primary d-none" id="btnDiscard" value="Save Changes" />
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-12">
            <ul class="nav nav-tabs mb-4" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="basicInfo-tab" data-toggle="tab" href="#basicInfo" role="tab" aria-controls="basicInfo" aria-selected="true">Basic Info</a>
                </li>
            </ul>
            <div class="tab-content ml-1" id="myTabContent">
                <div class="tab-pane fade show active" id="basicInfo" role="tabpanel" aria-labelledby="basicInfo-tab">
                    

                    <div class="row">
                        <div class="col-sm-3 col-md-2 col-5">
                            <label style="font-weight:bold;">Full Name</label>
                        </div>
                        <div class="col-md-8 col-6">
                            ${name}
                        </div>
                    </div>
                    <hr />

                    <div class="row">
                        <div class="col-sm-3 col-md-2 col-5">
                            <label style="font-weight:bold;">Age</label>
                        </div>
                        <div class="col-md-8 col-6">
                            ${age}
                        </div>
                    </div>
                    <hr />
                    
                    
                    <div class="row">
                        <div class="col-sm-3 col-md-2 col-5">
                            <label style="font-weight:bold;">cropname</label>
                        </div>
                        <div class="col-md-8 col-6">
                            ${crop}
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
                            <label style="font-weight:bold;">Address</label>
                        </div>
                        <div class="col-md-8 col-6">
                            ${address}
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-sm-3 col-md-2 col-5">
                            <label style="font-weight:bold;">State</label>
                        </div>
                        <div class="col-md-8 col-6">
                            ${state}
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-sm-3 col-md-2 col-5">
                            <label style="font-weight:bold;">documents</label>
                        </div>
                        <div class="col-md-8 col-6">
                            ${documents}
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-sm-3 col-md-2 col-5">
                            <label style="font-weight:bold;">Land</label>
                        </div>
                        <div class="col-md-8 col-6">
                            ${land}
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                            <div class="col-sm-3 col-md-2 col-5">
                                <label style="font-weight:bold;">Land</label>
                            </div>
                            <div class="col-md-8 col-6">
                                ${land}
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                                <div class="col-sm-3 col-md-2 col-5">
                                    <label style="font-weight:bold;">Land</label>
                                </div>
                                <div class="col-md-8 col-6">
                                    ${land}
                                </div>
                            </div>
                            <hr />


                </div>
                
            </div>
            
        </div>
    </div>

</div>

</div>
</div>
</div>
</div>             
</div>
<div class="contact" id="conlink" >
            <h3>Contact :</h3>
            <a style="text-decoration: none;">Call Fundcrop: 858576945</a>
            <a style="text-decoration: none;">E-mail Fundcrop: fundcrop@gmail.com</a>
            <a style="text-decoration: none; margin-bottom: 30px;">Fax : 654778990</a>
            <i style="text-decoration: none; text-align: center;">&copy; All rights reserved</i>

</div>

<%
	}
		
	}
catch(Exception e) {
	   
	e.printStackTrace();   	   
}        	
        	
%>
</body>
</html>
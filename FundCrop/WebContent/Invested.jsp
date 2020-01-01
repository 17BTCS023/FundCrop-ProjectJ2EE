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
</head>
<body>

   <!-- Invest the money to  -->   
          <!-- Wallet -->
   
   
   <div id="id03" class="w3-modal" style="display: block">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px; text-align: center;align-content: center;">
  
        <div class="w3-center" ><br>
        <span onclick="document.getElementById('id03').style.display='none'" style="width: 100px;"  class="w3-button w3-xlarge w3-transparent w3-display-topright" title="Close Modal">×</span>
      </div>

      <form class="w3-container" action="ServletInvest" style="align-content: center;">
        <div class="w3-section" style="align-content: center" >
        <img src="image/iconfinder_Party-Poppers_379424.png">
         <h1>Congratulations!!!<h1>
         <h2>You have successfully invested!</h2>
        </div>
      </form>

      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey" style="align-content: center;">
       <button onclick="document.getElementById('id03').style.display='none' "type="button" class="w3-button w3-green" style="width: 40%; align-content: center;">Done</button>
        
      </div>

    </div>
  </div>


</body>
</html>
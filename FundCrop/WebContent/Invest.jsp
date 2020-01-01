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
        <div class="w3-section" >
          <h3><img src="image/iconfinder_cash-money-wallet_532652.png" style="width: 50px">Total Balance<h4>Rs.</h4></h3>
          <hr style="border-top: 1px solid grey">
          <label style="left: 1%;">Enter the amount</label> <input name="money" class=" w3-input w3-border" type="number" style="align-content: center;width:50%; margin-left: 25%;" placeholder="Amount" required >
          <button class="w3-button w3-red w3-section w3-padding" type="submit" style="width: 40%; left: 20%; ">Invest </button> >
    
        </div>
      </form>

      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey" style="align-content: center;">
       <a href= "funderDahsboard.jsp" <button onclick="document.getElementById('id03').style.display='none' "type="button" class="w3-button w3-green" style="width: 40%; align-content: center;">Done</button> ></a></a>
        
      </div>

    </div>
  </div>


</body>
</html>
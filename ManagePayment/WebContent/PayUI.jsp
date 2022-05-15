<%@ page import="com.Payment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
<link rel="stylesheet" href="Views/bootstrap.min.css"> 
<script src="Components/jquery-3.4.1.min.js"></script> 
<script src="Components/payvalidation.js"></script> 
</head>
<body>
<div class="container"> 
	<div class="row">  
		<div class="col-6"> 
			<h1>Payment Manage</h1>
				<form id="formPayment" name="formPayment" method="post" action="PayUI.jsp">  
					Account No:  
 	 				<input id="payAccNo" name="payAccNo" type="text"  class="form-control form-control-sm">
					<br>Date:   
  					<input id="payDate" name="payDate" type="date" class="form-control form-control-sm">   
  					<br>Email:   
  					<input id="payEmail" name="payEmail" type="text"  class="form-control form-control-sm">
  					<br>Payment Method:   
  					<input id="payMethod" name="payMethod" type="text"  class="form-control form-control-sm">
  					<br>Payment Amount:   
  					<input id="payAmount" name="payAmount" type="text"  class="form-control form-control-sm">
					<br>  
					<input id="btnSave" name="btnSave" type="button" value="SAVE" class="btn btn-primary">  
					<input type="hidden" id="hidPaymentIDSave" name="hidPaymentIDSave" value=""> 
				</form>
				
				<div id="alertSuccess" class="alert alert-success"> </div>
				
			   <div id="alertError" class="alert alert-danger"></div>
				
			   <br>
				<div id="divPaymentGrid">
					<%
					    Payment PaymentObj = new Payment();
						out.print(PaymentObj.readPayment());
					%>
				</div>
				
				 
			</div>
		</div>
</div>
 
</body>
</html>
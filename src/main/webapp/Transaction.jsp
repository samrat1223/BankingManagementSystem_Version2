<%@page import="java.util.*"%>
<%@page import="com.obms.dao.*"%>
<%@page import="com.obms.bean.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<style>
table, th, td {
  border:2px solid white;
  background-color:black;
  color:white;
}
</style>

<body>
	<nav class="navbar navbar-expand-lg bg-info">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">OBMS Bank</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="index.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="login.jsp">Login
							as a Admin or a Customer</a></li>

					<li class="nav-item"><a class="nav-link"
						href="userregister.jsp">Register as a Customer</a></li>
				</ul>
				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>
	
	<form method="post" name="TransactionSearch" action="TransactionHandler">
<input type="hidden" name="action" value="Transaction_Id">

<div class="card text-bg-dark"
			style="width: 20rem; margin-top: 50px;margin-left:400px">
			<div class="card-body">
				
					 <div class="mb-3" style="width:300px">
					 <label for="exampleInputEmail1" class="form-label" style="font-size:25px"><b>Transaction Number</b></label>
					
					<input class="form-control" type="text" name="search" /> <br/>
						
				      <input type="submit" name="submit" />
			</div>

			
			</div>
		</div>

</form>
<%
List<Transaction> transactions = new TransactionService().getAllRecords();
%>

<div class="card" style="margin-top: 40px;">
		<div class="card-item">
			<table style="width:100%" >
    <tr>
    	<th>Transaction ID</th>
    	<th>Amount</th>
    	<th>Transaction Date</th>
    	<th>Sender</th>
    	<th>Receiver</th>
    	<th>Transaction Type</th>
    	<th>Account No</th>
    	
    </tr>
    <tr>
    	<%
    	for(Transaction transaction: transactions){
    		%>
    		<td><%=transaction.getTransaction_Id() %></td>
    		<td><%=transaction.getAmount() %></td>
    		<td><%=transaction.getTransac_Date() %></td>
    		<td><%=transaction.getSender() %></td>
    		<td><%=transaction.getReceiver() %></td>
    		<td><%=transaction.getTransac_Type() %></td>
    		<td><%=transaction.getAccnt_No() %></td>
    		
    		
    </tr>
    		<% 
    	}
    	%>
    
    
</table>
</div>
</div>
<div style="text-align:center; margin-top:20px">
<p><a href="TransactionAdd.jsp"  class="btn btn-primary">Add Transaction Details</a></p>

</div>

<div style="text-align:centre; margin-top:20px">
 	<a class="btn btn-primary"  href="loginsuccess.jsp">Go Back</a>
 	
 	</div>
	
	
</body>
</html>ml>
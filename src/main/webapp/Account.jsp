<%@page import="com.obms.dao.AccountService"%>
<%@page import="com.obms.bean.Account"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="EN" xml:lang="en">
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
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
	<form method="post" name="AccountSearch" action="AccountHandler">
		<input type="hidden" name="action" value="accountid">
		<div class="card text-bg-dark"
			style="width: 20rem; margin-top: 50px;margin-left:400px">
			<div class="card-body">
				
					 <div class="mb-3" style="width:300px">
					 <label for="exampleInputEmail1" class="form-label" style="font-size:25px"><b>Account Number</b></label>
					
					<input class="form-control" type="text" name="search" /> <br/>
						
				      <input type="submit" name="submit" />
			</div>

			
			</div>
		</div>
	</form>
	<%
	List<Account> accounts = new AccountService().getAllRecords();
	%>
	
	
	<div class="card" style="margin-top: 40px;">
		<div class="card-item">
			<table style="width:100%" >
		<tr>
			<th>Accnt_No</th>
			<th>Accnt_Type</th>
			<th>Accnt_Balance</th>
			<th>IFSC_Code</th>
			<th>Opening_Date</th>
			<th>Branch_Name</th>
			<th>Branch_Code</th>
			<th>Cust_ID</th>
			<th>Cust_NomineeName</th>
			<th>Modify</th>
		</tr>
		<tr>
			<%
			for (Account account : accounts) {
			%>
			<td><%=account.getAccnt_No()%></td>
			<td><%=account.getAccnt_Type()%></td>
			<td><%=account.getAccnt_Balance()%></td>
			<td><%=account.getiFSC_Code()%></td>
			<td><%=account.getOpening_Date()%></td>
			<td><%=account.getBranch_Name()%></td>
			<td><%=account.getBranch_Code()%></td>
			<td><%=account.getCust_ID()%></td>
			<td><%=account.getCust_NomineeName()%></td>
			<td><a
				href="AccountHandler?action=editform&accID=<%=account.getAccnt_No()%>">Update</a></td>
		</tr>
		<%
		}
		%>


	</table>
	</div>
</div>
<div style="text-align:center; margin-top:20px">
	<p>
		<a href="AccountAdd.jsp" class="btn btn-primary">Add Account Details</a>
	</p>
</div>

<div style="text-align:centre; margin-top:20px">
 	<a class="btn btn-primary"  href="loginsuccess.jsp">Go Back</a>
 	
 	</div>
</body>
</html>
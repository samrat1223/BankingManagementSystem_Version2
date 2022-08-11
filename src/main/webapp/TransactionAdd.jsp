<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<title>Insert title here</title>
</head>
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
							as a Admin</a></li>

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

<h1>Add Transaction: </h1>
<form method="post" name="AddTransactionDetails" action="TransactionHandler">
	<input type="hidden" name="action" value="addform" />
	<table>
		<tr>
			<td style="font-weight:bold">Transaction ID: </td>
			<td><input type="text" name="Transaction_Id" /></td>
		</tr>
		<tr>
			<td style="font-weight:bold">Amount : </td>
			<td><input type="text" name="Amount" /></td>
		</tr>
		<tr>
			<td style="font-weight:bold">Transaction Date: </td>
			<td><input type="text" name="Transac_Date" /></td>
		</tr>
		<tr>
			<td style="font-weight:bold">Sender : </td>
			<td><input type="text" name="Sender" /></td>
		</tr>
		<tr>
			<td style="font-weight:bold">Receiver : </td>
			<td><input type="text" name="Receiver" /></td>
		</tr>
		<tr>
			<td style="font-weight:bold">Transaction Type : </td>
			<td><input type="text" name="Transac_Type" /></td>
		</tr>
		<tr>
			<td style="font-weight:bold">Account Number : </td>
			<td><input type="text" name="Accnt_No" /></td>
		</tr>
		
		
		<tr>
			<td></td>
			<td><input type="submit" value="submit" style="border:2px solid black; font-weight:bold"></td>
		</tr>
		
	</table>
</form>

<div style="text-align:centre; margin-top:20px">
 	<a class="btn btn-primary"  href="Transaction.jsp">Go Back</a>
 	</div>

</body>
</html>
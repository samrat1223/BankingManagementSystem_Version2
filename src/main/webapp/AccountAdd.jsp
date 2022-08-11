<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="EN" xml:lang="en">
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
<h1>Add Account: </h1>
<form method="post" name="AddAccountDetails" action="AccountHandler">
	<input type="hidden" name="action" value="addform" />
	<table>
		<tr>
		<th scope="col">Account Number:</th>
			<td><input type="text" name="accNo" /></td>
		</tr>
		<tr>
			<td style="font-weight:bold">Account Type: </td>
			<td><input type="text" name="accType" /></td>
		</tr>
		<tr>
			<td style="font-weight:bold">Account Balance: </td>
			<td><input type="text" name="accBalance" /></td>
		</tr>
		<tr>
			<td style="font-weight:bold">IFSC code: </td>
			<td><input type="text" name="ifscCode" /></td>
		</tr>
		<tr>
			<td style="font-weight:bold">Opening Date: </td>
			<td><input type="text" name="openingDate" /></td>
		</tr>
		<tr>
			<td style="font-weight:bold">Branch Name: </td>
			<td><input type="text" name="branchName" /></td>
		</tr>
		<tr>
			<td style="font-weight:bold">Branch Code: </td>
			<td><input type="text" name="branchCode" /></td>
		</tr>
		<tr>
			<td style="font-weight:bold">Customer ID: </td>
			<td><input type="text" name="custID" /></td>
		</tr>
		<tr>
			<td style="font-weight:bold">Customer Nominee Name: </td>
			<td><input type="text" name="custNomineeName" /></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="submit" style="border:2px solid black; font-weight:bold"></td>
		</tr>
	</table>
	<div style="text-align:centre; margin-top:20px">
 	<a class="btn btn-primary"  href="Account.jsp">Go Back</a>
 	</div>
</form>
</body>
</html>
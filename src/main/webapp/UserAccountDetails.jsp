<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.obms.dao.*"%>
<%@ page import="com.obms.bean.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
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


	<%
	
	         long Accnt_No = (int) session.getAttribute("Accnt_No");  
	//int i=(int)Accnt_No;  
			//out.println("Accnt_No->"+session.getAttribute("Accnt_No"));
			AccountService service = new AccountService();
			List<Account> accountList = service.getAccountByAccnt_ID(Accnt_No);
			
		%>

   <%= Accnt_No %> 

	<div class="card" style="margin-top: 40px;">
		<div class="card-item">
			<table style="width:100%" >
				<tr>
					<th>Account No</th>
					<th>Account Type</th>
					<th>Account Balance</th>
					<th>IFSC code</th>
					<th>Opening Date</th>
					<th>Branch Name</th>
					<th>Branch Code</th>
					<th>Customer Id</th>
					<th>Customer NomineeName</th>
					<!--  <th>Modify</th> -->
				</tr>
				<tr>
					<%
			/*while(itr.hasNext())
			 {
			 System.out.println(user.getId());*/
			for (Account account : accountList) {
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
					<%
		}
		//}
	%>
				
			</table>
		</div>
	</div>
	
	<div style="text-align:centre; margin-top:20px">
 	<a class="btn btn-danger"  href="userLoggedIn.jsp">Go Back</a>
 	<a class="btn btn-primary"  href="Payment.jsp">Card Details</a>
 	<a class="btn btn-primary"  href="Deposit.jsp">Deposit</a>
 	<a class="btn btn-primary"  href="SendMoney.jsp">Send Money</a>
 	
 	</div>


</body>
</html>
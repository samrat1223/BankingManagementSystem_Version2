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
			 
	         int Transaction_Id = (int) session.getAttribute("Accnt_No");  
	//int i=(int)Accnt_No;  
			//out.println("Accnt_No->"+session.getAttribute("Accnt_No"));
			TransactionService service = new TransactionService();
			Transaction transaction = service.getTransactionByTransaction_Id(Transaction_Id);
			
		%>

   <%= Transaction_Id %> 

	<div class="card text-bg-dark" style="margin-top: 40px;">
		<div class="card-item">
			<table border="0">
				<tr>
					<th>Transaction ID</th>
					<th>Amount</th>
					<th>Transaction Date</th>
					<th>Sender</th>
					<th>Receiver</th>
					<th>Transaction Type</th>
					<th>Account Number</th>
					
					<!--  <th>Modify</th> -->
				</tr>
				<tr>
					<%
			/*while(itr.hasNext())
			 {
			 System.out.println(user.getId());*/
			
		%>
					<td><%=transaction.getTransaction_Id()%></td>
					<td><%=transaction.getAmount()%></td>
					<td><%=transaction.getTransac_Date()%></td>
					<td><%=transaction.getSender()%></td>
					<td><%=transaction.getReceiver()%></td>
					<td><%=transaction.getTransac_Type()%></td>
					<td><%=transaction.getAccnt_No()%></td>
					
					<%
		
		//}
	%>
				
			</table>
		</div>
	</div>


</body>
</html>
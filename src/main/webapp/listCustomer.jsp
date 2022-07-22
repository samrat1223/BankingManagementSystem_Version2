<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.obms.bean.CustomerBean"%>
<%@ page import="com.obms.dao.CustomerDao"%>
<%@ page import="java.util.*"%>
<jsp:include page="editCustomer.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<title>All Users Lists</title>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-info">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">OBMS Bank</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp" >Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="login.jsp">Login as a Admin or a Customer</a>
        </li>
    
        <li class="nav-item">
          <a class="nav-link" href="userregister.jsp">Register as a Customer</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
		<%
			
			CustomerDao dao = new CustomerDao();
			List<CustomerBean> customerList = dao.getAllCustomer();
			
		%>
  
  <div class="card text-bg-dark" style="margin-top:40px;">
  <div class="card-item">
        <table border="0">
	<tr>
		<th>Customer Id</th>
		<th>Customer Address</th>
		<th>Customer Name</th>
		<th>Customer Password</th>
		<th>Customer AadharNo</th>
		<th>Customer PanNo</th>
		<th>Customer Email</th>
		<th>Customer MobileNo</th>
		<th>Customer PinCode</th>
		<th>Customer State</th>
		<th>Customer UserName</th>
		<th>Customer NomineeName</th>
		<th>Customer DateOfBirth</th>
		<th>Customer AccountNo</th>
		<th>Modify</th>
	</tr>
	<tr>
		<%
			/*while(itr.hasNext())
			 {
			 System.out.println(user.getId());*/
			for (CustomerBean customer : customerList) {
		%>
		<td><%=customer.getCust_ID()%></td>
		<td><%=customer.getCust_Address()%></td>
		<td><%=customer.getCust_Name()%></td>
		<td><%=customer.getCust_Password()%></td>
		<td><%=customer.getCust_Aadharno()%></td>
		<td><%=customer.getCust_Panno()%></td>
		<td><%=customer.getCust_Email()%></td>
		<td><%=customer.getCust_MobileNo()%></td>
		<td><%=customer.getCust_PinCode()%></td>
		<td><%=customer.getCust_State()%></td>
		<td><%=customer.getUser_Name()%></td>
		<td><%=customer.getCust_NomineeName()%></td>
		<td><%=customer.getCust_DOB()%></td>
		<td><%=customer.getAccnt_No()%></td>
		
	<!--    <td><a
			 href="CustomerHandler?action=editform&cust_id=<%=customer.getCust_ID()%>"> Update</a></td> -->
		 
		 <td><a href="editCustomer.jsp?action=editform&cust_id=<%=customer.getCust_ID()%>">Update</a></td>  
		 
		<td><a 
			href="CustomerHandler?action=delete&cust_id=<%=customer.getCust_ID()%>">Delete</a></td>

	</tr>
	<%
		}
		//}
	%>
</table>
</div>
</div>

<div style="text-align:center; margin-top:20px">
   <a class="btn btn-primary"  href="addCustomer.jsp">Add a new Customer</a>
   </div>
</body>
</html>
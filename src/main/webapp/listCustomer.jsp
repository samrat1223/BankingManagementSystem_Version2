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
<title>All Users Lists</title>
</head>
<body>

		<%
			
			CustomerDao dao = new CustomerDao();
			List<CustomerBean> customerList = dao.getAllCustomer();
			
		%>

        <table border="1">
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


   <a href="addCustomer.jsp">Add a new Customer</a>
</body>
</html>
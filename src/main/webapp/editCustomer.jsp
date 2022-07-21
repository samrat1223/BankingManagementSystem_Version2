<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="com.obms.bean.CustomerBean"%>
<%@ page import="com.obms.dao.CustomerDao"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Customer</title>
</head>
<body>
<%
	CustomerBean customer = new CustomerBean();
%>
<%
	CustomerDao dao = new CustomerDao();
%>

<form method="POST" action='CustomerHandler' name="formEditCustomer">
<input type="hidden" name="action" value="edit" /> 
	
	<% String uid = request.getParameter("cust_id");
 	if (!((uid) == null)) {
 		int Cust_ID = Integer.parseInt(uid);
 		customer = dao.getCustomerByCust_ID(Cust_ID); %>
 		
 		<table>
 		  <tr>
 		    <td>User ID</td>
 		    <td><input type="text" name="cust_id" readonly="readonly"
			value="<%=customer.getCust_ID()%>"></td>
 		  </tr>
 		  
 		  <tr>
	          <td>Customer Address</td>
	          <td><input type="text" name="cust_address" value="<%=customer.getCust_Address()%>"/></td>
	       </tr>
	       
	       <tr>
	          <td>Customer Name</td>
	          <td><input type="text" name="cust_name" value="<%=customer.getCust_Name()%>" /></td>
	       </tr>
	       
	       <tr>
	          <td>Customer Password</td>
	          <td><input type="password" name="cust_password" value="<%=customer.getCust_Password()%>"  /></td>
	       </tr>
	       
	       <tr>
	          <td>Customer AadharNo</td>
	          <td><input type="text" name="cust_aadharno" value="<%=customer.getCust_Aadharno()%>"  /></td>
	       </tr>
	       
	       <tr>
	          <td>Customer PanNo</td>
	          <td><input type="text" name="cust_panno" value="<%=customer.getCust_Panno()%>"/></td>
	       </tr>
	       
	       <tr>
	         <td>Customer Email</td>
	          <td><input type="text" name="cust_email" value="<%=customer.getCust_Email()%>"/></td>
	       </tr>
	       
	       <tr>
	         <td>Customer MobileNo</td>
	          <td><input type="number" name="cust_mobileno" value="<%=customer.getCust_MobileNo()%>" /></td>
	       </tr>
	       
	       <tr>
	         <td>Customer PinCode</td>
	          <td><input type="text" name="cust_pincode" value="<%=customer.getCust_PinCode()%>" /></td>
	       </tr>
	       
	       <tr>
	        <td>Customer State</td>
	          <td><input type="text" name="cust_state" value="<%=customer.getCust_State()%>" /></td>
	       </tr>
	       
	       <tr>
	        <td>Customer UserName</td>
	          <td><input type="text" name="user_name" value="<%=customer.getUser_Name()%>" /></td>
	       </tr>
	       
	       <tr>
	         <td>Customer NomineeName</td>
	          <td><input type="text" name="cust_nomineename" value="<%=customer.getCust_NomineeName()%>" /></td>
	       </tr>
	       
	       <tr>
	        <td>Customer DateOfBirth</td>
	          <td><input type="text" name="cust_dob" value="<%=customer.getCust_DOB()%>" /></td>
	       </tr>
	       
	       <tr>
	        <td>Customer AccountNo</td>
	          <td><input type="text" name="accnt_no" value="<%=customer.getAccnt_No()%>" /></td>
	       </tr>
	       
	       <tr>
				<td></td>
				<td><input type="submit" value="Update" /></td>
	      </tr>	      
 	</table>
		
<%
 	} else
		//out.println("ID Not Found");
%>  
</form>
</body>
</html>
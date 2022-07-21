<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add a Customer</title>
</head>
<body>
    <p><h1>Welcome , your'e few steps away to be a Customer . Please Fill Out this form below and submit</h1></p>

	<form method="POST" action="CustomerHandler" name="formAddCustomer">
	<input type="hidden" name="action" value="insert" />
	   <table>
	       <tr>
	          <td>Customer Id</td>
	          <td><input type="text" name="cust_id" /></td>
	       </tr>
	       
	       <tr>
	          <td>Customer Address</td>
	          <td><input type="text" name="cust_address" /></td>
	       </tr>
	       
	       <tr>
	          <td>Customer Name</td>
	          <td><input type="text" name="cust_name" /></td>
	       </tr>
	       
	       <tr>
	          <td>Customer Password</td>
	          <td><input type="password" name="cust_password" /></td>
	       </tr>
	       
	       <tr>
	          <td>Customer AadharNo</td>
	          <td><input type="text" name="cust_aadharno" /></td>
	       </tr>
	       
	       <tr>
	          <td>Customer PanNo</td>
	          <td><input type="text" name="cust_panno"/></td>
	       </tr>
	       
	       <tr>
	         <td>Customer Email</td>
	          <td><input type="text" name="cust_email"/></td>
	       </tr>
	       
	       <tr>
	         <td>Customer MobileNo</td>
	          <td><input type="number" name="cust_mobileno" /></td>
	       </tr>
	       
	       <tr>
	         <td>Customer PinCode</td>
	          <td><input type="text" name="cust_pincode" /></td>
	       </tr>
	       
	       <tr>
	        <td>Customer State</td>
	          <td><input type="text" name="cust_state"/></td>
	       </tr>
	       
	       <tr>
	        <td>Customer UserName</td>
	          <td><input type="text" name="user_name"/></td>
	       </tr>
	       
	       <tr>
	         <td>Customer NomineeName</td>
	          <td><input type="text" name="cust_nomineename" /></td>
	       </tr>
	       
	       <tr>
	        <td>Customer DateOfBirth</td>
	          <td><input type="text" name="cust_dob" /></td>
	       </tr>
	       
	       <tr>
	        <td>Customer AccountNo</td>
	          <td><input type="text" name="accnt_no" /></td>
	       </tr>
	       
	       <tr>
				<td></td>
				<td><input type="submit" value="Submit" /></td>
	      </tr>
	   </table>
	</form>
<p><a href="listCustomer.jsp">View-All-Records</a></p>
</body>
</html>
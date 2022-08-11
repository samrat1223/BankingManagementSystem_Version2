<%@page import="com.obms.dao.AccountService"%>
<%@page import="com.obms.bean.Account"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="EN" xml:lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	long id=(long)request.getAttribute("id");
	Account account=new AccountService().getAccountByAccno(id);
%>
<p>Update for Account: <%=id %></p>
<form method="post" name="UpdatedAccountDetails" action="AccountHandler">
	<input type="hidden" name="action" value="updatedform" />
	<table>
		<tr>
		<th scope="col">Customer Details</th>
			<td>Account Number: </td>
			<td><input type="text" name="accNo" value="<%=account.getAccnt_No() %>" readonly="readonly" /></td>
		</tr>
		<tr>
			<td>Account Type: </td>
			<td><input type="text" name="accType" value="<%=account.getAccnt_Type() %>" /></td>
		</tr>
		<tr>
			<td>Account Balance: </td>
			<td><input type="text" name="accBalance" value="<%=account.getAccnt_Balance() %>" /></td>
		</tr>
		<tr>
			<td>IFSC code: </td>
			<td><input type="text" name="ifscCode" value="<%=account.getiFSC_Code() %>" /></td>
		</tr>
		<tr>
			<td>Opening Date: </td>
			<td><input type="text" name="openingDate" value="<%=account.getOpening_Date() %>" /></td>
		</tr>
		<tr>
			<td>Branch Name: </td>
			<td><input type="text" name="branchName" value="<%=account.getBranch_Name() %>" /></td>
		</tr>
		<tr>
			<td>Branch Code: </td>
			<td><input type="text" name="branchCode" value="<%=account.getBranch_Code() %>" /></td>
		</tr>
		<tr>
			<td>Customer ID: </td>
			<td><input type="text" name="custID" value="<%=account.getCust_ID() %>" /></td>
		</tr>
		<tr>
			<td>Customer Nominee Name: </td>
			<td><input type="text" name="custNomineeName" value="<%=account.getCust_NomineeName() %>" /></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="submit"></td>
		</tr>
	</table>
</form>
</body>
</html>
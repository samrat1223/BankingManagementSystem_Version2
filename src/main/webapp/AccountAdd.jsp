<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p>Add Account: </p>
<form method="post" name="AddAccountDetails" action="AccountHandler">
	<input type="hidden" name="action" value="addform" />
	<table>
		<tr>
			<td>Account Number: </td>
			<td><input type="text" name="accNo" /></td>
		</tr>
		<tr>
			<td>Account Type: </td>
			<td><input type="text" name="accType" /></td>
		</tr>
		<tr>
			<td>Account Balance: </td>
			<td><input type="text" name="accBalance" /></td>
		</tr>
		<tr>
			<td>IFSC code: </td>
			<td><input type="text" name="ifscCode" /></td>
		</tr>
		<tr>
			<td>Opening Date: </td>
			<td><input type="text" name="openingDate" /></td>
		</tr>
		<tr>
			<td>Branch Name: </td>
			<td><input type="text" name="branchName" /></td>
		</tr>
		<tr>
			<td>Branch Code: </td>
			<td><input type="text" name="branchCode" /></td>
		</tr>
		<tr>
			<td>Customer ID: </td>
			<td><input type="text" name="custID" /></td>
		</tr>
		<tr>
			<td>Customer Nominee Name: </td>
			<td><input type="text" name="custNomineeName" /></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="submit"></td>
		</tr>
	</table>
</form>
</body>
</html>
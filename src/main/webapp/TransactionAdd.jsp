<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<p>Add Transaction: </p>
<form method="post" name="AddTransactionDetails" action="TransactionHandler">
	<input type="hidden" name="action" value="addform" />
	<table>
		<tr>
			<td>Transaction ID: </td>
			<td><input type="text" name="Transaction_Id" /></td>
		</tr>
		<tr>
			<td>Amount : </td>
			<td><input type="text" name="Amount" /></td>
		</tr>
		<tr>
			<td>Transaction Date: </td>
			<td><input type="text" name="Transac_Date" /></td>
		</tr>
		<tr>
			<td>Sender : </td>
			<td><input type="text" name="Sender" /></td>
		</tr>
		<tr>
			<td>Receiver : </td>
			<td><input type="text" name="Receiver" /></td>
		</tr>
		<tr>
			<td>Transaction Type : </td>
			<td><input type="text" name="Transac_Type" /></td>
		</tr>
		<tr>
			<td>Account Number : </td>
			<td><input type="text" name="Accnt_No" /></td>
		</tr>
		
		
		<tr>
			<td></td>
			<td><input type="submit" value="submit"></td>
		</tr>
		
	</table>
</form>

	<a href="Transaction.jsp"> Go To </a>

</body>
</html>
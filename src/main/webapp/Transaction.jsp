<%@page import="java.util.*"%>
<%@page import="com.obms.dao.*"%>
<%@page import="com.obms.bean.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<form method="post" name="TransactionSearch" action="TransactionHandler">
<input type="hidden" name="action" value="Transaction_Id">
<table>
    <tr>
        <td><input type="text" name="search" /> </td>
        <td></td>
        <td><input type="submit" name="submit" /> </td>
    </tr>
        
</table>
</form>
<%
List<Transaction> transactions = new TransactionService().getAllRecords();
%>
<p>Transaction Details</p>
<table border="1">
    <tr>
    	<th>Transaction_Id</th>
    	<th>Amount</th>
    	<th>Transac_Date</th>
    	<th>Sender</th>
    	<th>Receiver</th>
    	<th>Transac_Type</th>
    	<th>Accnt_No</th>
    	
    </tr>
    <tr>
    	<%
    	for(Transaction transaction: transactions){
    		%>
    		<td><%=transaction.getTransaction_Id() %></td>
    		<td><%=transaction.getAmount() %></td>
    		<td><%=transaction.getTransac_Date() %></td>
    		<td><%=transaction.getSender() %></td>
    		<td><%=transaction.getReceiver() %></td>
    		<td><%=transaction.getTransac_Type() %></td>
    		<td><%=transaction.getAccnt_No() %></td>
    		
    		
    </tr>
    		<% 
    	}
    	%>
    
    
</table>
<p><a href="TransactionAdd.jsp">Add Transaction Details</a></p>
	
	
</body>
</html>
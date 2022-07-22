<%@page import="com.obms.dao.TransactionService"%>
<%@page import="com.obms.bean.Transaction"%>
<%@page import="com.obms.dao.TransactionCrud"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	int id=(int)request.getAttribute("search");
	Transaction transaction=new TransactionService().getTransactionByTransac_Id(id);
%>
<h2>Value for Transaction: <%=id %></h2>

<p>Amount : <%=transaction.getAmount() %></p>
<p>Transaction Date : <%=transaction.getTransac_Date() %></p>
<p>Sender: <%=transaction.getSender() %></p>
<p>Receiver: <%=transaction.getReceiver() %></p>
<p>Transaction Type : <%=transaction.getTransac_Type() %></p>
<p>Account Number : <%=transaction.getAccnt_No() %></p>

</body>
</html>
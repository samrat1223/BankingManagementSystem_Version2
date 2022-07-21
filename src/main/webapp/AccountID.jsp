<%@page import="com.obms.bean.Account"%>
<%@page import="com.obms.dao.AccountService"%>
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
	long id=(long)request.getAttribute("search");
	Account account=new AccountService().getAccountByAccno(id);
%>
<h2>Value for Account: <%=id %></h2>
<p>Account Type: <%=account.getAccnt_Type() %></p>
<p>Account Balance: <%=account.getAccnt_Balance() %></p>
<p>IFSC Code: <%=account.getIFSC_Code() %></p>
<p>Opening Date: <%=account.getOpening_Date() %></p>
<p>Branch Name: <%=account.getBranch_Name() %></p>
<p>Branch Code: <%=account.getBranch_Code() %></p>
<p>Customer ID: <%=account.getCust_ID() %></p>
<p>Customer Nominee Name: <%=account.getCust_NomineeName() %></p>
</body>
</html>
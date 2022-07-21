<%@page import="com.obms.dao.AccountService"%>
<%@page import="com.obms.bean.Account"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" name="AccountSearch" action="AccountHandler">
<input type="hidden" name="action" value="accountid">
<table>
    <tr>
        <td><input type="text" name="search" /> </td>
        <td></td>
        <td><input type="submit" name="submit" /> </td>
    </tr>
        
</table>
</form>
<%
    List<Account> accounts = new AccountService().getAllRecords();
%>
<p>Account Details</p>
<table border="1">
    <tr>
    	<th>Accnt_No</th>
    	<th>Accnt_Type</th>
    	<th>Accnt_Balance</th>
    	<th>IFSC_Code</th>
    	<th>Opening_Date</th>
    	<th>Branch_Name</th>
    	<th>Branch_Code</th>
    	<th>Cust_ID</th>
    	<th>Cust_NomineeName</th>
    </tr>
    <tr>
    	<%
    	for(Account account: accounts){
    		%>
    		<td><%=account.getAccnt_No() %></td>
    		<td><%=account.getAccnt_Type() %></td>
    		<td><%=account.getAccnt_Balance() %></td>
    		<td><%=account.getIFSC_Code() %></td>
    		<td><%=account.getOpening_Date() %></td>
    		<td><%=account.getBranch_Name() %></td>
    		<td><%=account.getBranch_Code() %></td>
    		<td><%=account.getCust_ID() %></td>
    		<td><%=account.getCust_NomineeName() %></td>
    		<td><a href="AccountHandler?action=editform&accID=<%=account.getAccnt_No() %>">Update</a></td>
    </tr>
    		<% 
    	}
    	%>
    
    
</table>
<p><a href="AccountAdd.jsp">Add Account Details</a></p>

</body>
</html>
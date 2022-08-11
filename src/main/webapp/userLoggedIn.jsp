<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%-- <%@page import="net.javaguides.login.database.*"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<title>Operations</title>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-info">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">OBMS Bank</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp" >Home</a>
        </li>
       <!--   <li class="nav-item">
          <a class="nav-link" href="login.jsp">Login as a Admin or a Customer</a>
        </li> -->
    
        <li class="nav-item">
          <a class="nav-link" href="userregister.jsp">Register as a Customer</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="UserLogin.jsp">Logout</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
 <div class="card-deck" style="display:flex; flex-direction: row; justify-content: center; align-items: center">
 <!--  <h1>You have logined successfully</h1>
  <br/>
  <a href="listCustomer.jsp">View Customer </a>
  <br/>
  <a href="Account.jsp">View Accounts </a>
  <br/>
  <a href="Transaction.jsp">View Transactions</a>
  <br/>  -->
  
   <div class="card text-bg-dark border-primary" style="width: 20rem;margin-top:200px">
  <div class="card-body">
    <h5 class="card-title">Account Details</h5>
    <h6 class="card-subtitle mb-2 text-muted">View Account</h6>
    <p class="card-text">Click here to view information related to your Account</p>
    <a href="UserAccountDetails.jsp?accNo=4578" class="btn btn-primary">Account</a>
    <!--  <a href="#" class="btn btn-primary">Another link</a> -->
  </div>
</div>
 <div class="card text-bg-dark border-primary" style="width: 20rem;margin-top:200px;margin-left:20px">
  <div class="card-body">
    <h5 class="card-title">Your Details</h5>
    <h6 class="card-subtitle mb-2 text-muted">Your Details</h6>
    <p class="card-text">Click here to view information related to you</p>
    <a href="UserDetails.jsp" class="btn btn-primary">You</a>
    <!--  <a href="#" class="btn btn-primary">Another link</a> -->
  </div>
</div>
 <div class="card text-bg-dark" style="width: 20rem;margin-top:200px;;margin-left:20px">
  <div class="card-body">
    <h5 class="card-title">Transaction</h5>
    <h6 class="card-subtitle mb-2 text-muted">View Transaction</h6>
    <p class="card-text">Click here to view information related to all transactions</p>
    <a href="TransactionID.jsp" class="btn btn-primary">Transaction</a>
    <!--  <a href="#" class="btn btn-primary">Another link</a> -->
  </div>
</div>
 </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<title>Add a Customer</title>
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
        <li class="nav-item">
          <a class="nav-link" href="login.jsp">Login as a Admin or a Customer</a>
        </li>
    
        <li class="nav-item">
          <a class="nav-link" href="userregister.jsp">Register as a Customer</a>
        </li>
        
        <li class="nav-item">
        <a class="nav-link" href="listCustomer.jsp">View All Records</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>

    <div align="center" class="form">
	<form method="POST" action="CustomerHandler" name="formAddCustomer">
	<input type="hidden" name="action" value="insert" />
	<div class="card text-bg-dark" style="width: 28rem;margin-top:60px;margin-bottom:60px">
   <div class="card-body">
	  <!--   <table>
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
	   </table> -->
	   <h2><b>Add Customer</b></h2> <hr/>
	   <div class="mb-3" style="width:400px">
    <label for="exampleInputEmail1" class="form-label" style="font-size:25px"><b>Customer Id</b></label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="cust_id" required>
  </div>
  <div class="mb-3" style="width:400px">
    <label for="exampleInputPassword1" class="form-label" style="font-size:25px"><b>Address</b></label>
    <input type="text" name="cust_address" class="form-control" id="exampleInputPassword1" required>
  </div>  
   <div class="mb-3" style="width:400px">
    <label for="exampleInputEmail1" class="form-label" style="font-size:25px"><b>Customer Name</b></label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="cust_name" required>
  </div>
  <div class="mb-3" style="width:400px">
    <label for="exampleInputPassword1" class="form-label" style="font-size:25px"><b>Customer Password</b></label>
    <input type="password" name="cust_password" class="form-control" id="exampleInputPassword1" required>
  </div>
   <div class="mb-3" style="width:400px">
    <label for="exampleInputEmail1" class="form-label" style="font-size:25px"><b>Customer Aadhar Number</b></label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="cust_aadharno" required>
  </div>
  <div class="mb-3" style="width:400px">
    <label for="exampleInputPassword1" class="form-label" style="font-size:25px"><b>Customer PanNo</b></label>
    <input type="text" name="cust_panno" class="form-control" id="exampleInputPassword1" required>
  </div>
     <div class="mb-3" style="width:400px">
    <label for="exampleInputEmail1" class="form-label" style="font-size:25px"><b>Customer Email</b></label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="cust_email" required>
  </div>
  <div class="mb-3" style="width:400px">
    <label for="exampleInputPassword1" class="form-label" style="font-size:25px"><b>Customer Mobile Number</b></label>
    <input type="number" name="cust_mobileno" class="form-control" id="exampleInputPassword1" required>
  </div>
      <div class="mb-3" style="width:400px">
    <label for="exampleInputEmail1" class="form-label" style="font-size:25px"><b>Customer PIN Code</b></label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="cust_pincode" required>
  </div>
  <div class="mb-3" style="width:400px">
    <label for="exampleInputPassword1" class="form-label" style="font-size:25px"><b>Customer State</b></label>
    <input type="text" name="cust_state" class="form-control" id="exampleInputPassword1" required>
  </div>
     <div class="mb-3" style="width:400px">
    <label for="exampleInputEmail1" class="form-label" style="font-size:25px"><b>Customer UserName</b></label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="user_name" required>
  </div>
  <div class="mb-3" style="width:400px">
    <label for="exampleInputPassword1" class="form-label" style="font-size:25px"><b>Customer Nominee Name</b></label>
    <input type="text" name="cust_nomineename" class="form-control" id="exampleInputPassword1" required>
  </div>
  <div class="mb-3" style="width:400px">
    <label for="exampleInputEmail1" class="form-label" style="font-size:25px"><b>Customer DateOf Birth</b></label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="cust_dob" required>
  </div>
  <div class="mb-3" style="width:400px">
    <label for="exampleInputPassword1" class="form-label" style="font-size:25px"><b>Customer Account Number</b></label>
    <input type="text" name="accnt_no" class="form-control" id="exampleInputPassword1" required>
  </div>
  <input class="btn btn-primary" type="submit" value="Submit" />
	  	</div>
	</div> 
	</form>
</div>
</body>
</html>
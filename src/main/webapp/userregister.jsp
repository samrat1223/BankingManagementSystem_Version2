<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<title>Registration</title>
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
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>

 <div align="center">
  
  <form action="<%= request.getContextPath() %>/register" method="post">
  <div class="card text-bg-dark" style="width: 30rem;margin-top:20px">
   <div class="card-body">
  <!--  <table style="with: 80%">
    <tr>
     <td>First Name</td>
     <td><input type="text" name="firstName" /></td>
    </tr>
    <tr>
     <td>Last Name</td>
     <td><input type="text" name="lastName" /></td>
    </tr>
    <tr>
     <td>UserName</td>
     <td><input type="text" name="username" /></td>
    </tr>
    <tr>
     <td>Password</td>
     <td><input type="password" name="password" /></td>
    </tr>
    <tr>
     <td>Address</td>
     <td><input type="text" name="address" /></td>
    </tr>
    <tr>
     <td>Contact No</td>
     <td><input type="text" name="contact" /></td>
    </tr>
   </table> -->
   <h3><b>User Registration Form</b></h3> <hr/>
   <div class="mb-3" style="width:400px">
    <label for="exampleInputEmail1" class="form-label" style="font-size:25px"><b>FirstName</b></label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="firstName" required>
  </div>
  <div class="mb-3" style="width:400px">
    <label for="exampleInputPassword1" class="form-label" style="font-size:25px"><b>LastName</b></label>
    <input type="text" name="lastName" class="form-control" id="exampleInputPassword1" required>
  </div> 
  <div class="mb-3" style="width:400px">
    <label for="exampleInputPassword1" class="form-label" style="font-size:25px" ><b>UserName</b></label>
    <input type="text" name="username" class="form-control" id="exampleInputPassword1" required>
  </div>
  <div class="mb-3" style="width:400px">
    <label for="exampleInputPassword1" class="form-label" style="font-size:25px"><b>Password</b></label>
    <input type="password" name="password" class="form-control" id="exampleInputPassword1" required>
  </div>
  <div class="mb-3" style="width:400px">
    <label for="exampleInputPassword1" class="form-label" style="font-size:25px" ><b>Address</b></label>
    <input type="text" name="address" class="form-control" id="exampleInputPassword1" required>
  </div>
  <div class="mb-3" style="width:400px">
    <label for="exampleInputPassword1" class="form-label" style="font-size:25px" ><b>Contact Number</b></label>
    <input type="number" name="contact" class="form-control" id="exampleInputPassword1" required>
  </div>
  <input class="btn btn-primary" type="submit" value="Submit" />
   </div> 
 </div>
    
   
   
  </form>
 </div>
</body>
</html>
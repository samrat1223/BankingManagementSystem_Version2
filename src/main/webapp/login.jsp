<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<title>LogIn</title>
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
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>


 <div align="center" class="form">
  <form action="<%=request.getContextPath()%>/login" method="post">
  <div class="card text-bg-dark" style="width: 28rem;margin-top:120px">
   <div class="card-body">
  <!--  <table style="with: 100%">
    <tr>
     <td>UserName</td>
     <td><input type="text" name="username" required/></td>
    </tr>
    <tr>
     <td>Password</td>
     <td><input type="password" name="password" required /></td>
    </tr>

   </table> -->
      <h2><b>Admin Login Form</b></h2> <hr/>
       <div class="mb-3" style="width:400px">
    <label for="exampleInputEmail1" class="form-label" style="font-size:25px"><b>UserName</b></label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="username" required>
  </div>
  <div class="mb-3" style="width:400px">
    <label for="exampleInputPassword1" class="form-label" style="font-size:25px"><b>Password</b></label>
    <input type="password" name="password" class="form-control" id="exampleInputPassword1" required>
  </div>  
   <input class="btn btn-primary" type="submit" value="Submit" />
</div> 
 </div>
  </form>
 </div>
 </div>
</body>
</html>
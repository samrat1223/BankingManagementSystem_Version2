<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<meta charset="utf-8">  
  <meta name="viewport" content="width=device-width, initial-scale=1">  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"> </script>  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"> </script>  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"> </script>  
   <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
<title>Online Banking Management System</title>
</head>
<style>  
  
@import url('https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');  
section {  
    padding: 60px 0;  
}  
section .section-title {  
    text-align: center;  
    color: #007b5e;  
    margin-bottom: 50px;  
    text-transform: uppercase;  
}  
#footer {  
    background: #bd2130;  
}  
#footer h5 {  
   padding-left: 10px;  
    border-left: 3px solid #eeeeee;  
    padding-bottom: 6px;  
    margin-bottom: 20px;  
    color:#ffffff;  
}  
#footer a {  
    color: #ffffff;  
    text-decoration: none !important;  
    background-color: transparent;  
}  
#footer ul.social li {  
    padding: 3px 0;  
}  
#footer ul.social li a i {  
    margin-right: 5px;  
    font-size:25px;  
    -webkit-transition: .5s all ease;  
    -moz-transition: .5s all ease;  
    transition: .5s all ease;  
}  
#footer ul.social li:hover a i {  
    font-size:30px;  
    margin-top:-10px;  
}  
#footer ul.social li a  
{  
    color:black;  
}  
#footer ul.social li a:hover {  
    color:black;  
}  
#footer ul.quick-links li a {  
    color:black;  
}  
#footer ul.quick-links li {  
    padding: 3px 0;  
    -webkit-transition: .5s all ease;  
    -moz-transition: .5s all ease;  
    transition: .5s all ease;  
}  
#footer ul.quick-links li:hover {  
    padding: 3px 0;  
    margin-left:5px;  
    font-weight:700;  
}  
#footer ul.quick-links li a i {  
    margin-right: 5px;  
}  
#footer ul.quick-links li:hover a i {  
    font-weight: 700;  
}  
@media (max-width:767px) {  
#footer h5 {  
      padding-left: 0;  
    border-left: transparent;  
    padding-bottom: 0px;  
    margin-bottom: 10px;  
}  
}  
h2 {  
padding: 25px 0;  
text-align: center;  
color: #fff;  
background: black;  
}  
</style>  
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
          <a class="nav-link active" aria-current="page" href="#" >Home</a>
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
<div>
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image/bankimage.jpg" class="d-block w-100 h-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="image/bankimage.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="image/bankimage.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</div>

<div> 
<h2>  
 Having More Questions ? No Problem , Connect Below !  
</h2>  
<section id="footer">  
<div class="container">  
<div class="row text-center text-xs-center text-sm-left text-md-left">  
<div class="col-xs-12 col-sm-4 col-md-4">  
<h5> Quick links </h5>  
  <ul class="list-unstyled quick-links">  
    <li> <a href="#"> <i class="fa fa-angle-double-right"> </i> Home </a> </li>  
    <li> <a href="#"> <i class="fa fa-angle-double-right"> </i> About </a> </li>  
    <li> <a href="#"> <i class="fa fa-angle-double-right"> </i> FAQ </a> </li>  
    <li> <a href="#"> <i class="fa fa-angle-double-right"> </i> Get Started </a> </li>  
              <li> <a href="#"> <i class="fa fa-angle-double-right"> </i> Videos </a> </li>  
</ul>  
</div>  
          <div class="col-xs-12 col-sm-4 col-md-4">  
    <h5> Quick links </h5>  
    <ul class="list-unstyled quick-links">  
    <li> <a href="#"> <i class="fa fa-angle-double-right"> </i> Home </a> </li>  
    <li> <a href="#"> <i class="fa fa-angle-double-right"> </i> About </a> </li>  
    <li> <a href="#"> <i class="fa fa-angle-double-right"> </i> FAQ </a> </li>  
    <li> <a href="#"> <i class="fa fa-angle-double-right"> </i> Our Services </a> </li>  
    <li> <a href="#"> <i class="fa fa-angle-double-right"> </i> Expert Team </a> </li>  
    </ul>  
    </div>  
    <div class="col-xs-12 col-sm-4 col-md-4">  
    <h5> Quick links </h5>  
             <ul class="list-unstyled quick-links">  
     <li> <a href="#"> <i class="fa fa-angle-double-right"> </i> Home </a> </li>  
    <li> <a href="#"> <i class="fa fa-angle-double-right"> </i> About </a></li>  
    <li> <a href="#"> <i class="fa fa-angle-double-right"> </i> FAQ </a> </li>  
    <li> <a href="#"> <i class="fa fa-angle-double-right"> </i> Get Started </a> </li>  
    <li> <a href="#"> <i class="fa fa-angle-double-right"> </i> Contact </a> </li>  
    </ul>  
    </div>  
    </div>  
    <div class="row">  
    <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-5">  
    <ul class="list-unstyled list-inline social text-center">  
    <li class="list-inline-item"> <a href="#"> <i class="fa fa-facebook"> </i> </a> </li>  
             <li class="list-inline-item"> <a href="#"> <i class="fa fa-twitter"> </i> </a> </li>  
    <li class="list-inline-item"> <a href="#"> <i class="fa fa-instagram"> </i> </a> </li>  
    <li class="list-inline-item"> <a href="#"> <i class="fa fa-google-plus"> </i > </a> </li>  
    <li class="list-inline-item"> <a href="#"> <i class="fa fa-envelope"> </i> </a> </li>  
    </ul>  
    </div>  
    <hr>  
    </div>      
    <div class="row">  
    <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-2 text-center text-white">  
   <p class="h6"> 2022 ,  All right Reversed. <a class="text-green ml-2" href="#" target="_blank">              JavaTpoint </a> </p>  
    </div>  
    <hr>  
    </div>      
    </div>  
    </section> 
</div>
  <br/>
  <!--  
  <p><a href="login.jsp">Login as a Admin or a Customer</a></p>
  
  <br/>
  <p><a href="userregister.jsp">Register as a Customer</a> -->
  
</body>
</html>
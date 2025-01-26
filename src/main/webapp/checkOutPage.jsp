<%--
  Created by IntelliJ IDEA.
  User: tashi
  Date: 23/01/2025
  Time: 12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>Order</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<style>
  *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    /*font-family: "Uchen", serif;*/
    font-family: 'Poppins',sans-serif;
  }
  .all-content{
    background: #2e1700;
  }
  /*navbar*/
  #navbar{
    background-color: #573818;
    padding-left: 50px;
    font-weight: bold;
  }
  #logo{
    font-size: 23px;
    color: white;
  }
  #logo img{
    margin-bottom: 15px;
  }
  .navbar-nav{
    margin-left: 10px;
  }
  .nav-link{
    color: white;
    font-weight: bold;
    text-shadow: 1px 1px 1px black;
    margin-left: 15px;
    transition: 0.5s ease;
  }
  .nav-link:hover{
    background-color: rgba(161,109,14,1);
    color: white;
    border-radius:5px;
  }
  .icons{
    margin-left: 20px;
  }
  .icons img{
    margin-left: 10px;
    transition: 0.5s ease;
    cursor: pointer;
  }
  .icons img:hover{
    transform: translateY(-5px);
  }
  @media screen and (max-width: 330px){
    #logo{
      font-size: 15px;
    }
  }
  /*navbar end*/

  /*home section*/
  .home{
    width: 100%;
    height: 80vh;
    display: flex;
    background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url("assests/image/cake/background2.png") ;
    background-size: cover;
    align-items: center;
    justify-content: center;
    flex-wrap: wrap;
    position: relative;
    z-index: 1;
  }

  .home .content{
    flex: 1 1 400px;
    margin-left: 250px;
  }
  .content h3{
    color: white;
    font-size: 60px;
    font-weight: bold;
    text-shadow: 1px 1px 1px black;
  }
  .content h2{
    margin-left: 200px;
    font-size: 65px;
    text-shadow:1px 1px 1px black ;
    color: peru;
    font-weight: bold;
  }


  @media screen and (max-width: 800px){
    .content h3{
      font-size: 50px;
    }
  }
  @media screen and (max-width: 860px){
    .home{
      height: 120vh;
    }
  }
  @media screen and (max-width: 560px){
    .home{
      height: 100vh;
    }
  }
  @media screen and (max-width: 330px){
    .content h2{
      font-size: 30px;
    }
    .content h3{
      font-size: 30px;
    }
  }
  /*home section end*/

  /*Form Title*/

  .text h1{
    text-align: center;
    font-weight: bold;
    margin-top: 50px;
    color: rgba(161,109,14,1);
    text-shadow: 1px 1px 1px black;
    border-bottom: 2px solid rgba(161,109,14,1);
  }
  .text h4{
    color: white;
    font-size: 20px;
    font-weight: bold;
  }
  /*Form Title*/

  /*Form*/
  form{
    width: 50%;
    background-color: white;
    padding: 50px;
    border-radius: 20px;
    margin-top: 50px;
  }
  .btn-primary{
    width: 100%;
    border: none;
    border-radius: 50px;
    background-color: rgba(161,109,14,1);
  }
  .form-control{
    box-shadow: 1px 1px 1px black;
    border: 1px ;
    border-radius: 4px 4px 4px 4px;
    font-size: 12px;
  }
  .form-label{
    color: black;
  }
  p{
    font-size: 15px;
  }
</style>
<body>
<div class="all-content">
  <%-- navbar--%>
  <nav class="navbar navbar-expand-md" id="navbar">
    <!-- Brand -->
    <a class="navbar-brand" href="#" id="logo"><img src="assests/image/cake/logo.png" alt="" width="50px">Cake Bakery</a>

    <!-- Toggler/collapsibe Button -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
      <span><img src="assests/image/cake/menu.png" alt="" width="30px"></span>
    </button>

    <!-- Navbar links -->
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="customerDashboard.jsp">Home</a>
        </li>
        <%--dropdown--%>
        <li class="nav-item dropdown">
          <a href="productDetails.jsp" class="nav-link dropdown-toggle" id="navbardrop" data-toggle="dropdown">Product</a>
          <div class="dropdown-menu">
            <a href="#" class="dropdown-item">Birthday Cake</a>
            <a href="#" class="dropdown-item">Chocolate Cake</a>
            <a href="#" class="dropdown-item">Party Cake</a>
            <a href="#" class="dropdown-item">Slice Cake</a>
            <a href="#" class="dropdown-item">Cup Cake</a>
          </div>
        </li>
        <%--dropdown--%>
        <li class="nav-item">
          <a class="nav-link" href="cart.jsp">Cart</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="order.jsp">Order</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#about">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#contact">Contact</a>
        </li>
      </ul>
    </div>
    <div class="icons">
      <img src="assests/image/cake/user_processed.png" alt="" width="20px">
      <img src="assests/image/cake/heart.jpg" alt="" width="20px">
      <img src="assests/image/cake/add.png" alt="" width="20px">
    </div>
  </nav>
  <%-- navbar end--%>

  <%--home section--%>
  <div class="home">
    <div class="content">
      <h3>Delicious Cakes Bakery</h3>
      <h2>CheckOut Page</h2>
    </div>
  </div>
  <%--home section end--%>

  <%--Form Title--%>
  <div class="container">
    <div class="text">
      <h1>Payment Process</h1>
      <h4>Total Amount Payable : </h4>
    </div>
  </div>
 <%-- Form Title--%>

  <%--Form--%>
    <div class="container-fluid">
      <form action="" method="Post" class="mx-auto">
        <div class="mb-3 mt-4">
          <label for="name" class="form-label">Your Name</label>
          <input type="text" class="form-control" id="name" placeholder="enter your name">
        </div>
        <div class="mb-3">
          <label for="phone" class="form-label">Your Number</label>
          <input type="text" class="form-control" id="phone" placeholder="enter your phone number">
        </div>
        <div class="mb-3">
          <label for="email" class="form-label">Your Email</label>
          <input type="email" class="form-control" id="email" placeholder="enter your email">
        </div>
        <div class="mb-3">
          <label for="select" class="form-label">Payment Method</label>
          <select class="form-control" aria-label="Default select example" id="select">
            <option selected>Cash On Delivery</option>
            <option value="1">Credit Card</option>
          </select>
        </div>
        <div class="mb-3 mt-4">
          <label for="address1" class="form-label">Address Line 1</label>
          <input type="text" class="form-control" id="address1" placeholder="eg:flate no">
        </div>
        <div class="mb-3 mt-4">
          <label for="address2" class="form-label">Address Line 2</label>
          <input type="text" class="form-control" id="address2" placeholder="eg:street name">
        </div>
        <div class="mb-3 mt-4">
          <label for="city" class="form-label">City</label>
          <input type="text" class="form-control" id="city" placeholder="enter your city">
        </div>
        <div class="mb-3 mt-4">
          <label for="state" class="form-label">State</label>
          <input type="text" class="form-control" id="state" placeholder="enter your state">
        </div>
        <div class="mb-3 mt-4">
          <label for="country" class="form-label">Country</label>
          <input type="text" class="form-control" id="country" placeholder="enter your country">
        </div>
        <div class="mb-3 mt-4">
          <label for="code" class="form-label">Pin Code</label>
          <input type="text" class="form-control" id="code" placeholder="enter your pin code">
        </div>
        <a href="order.jsp"><button type="submit" class="btn btn-primary mt-2">Order Now</button></a>
      </form>
    </div>
  <%--Form--%>


</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

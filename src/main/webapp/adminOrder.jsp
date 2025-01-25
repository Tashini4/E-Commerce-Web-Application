<%--
  Created by IntelliJ IDEA.
  User: tashi
  Date: 24/01/2025
  Time: 16:23
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
        margin-left: 30px;
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

    /*image*/
    .container{
        width: 100%;
        height: 80vh;
    }
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
    /*image*/
</style>
<body>
<div class="all-content">
    <%-- navbar--%>
    <nav class="navbar navbar-expand-md" id="navbar">
        <!-- Brand -->
        <a class="navbar-brand" href="#" id="logo">Admin Panel</a>

        <!-- Toggler/collapsibe Button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span><img src="assests/image/cake/menu.png" alt="" width="30px"></span>
        </button>

        <!-- Navbar links -->
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Orders</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Users</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Message</a>
                </li>
            </ul>
        </div>
        <div class="icons">
            <img src="assests/image/cake/user_processed.png" alt="" width="20px">

        </div>
    </nav>
    <%-- navbar end--%>

    <%--home section--%>
    <div class="home">
        <div class="content">
            <h3>Delicious Cakes Bakery</h3>
            <h2>Order</h2>
        </div>
    </div>
    <%--home section end--%>

    <%--image--%>
    <div class="container">
        <div class="text">
            <h1 class="text-center">Total Placed Order</h1>
            <h4>No Order Placed Yet!</h4>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

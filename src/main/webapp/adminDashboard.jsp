<%--
  Created by IntelliJ IDEA.
  User: tashi
  Date: 24/01/2025
  Time: 11:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin_Dashboard</title>
    <%-- Bootstrap--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    <%-- font--%>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&family=Uchen&display=swap" rel="stylesheet">

    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<style>
    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        /*font-family: "Uchen", serif;*/
        font-family: "Poppins" ,sans-serif;
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

    /*top cards*/
    .container{
        width: 100%;
        height: 82vh;
    }
    #box h1{
        text-align: center;
        font-weight: bold;
        margin-top: 50px;
        color: rgba(161,109,14,1);
        text-shadow: 1px 1px 1px black;
        border-bottom: 2px solid rgba(161,109,14,1);
    }
    #box{
        margin-top: 60px;
    }
    #box .card{
        width: 200px;
        height: 100px;
        background-color: peru;
        color: white;
        border: 1px;
        box-shadow: 3px 3px 3px rgba(161,109,14,1);
        margin-top: 30px;
        text-align: center;
        transition: 0.5s ease;
        cursor: pointer;
    }
    #box .card h3{
        font-size: 20px;
        margin-top: 20px;
    }
    #box .card h4{
        font-size: 18px;
    }
    #box .card:hover{
        transform: translateY(-10px);
    }
    /*top cards end*/
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

    <%--card--%>
        <div class="container" id="box">
            <h1>Dashboard</h1>
            <div class="row">
                <div class="col-md-3 py-4 py-md-0">
                    <div class="card">
                        <h3>$300/=</h3>
                        <h4>Total Pending</h4>
                    </div>
                </div>
                <div class="col-md-3 py-4 py-md-0">
                    <div class="card">
                        <h3>$ 0/=</h3>
                        <h4>Completed Payment</h4>
                    </div>
                </div>
                <div class="col-md-3 py-4 py-md-0">
                    <div class="card">
                        <h3>2</h3>
                        <h4>Order Placed</h4>
                    </div>
                </div>
                <div class="col-md-3 py-4 py-md-0">
                    <div class="card">
                        <h3>2</h3>
                        <h4>Product Added</h4>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 py-4 py-md-0">
                    <div class="card">
                        <h3>2</h3>
                        <h4>Registered User</h4>
                    </div>
                </div>
                <div class="col-md-3 py-4 py-md-0">
                    <div class="card">
                        <h3>1</h3>
                        <h4>Total Admin</h4>
                    </div>
                </div>
                <div class="col-md-3 py-4 py-md-0">
                    <div class="card">
                        <h3>3</h3>
                        <h4>Total Users</h4>
                    </div>
                </div>
                <div class="col-md-3 py-4 py-md-0">
                    <div class="card">
                        <h3>3</h3>
                        <h4>New Message</h4>
                    </div>
                </div>
            </div>
        </div>
        <%--card--%>
</div>
</body>
</html>

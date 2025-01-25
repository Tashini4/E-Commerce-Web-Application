<%--
  Created by IntelliJ IDEA.
  User: tashi
  Date: 18/01/2025
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer_Dashboard</title>
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
        font-family: "Uchen", serif;
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
        height: 88.5vh;
        display: flex;
        background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url("assests/image/cake/background.png") ;
        background-size: cover;
        align-items: center;
        justify-content: center;
        flex-wrap: wrap;
        position: relative;
        z-index: 0;
    }
    .home .img{
        flex: 1 1 400px;
    }
    .home .img img{
        width: 100%;
    }
    .home .content{
        flex: 1 1 400px;
        margin-left: 60px;
    }
    .content h3{
        color: white;
        font-size: 40px;
        font-weight: bold;
        text-shadow: 1px 1px 1px black;
    }
    .content h2{
        font-size: 40px;
        color: white;
        text-shadow: 1px 1px 1px black;
        font-weight: bold;
    }
    .changecontent::after{
        content: '';
        color: rgba(161,109,14,1);
        animation: changetext 10s infinite linear;
        font-weight: bold;
    }
    @keyframes changetext{
        0%{
            content: "Birthday Cake";
        }
        20%{
            content: "Chocolate Cake";
        }
        50%{
            content: "Party Cake";
        }
        60%{
            content: "Slice Cake";
        }
        100%{
            content: "Cup Cake";
        }
    }
    .content p{
        color: white;
        font-weight: bold;
        text-shadow: 1px 1px 1px black;
    }
    .content .btn{
        width: 110px;
        height: 38px;
        background-color: #573818;
        color: white;
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

   /*top cards*/
    #box{
        margin-top: 50px;
    }
    #box .card{
        box-shadow: 0px 0px 5px black;
        margin-top: 10px;
        transition: 0.5s ease;
        cursor: pointer;
    }
    #box .card:hover{
        transform: translateY(-10px);
    }
    /*top cards end*/

    /*banner*/
    .banner{
        width: 100%;
        height: 85vh;
        display: flex;
        background-image: linear-gradient(rgba(0,0,0,0.6),rgba(0,0,0,0.6)),url("assests/image/cake/background.png");
        background-size: cover;
        align-items: center;
        justify-content: center;
        flex-wrap: wrap;
        box-shadow: 0px 0px 10px black;
        margin-top: 50px ;
    }
    .banner .img{
        flex:1 1 400px;
    }
    .banner .img img{
        width: 90%;
    }
    .banner .content{
        flex: 1 1 400px;
        margin-left: 60px;
        margin-top: 60px;
    }
    .banner .content h3{
        font-size: 40px;
        color: rgba(161,109,14,1);
        font-weight: bold;
    }
    .banner .content h2{
        font-size: 50px;
        color: rgba(161,109,14,1);
        font-weight: bold;
        text-shadow: 1px 1px 1px black;
    }
    .banner .content p{
        color: rgba(161,109,14,1);
    }
    #btnorder button{
        width: 150px;
        height: 32px;
        letter-spacing: 5px;
        background-color:rgba(161,109,14,1);
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    @media  screen and (max-width: 800px){
        .banner .content h3{
            font-size: 50px;
        }
    }
    @media screen and (max-width: 855px) {
        .banner{
            height: 100vh;
        }
    }

    /*banner*/

    /*product card*/
    #product-cards h1{
        text-align: center;
        font-weight: bold;
        margin-top: 50px;
        color: rgba(161,109,14,1);
        text-shadow: 1px 1px 1px black;
        border-bottom: 2px solid rgba(161,109,14,1);
    }
    #product-cards .card{
        background-color: rgba(161,109,14,1);
        box-shadow: 0 0 3px black;
        border-radius: 5px;
        cursor: pointer;
    }
    .overlay{
        display: block;
        opacity: 0;
        position: absolute;
        top: 10%;
        margin-left: 0;
        width: 70px;
    }
    #product-cards .card:hover .overlay{
        opacity: 1;
        margin-left: 5%;
        transition: 0.5s ease;
    }
    .overlay i img{
        background-color: #2e1700;
        height: 30px;
        width: 30px;
        font-size: 20px;
        padding: 7px;
        margin: -20%;
        margin-bottom: 5%;
        cursor: pointer;
    }
    .overlay .btn-secondary{
        background: transparent !important;
        border: none;
        box-shadow: none;
    }
    #product-cards h3{
        color: white;
        text-shadow: 1px 1px 1px black;
    }
    .star .checked{
        color: yellow;
    }
    #product-cards p{
        color: #2e1700;
        font-weight: bold;
    }
    #product-cards h6{
        font-size: 18px;
        color: #2e1700;
        font-weight: bold;
    }
    #product-cards h6 span button{
        width: 100px;
        height: 26px;
        font-size: 15px;
        background: transparent;
        letter-spacing: 3px;
        border: 2px solid #573818;
        border-radius: 5px;
        float: right;
        font-weight: bold;
        transition: 0.5s ease;
        cursor: pointer;
    }
    #product-cards h6 span button:hover{
        background-color: #2e1700;
        color: white;
    }
    /*product card end*/

   /* gallery*/
    #gallery{
        margin-top: 50px;
    }
    #gallery h1{
        text-align: center;
        font-weight: bold;
        margin-top: 50px;
        color: rgba(161,109,14,1);
        text-shadow: 1px 1px 1px black;
        border-bottom: 2px solid rgba(161,109,14,1);
    }
    #gallery .card{
        box-shadow: 3px 3px 3px black;
        cursor: pointer;
    }
    #gallery .overlay{
        opacity: 0;
        width: 100%;
        color: white;
        text-shadow: 1px 1px 1px black;
    }
    #gallery .card:hover .overlay{
        opacity: 5;
        margin-top: 20%;
        transition: 0.5s ease;
    }
    /* gallery*/

   /* about*/
    #about{
        margin-top: 50px;
    }
    #about h1{
        text-align: center;
        font-weight: bold;
        margin-top: 50px;
        color: rgba(161,109,14,1);
        text-shadow: 1px 1px 1px black;
        border-bottom: 2px solid rgba(161,109,14,1);
    }
    #about .card{
        background-color: rgba(161,109,14,1);
        box-shadow: 0px 0px 5px black;
    }
    #about p{
        color: rgba(161,109,14,1);
        text-shadow: 1px 1px 1px black;
        font-weight: bold;
    }
    #bt button{
        width: 150px;
        height: 32px;
        letter-spacing: 3px;
        background-color: rgba(161,109,14,1);
        color: white;
        border: none;
        cursor: pointer;
    }
    @media screen and (max-width: 1000px){
        #about p{
            font-size: 10px;
        }
    }
    @media screen and (max-width: 760px) {
        #about p{
            font-size: 20px;
        }
    }
    /* about*/

   /* contact*/
    #contact{
        margin-top: 100px;
    }
    #contact h1{
        text-align: center;
        font-weight: bold;
        margin-top: 50px;
        color: rgba(161,109,14,1);
        text-shadow: 1px 1px 1px black;
        border-bottom: 2px solid rgba(161,109,14,1);
    }
    #contact input{
        background-color: rgba(161,109,14,1);
    }
    #contact input::placeholder{
        color: white;
    }
    #contact textarea{
        background-color: rgba(161,109,14,1);
    }
    #contact textarea::placeholder{
        color: white;
    }
    #messagebtn{
        text-align: center;
    }
    #messagebtn button{
        width: 200px;
        height: 30px;
        letter-spacing: 3px;
        font-weight: bold;
        background:transparent;
        border: 2px solid white;
        color: white;
        transition: 0.5s;
        cursor: pointer;
    }
    #messagebtn button:hover{
        background-color: rgba(161,109,14,1);
    }

    /* contact*/

   /* footer*/
    #footer{
        width: 100%;
        background-color: #573818;
        box-shadow: 0px 0px 5px black;
        margin-top: 100px;
    }
    #footer h1{
        color: white;
        padding-top: 30px;
    }
    #footer p{
        color: white;
    }
    .icons i{
        background-color: white;
        color: #573818;
        border-radius: 50px;
        padding: 6px;
        font-size: 30px;
        transition: 0.5s;
        cursor: pointer;
    }
    .icons i:hover{
        background-color: rgba(161,109,14,1);
        color: white;
    }
    .copyright{
        color: white;
        margin-top: 20px;
    }
    .credite{
        color: white;
    }

    /* footer*/

    html{
        scroll-behavior: smooth;
    }
    .arrow{
        position: fixed;
        background-color: rgba(161,109,14,1);
        border-radius: 50px;
        height: 50px;
        bottom: 40px;
        right: 50px;
        text-decoration: none;
        text-align: center;
        line-height: 50px;
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
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <%--dropdown--%>
                    <li class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" id="navbardrop" data-toggle="dropdown">Product</a>
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
                        <a class="nav-link" href="#">Cart</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Order</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
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
                <h3>Delicious
                    <br>Cakes Bakery
                </h3>
                <h2>Category <span class="changecontent"></span></h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid,
                    <br>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                </p>
                <a href="#" class="btn">Order Now</a>
            </div>
            <div class="img">
                <img src="assests/image/cake/homeImage.png" alt="">
            </div>
        </div>
        <%--home section end--%>

    <%--top cards--%>
        <div class="container" id="box">
            <div class="row">
                <div class="col-md-4 py-3 py-md-0">
                    <div class="card">
                        <img src="assests/image/cake/des1.jpeg" alt="">
                    </div>
                </div>
                <div class="col-md-4 py-3 py-md-0">
                    <div class="card">
                        <img src="assests/image/cake/des2.png" alt="">
                    </div>
                </div>
                <div class="col-md-4 py-3 py-md-0">
                    <div class="card">
                        <img src="assests/image/cake/des3.png" alt="">
                    </div>
                </div>
            </div>
        </div>
        <%--top cards end--%>

        <%--banner--%>
        <div class="banner">
            <div class="content">
                <h3>Delicious Cake</h3>
                <h2>UPTO 50% OFF</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                <div id="btnorder"><button>Order Now</button></div>
            </div>
            <div class="img">
                <img src="assests/image/cake/page3.jpeg" alt="">
            </div>
        </div>
        <%--banner--%>

        <%--product card--%>
        <section id="product-cards">
            <div class="container">
                <h1>CAKES</h1>
                <div class="row" style="margin-top: 50px">
                    <div class="col-md-3 py-md-0">
                        <div class="card">
                            <div class="overlay">
                                <button type="button" class="btn btn-secondary" title="Quick View"><i><img src="assests/image/cake/view.jpg" alt="" width="30px"></i></button>
                                <button type="button" class="btn btn-secondary" title="Add to Wishlist"><i><img src="assests/image/cake/heart.jpg" alt="" width="30px"></i></button>
                                <button type="button" class="btn btn-secondary" title="Add to Cart"><i><img src="assests/image/cake/add.png" alt="" width="30px"></i></button>
                            </div>
                            <img src="assests/image/cake/c1.jpeg" alt="">
                            <div class="card-body">
                                <h3>Choco Cake</h3>
                                <div class="star">
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star"></i>
                                    <i class="bx bxs-star"></i>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                <h6>Rs.1000 <span><button>Add Cart</button></span></h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 py-md-0">
                        <div class="card">
                            <div class="overlay">
                                <button type="button" class="btn btn-secondary" title="Quick View"><i><img src="assests/image/cake/view.jpg" alt="" width="30px"></i></button>
                                <button type="button" class="btn btn-secondary" title="Add to Wishlist"><i><img src="assests/image/cake/heart.jpg" alt="" width="30px"></i></button>
                                <button type="button" class="btn btn-secondary" title="Add to Cart"><i><img src="assests/image/cake/add.png" alt="" width="30px"></i></button>
                            </div>
                            <img src="assests/image/cake/c2.jpeg" alt="">
                            <div class="card-body">
                                <h3>Cup Cake</h3>
                                <div class="star">
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star"></i>
                                    <i class="bx bxs-star"></i>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                <h6>Rs.350<span><button>Add Cart</button></span></h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 py-md-0">
                        <div class="card">
                            <div class="overlay">
                                <button type="button" class="btn btn-secondary" title="Quick View"><i><img src="assests/image/cake/view.jpg" alt="" width="30px"></i></button>
                                <button type="button" class="btn btn-secondary" title="Add to Wishlist"><i><img src="assests/image/cake/heart.jpg" alt="" width="30px"></i></button>
                                <button type="button" class="btn btn-secondary" title="Add to Cart"><i><img src="assests/image/cake/add.png" alt="" width="30px"></i></button>
                            </div>
                            <img src="assests/image/cake/c3.jpeg" alt="">
                            <div class="card-body">
                                <h3> Chery Cake</h3>
                                <div class="star">
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star"></i>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                <h6>Rs.1300<span><button>Add Cart</button></span></h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 py-md-0">
                        <div class="card">
                            <div class="overlay">
                                <button type="button" class="btn btn-secondary" title="Quick View"><i><img src="assests/image/cake/view.jpg" alt="" width="30px"></i></button>
                                <button type="button" class="btn btn-secondary" title="Add to Wishlist"><i><img src="assests/image/cake/heart.jpg" alt="" width="30px"></i></button>
                                <button type="button" class="btn btn-secondary" title="Add to Cart"><i><img src="assests/image/cake/add.png" alt="" width="30px"></i></button>
                            </div>
                            <img src="assests/image/cake/c4.png" alt="">
                            <div class="card-body">
                                <h3>Cream Cake</h3>
                                <div class="star">
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                <h6>Rs.1500<span><button>Add Cart</button></span></h6>
                            </div>
                        </div>
                    </div>
                </div>
<%--==========================2 line====================--%>
                <div class="row" style="margin-top: 50px">
                    <div class="col-md-3 py-md-0">
                        <div class="card">
                            <div class="overlay">
                                <button type="button" class="btn btn-secondary" title="Quick View"><i><img src="assests/image/cake/view.jpg" alt="" width="30px"></i></button>
                                <button type="button" class="btn btn-secondary" title="Add to Wishlist"><i><img src="assests/image/cake/heart.jpg" alt="" width="30px"></i></button>
                                <button type="button" class="btn btn-secondary" title="Add to Cart"><i><img src="assests/image/cake/add.png" alt="" width="30px"></i></button>
                            </div>
                            <img src="assests/image/cake/c5.jpeg" alt="">
                            <div class="card-body">
                                <h3>Choco Cake</h3>
                                <div class="star">
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star"></i>
                                    <i class="bx bxs-star"></i>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                <h6>Rs.750<span><button>Add Cart</button></span></h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 py-md-0">
                        <div class="card">
                            <div class="overlay">
                                <button type="button" class="btn btn-secondary" title="Quick View"><i><img src="assests/image/cake/view.jpg" alt="" width="30px"></i></button>
                                <button type="button" class="btn btn-secondary" title="Add to Wishlist"><i><img src="assests/image/cake/heart.jpg" alt="" width="30px"></i></button>
                                <button type="button" class="btn btn-secondary" title="Add to Cart"><i><img src="assests/image/cake/add.png" alt="" width="30px"></i></button>
                            </div>
                            <img src="assests/image/cake/c6.jpeg" alt="">
                            <div class="card-body">
                                <h3>Slice Cake</h3>
                                <div class="star">
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star"></i>
                                    <i class="bx bxs-star"></i>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                <h6>Rs.400<span><button>Add Cart</button></span></h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 py-md-0">
                        <div class="card">
                            <div class="overlay">
                                <button type="button" class="btn btn-secondary" title="Quick View"><i><img src="assests/image/cake/view.jpg" alt="" width="30px"></i></button>
                                <button type="button" class="btn btn-secondary" title="Add to Wishlist"><i><img src="assests/image/cake/heart.jpg" alt="" width="30px"></i></button>
                                <button type="button" class="btn btn-secondary" title="Add to Cart"><i><img src="assests/image/cake/add.png" alt="" width="30px"></i></button>
                            </div>
                            <img src="assests/image/cake/c7.png" alt="">
                            <div class="card-body">
                                <h3>Cream Cake</h3>
                                <div class="star">
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star"></i>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                <h6>Rs.1500<span><button>Add Cart</button></span></h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 py-md-0">
                        <div class="card">
                            <div class="overlay">
                                <button type="button" class="btn btn-secondary" title="Quick View"><i><img src="assests/image/cake/view.jpg" alt="" width="30px"></i></button>
                                <button type="button" class="btn btn-secondary" title="Add to Wishlist"><i><img src="assests/image/cake/heart.jpg" alt="" width="30px"></i></button>
                                <button type="button" class="btn btn-secondary" title="Add to Cart"><i><img src="assests/image/cake/add.png" alt="" width="30px"></i></button>
                            </div>
                            <img src="assests/image/cake/c8.jpeg" alt="">
                            <div class="card-body">
                                <h3>Fruit Cake</h3>
                                <div class="star">
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                <h6>Rs.1700<span><button>Add Cart</button></span></h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%--product card end--%>

        <%--gallery--%>
        <section id="gallery">
            <div class="container">
                <h1>OUR GALLERY</h1>
                <div class="row" style="margin-top: 30px">
                    <div class="col-md-4 py-3 py-md-0">
                        <div class="card">
                            <div class="overlay">
                                <h3 class="text-center">Donuts</h3>
                            </div>
                            <img src="assests/image/cake/gallery3.png" alt="">
                        </div>
                    </div>
                    <div class="col-md-4 py-3 py-md-0">
                        <div class="card">
                            <div class="overlay">
                                <h3 class="text-center">Slice Cake</h3>
                            </div>
                            <img src="assests/image/cake/gallery2.jpeg" alt="">
                        </div>
                    </div>
                    <div class="col-md-4 py-3 py-md-0">
                        <div class="card">
                            <div class="overlay">
                                <h3 class="text-center">Ice Cream</h3>
                            </div>
                            <img src="assests/image/cake/gallery1.jpeg" alt="">
                        </div>
                    </div>
                </div>


                <div class="row" style="margin-top: 30px">
                    <div class="col-md-4 py-3 py-md-0">
                        <div class="card">
                            <div class="overlay">
                                <h3 class="text-center">Cup Cake</h3>
                            </div>
                            <img src="assests/image/cake/gallery4.png" alt="">
                        </div>
                    </div>
                    <div class="col-md-4 py-3 py-md-0">
                        <div class="card">
                            <div class="overlay">
                                <h3 class="text-center">Delicious Cake</h3>
                            </div>
                            <img src="assests/image/cake/gallery5.png" alt="">
                        </div>
                    </div>
                    <div class="col-md-4 py-3 py-md-0">
                        <div class="card">
                            <div class="overlay">
                                <h3 class="text-center">Roll cake</h3>
                            </div>
                            <img src="assests/image/cake/gallery6.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%--gallery end--%>

        <%--about--%>
        <div class="container" id="about">
            <h1>ABOUT US</h1>
            <div class="row">
                <div class="col-md-6 py-3 py-md-0">
                    <div class="card">
                        <img src="assests/image/cake/aboutImage.jpeg" alt="" >
                    </div>
                </div>
                <div class="col-md-6 py-3 py-md-0">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A alias commodi cupiditate ducimus ipsa laudantium natus nostrum optio quibusdam ratione! Adipisci corporis culpa cupiditate, eligendi, expedita fugiat harum in maiores nulla omnis, possimus provident saepe sequi sunt temporibus tenetur vero. Accusantium alias aliquam autem blanditiis dicta dolorem doloremque, eos error expedita libero minima necessitatibus neque nostrum optio porro quae, quisquam quod rem tempora totam ullam voluptate voluptatibus! Aperiam at mollitia nemo nesciunt nisi ratione vitae! Corporis, culpa cum dignissimos hic in quis repellendus sint soluta temporibus unde! Architecto assumenda error esse facilis fugit inventore ipsa ipsum magnam mollitia odio pariatur quaerat quibusdam quis similique, veritatis. Ab eos facilis non. </p>
                    <div id="bt"><button>Read More</button></div>
                </div>
            </div>
        </div>
        <%--about--%>

    <%--contact--%>
        <div class="container" id="contact">
            <h1>CONTACT US</h1>
            <div class="row">
                <div class="col-md-4 py-1 py-md-0">
                    <div class="form-group">
                        <input type="text" class="form-control" id="usr" placeholder="Name">
                    </div>
                </div>
                <div class="col-md-4 py-1 py-md-0">
                    <div class="form-group">
                        <input type="email" class="form-control" id="eml" placeholder="Email">
                    </div>
                </div>
                <div class="col-md-4 py-1 py-md-0">
                    <div class="form-group">
                        <input type="number" class="form-control" id="phn" placeholder="Phone">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <textarea class="form-control" rows="5" id="comment" placeholder="Message"></textarea>
            </div>
            <div id="messagebtn"><button>Send Message</button></div>
        </div>
        <%--contact--%>

    <%--footer--%>
        <footer id="footer">
            <h1 class="text-center">Cake Bakery</h1>
            <p class="text-center">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam, quaerat?</p>
            <div class="icons text-center">
                <i class="bx bxl-twitter"></i>
                <i class="bx bxl-facebook"></i>
                <i class="bx bxl-google"></i>
                <i class="bx bxl-skype"></i>
                <i class="bx bxl-instagram"></i>
            </div>
            <div class="copyright text-center">
                &copy; Copyright <strong>Cake Bakery</strong> .All Rights Reserved
            </div>
            <div class="credite text-center">
                Designed By <a href="#"><span>Tashini Madubhani</span></a>
            </div>

        </footer>
        <%--footer--%>
        <a href="" class="arrow"><i><img src="assests/image/cake/arrow.png" alt="" width="50px"></i></a>








</div>
</body>
</html>

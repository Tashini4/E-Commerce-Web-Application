<%--
  Created by IntelliJ IDEA.
  User: tashi
  Date: 20/01/2025
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>product</title>
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
       margin-left: 350px;
   }
   .content h3{
       color: white;
       font-size: 80px;
       font-weight: bold;
       text-shadow: 1px 1px 1px black;
   }
   .content h2{
       margin-left: 200px;
       font-size: 80px;
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


   /*  chocolate product*/
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
   /* chocolate product end*/

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
                    <a class="nav-link" href="customerDashboard.jsp">Home</a>
                </li>
                <%--dropdown--%>
                <li class="nav-item dropdown">
                    <a href="productDetails.jsp" class="nav-link dropdown-toggle" id="navbardrop" data-toggle="dropdown">Product</a>
                    <div class="dropdown-menu">
                        <a href="productDetails.jsp" class="dropdown-item">Birthday Cake</a>
                        <a href="productDetails.jsp" class="dropdown-item">Chocolate Cake</a>
                        <a href="productDetails.jsp" class="dropdown-item">Party Cake</a>
                        <a href="productDetails.jsp" class="dropdown-item">Slice Cake</a>
                        <a href="productDetails.jsp" class="dropdown-item">Cup Cake</a>
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
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">LogOut</a>
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
                <h2>Product Details</h2>
            </div>

        </div>
        <%--home section end--%>

    <%--chocolate product--%>
        <section id="product-cards">
            <div class="container">
                <h1>CHOCOLATE CAKES</h1>
                <div class="row" style="margin-top: 50px">
                    <div class="col-md-3 py-md-0">
                        <div class="card">
                            <div class="overlay">
                                <button type="button" class="btn btn-secondary" title="Quick View"><i><img src="assests/image/cake/view.jpg" alt="" width="30px"></i></button>
                                <button type="button" class="btn btn-secondary" title="Add to Wishlist"><i><img src="assests/image/cake/heart.jpg" alt="" width="30px"></i></button>
                                <button type="button" class="btn btn-secondary" title="Add to Cart"><i><img src="assests/image/cake/add.png" alt="" width="30px"></i></button>
                            </div>
                            <img src="assests/image/cake/chocolate1.jpeg" alt="">
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
                                <h6>Rs.2000<span><button>Add Cart</button></span></h6>
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
                            <img src="assests/image/cake/chocolate2.jpeg" alt="">
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
                                <h6>Rs.1200<span><button>Add Cart</button></span></h6>
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
                            <img src="assests/image/cake/chocolate3.jpeg" alt="">
                            <div class="card-body">
                                <h3> Choco Cake</h3>
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
                            <img src="assests/image/cake/aboutImage.jpeg" alt="">
                            <div class="card-body">
                                <h3>lava Cake</h3>
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
                <%--==========================2 line====================--%>
                <div class="row" style="margin-top: 50px">
                    <div class="col-md-3 py-md-0">
                        <div class="card">
                            <div class="overlay">
                                <button type="button" class="btn btn-secondary" title="Quick View"><i><img src="assests/image/cake/view.jpg" alt="" width="30px"></i></button>
                                <button type="button" class="btn btn-secondary" title="Add to Wishlist"><i><img src="assests/image/cake/heart.jpg" alt="" width="30px"></i></button>
                                <button type="button" class="btn btn-secondary" title="Add to Cart"><i><img src="assests/image/cake/add.png" alt="" width="30px"></i></button>
                            </div>
                            <img src="assests/image/cake/chocolate4.jpeg" alt="">
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
                                <h6>Rs.1400<span><button>Add Cart</button></span></h6>
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
                            <img src="assests/image/cake/chocolate3.jpeg" alt="">
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
                            <img src="assests/image/cake/chocolate5.jpeg" alt="">
                            <div class="card-body">
                                <h3>Choco Cake</h3>
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
                            <img src="assests/image/cake/chocolate8.jpeg" alt="">
                            <div class="card-body">
                                <h3>Cup Cake</h3>
                                <div class="star">
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                <h6>Rs.400<span><button>Add Cart</button></span></h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%-- chocolate product end--%>

        <%--birthday product--%>
        <section id="product-cards">
            <div class="container">
                <h1>BIRTHDAY CAKES</h1>
                <div class="row" style="margin-top: 50px">
                    <div class="col-md-3 py-md-0">
                        <div class="card">
                            <div class="overlay">
                                <button type="button" class="btn btn-secondary" title="Quick View"><i><img src="assests/image/cake/view.jpg" alt="" width="30px"></i></button>
                                <button type="button" class="btn btn-secondary" title="Add to Wishlist"><i><img src="assests/image/cake/heart.jpg" alt="" width="30px"></i></button>
                                <button type="button" class="btn btn-secondary" title="Add to Cart"><i><img src="assests/image/cake/add.png" alt="" width="30px"></i></button>
                            </div>
                            <img src="assests/image/cake/birth1.jpeg" alt="">
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
                                <h6>Rs.2000<span><button>Add Cart</button></span></h6>
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
                            <img src="assests/image/cake/birth2.jpeg" alt="">
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
                                <h6>Rs.2300<span><button>Add Cart</button></span></h6>
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
                            <img src="assests/image/cake/birth3.jpeg" alt="">
                            <div class="card-body">
                                <h3> Choco Cake</h3>
                                <div class="star">
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star"></i>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                <h6>Rs.2000<span><button>Add Cart</button></span></h6>
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
                            <img src="assests/image/cake/page3.jpeg" alt="">
                            <div class="card-body">
                                <h3>lava Cake</h3>
                                <div class="star">
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                <h6>Rs.2500<span><button>Add Cart</button></span></h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%-- birthday product end--%>

        <%--Slice product--%>
        <section id="product-cards">
            <div class="container">
                <h1>SLICE CAKES</h1>
                <div class="row" style="margin-top: 50px">
                    <div class="col-md-3 py-md-0">
                        <div class="card">
                            <div class="overlay">
                                <button type="button" class="btn btn-secondary" title="Quick View"><i><img src="assests/image/cake/view.jpg" alt="" width="30px"></i></button>
                                <button type="button" class="btn btn-secondary" title="Add to Wishlist"><i><img src="assests/image/cake/heart.jpg" alt="" width="30px"></i></button>
                                <button type="button" class="btn btn-secondary" title="Add to Cart"><i><img src="assests/image/cake/add.png" alt="" width="30px"></i></button>
                            </div>
                            <img src="assests/image/cake/slice1.jpeg" alt="">
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
                                <h6>Rs.2000<span><button>Add Cart</button></span></h6>
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
                            <img src="assests/image/cake/slice2.png" alt="">
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
                                <h6>Rs.2300<span><button>Add Cart</button></span></h6>
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
                            <img src="assests/image/cake/slice3.png" alt="">
                            <div class="card-body">
                                <h3>Slice Cake</h3>
                                <div class="star">
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star"></i>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                <h6>Rs.2000<span><button>Add Cart</button></span></h6>
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
                            <img src="assests/image/cake/slice4.png" alt="">
                            <div class="card-body">
                                <h3>Slice Cake</h3>
                                <div class="star">
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                <h6>Rs.2500<span><button>Add Cart</button></span></h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%-- Slice product end--%>

        <%--Cup product--%>
        <section id="product-cards">
            <div class="container">
                <h1>CUP CAKES</h1>
                <div class="row" style="margin-top: 50px">
                    <div class="col-md-3 py-md-0">
                        <div class="card">
                            <div class="overlay">
                                <button type="button" class="btn btn-secondary" title="Quick View"><i><img src="assests/image/cake/view.jpg" alt="" width="30px"></i></button>
                                <button type="button" class="btn btn-secondary" title="Add to Wishlist"><i><img src="assests/image/cake/heart.jpg" alt="" width="30px"></i></button>
                                <button type="button" class="btn btn-secondary" title="Add to Cart"><i><img src="assests/image/cake/add.png" alt="" width="30px"></i></button>
                            </div>
                            <img src="assests/image/cake/cup1.jpeg" alt="">
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
                                <h6>Rs.500<span><button>Add Cart</button></span></h6>
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
                            <img src="assests/image/cake/cup2.jpeg" alt="">
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
                            <img src="assests/image/cake/cup3.jpeg" alt="">
                            <div class="card-body">
                                <h3>Cup Cake</h3>
                                <div class="star">
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star"></i>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                <h6>Rs.300<span><button>Add Cart</button></span></h6>
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
                            <img src="assests/image/cake/chocolate8.jpeg" alt="">
                            <div class="card-body">
                                <h3>Cup Cake</h3>
                                <div class="star">
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                    <i class="bx bxs-star checked"></i>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                <h6>Rs.400<span><button>Add Cart</button></span></h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%-- Cup product end--%>

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

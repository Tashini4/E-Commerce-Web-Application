<%--
  Created by IntelliJ IDEA.
  User: tashi
  Date: 24/01/2025
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>ProductUpdate</title>
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

    /*Form*/
    .container-fluid h1{
        text-align: center;
        font-weight: bold;
        margin-top: 50px;
        color: rgba(161,109,14,1);
        text-shadow: 1px 1px 1px black;
        border-bottom: 2px solid rgba(161,109,14,1);
    }
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
    /*Form*/

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
    /*#product-cards .btn{
        width: 100px;
        height: 26px;
        font-size: 15px;
        background: #573818;
        color: white;
        letter-spacing: 3px;
        border: 2px solid #573818;
        border-radius: 5px;
        margin-bottom: 3px;
        float:right;
        transition: 0.5s ease;
        cursor: pointer;
    }*/

    #product-cards .btn-warning{
        width: 80px;
        height: 26px;
        text-align: center;
    }
    /*product card end*/

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

    <%--Form--%>
    <div class="container-fluid">
        <h1>Update Product</h1>
        <form action="" method="" class="mx-auto">
            <div class="mb-3 mt-4">
                <label for="name" class="form-label">Product Name</label>
                <input type="text" class="form-control" id="name" >
            </div>
            <div class="mb-3">
                <label for="price" class="form-label">Product Price</label>
                <input type="text" class="form-control" id="price">
            </div>
            <div class="mb-3">
                <label for="detail" class="form-label">Product Detail</label>
                <textarea class="form-control" id="detail" rows="5"></textarea>
            </div>
            <div class="mb-3">
                <label for="image" class="form-label">Product Image</label>
                <input class="form-control" type="file" id="image">
            </div>
            <a href="#"><button type="submit" class="btn btn-warning mt-2">Update</button></a>
            <a href="#"><button type="submit" class="btn btn-warning mt-2">Cancel</button></a>
        </form>
    </div>
    <%--Form--%>
</div>
</body>
</html>

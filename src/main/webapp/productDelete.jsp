<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String alertType = (String) request.getAttribute("alertType");
    String alertMessage = (String) request.getAttribute("alertMessage");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.5/font/bootstrap-icons.min.css">
    <title>Product Management</title>
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
        .container {
            margin-top: 100px;
            width: 100%;
            height: 80vh;
        }
        .form-section {
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .btn-danger {
            background-color: rgba(161,109,14,1);
        }

    </style>
</head>
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
                <a class="nav-link" href="adminDashboard.jsp">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="productAdd.jsp">Products</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="adminOrder.jsp">Orders</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Users</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Message</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="index.jsp">LogOut</a>
            </li>
        </ul>
    </div>
    <div class="icons">
        <img src="assests/image/cake/user_processed.png" alt="" width="20px">

    </div>
</nav>
<%-- navbar end--%>
<!-- Main Content -->
<div class="container">
    <% if (alertType != null && alertMessage != null) { %>
    <div class="alert alert-<%= alertType %> alert-dismissible fade show mt-4" role="alert">
        <i class="bi <%= alertType.equals("success") ? "bi-check-circle-fill" : "bi-exclamation-circle-fill" %>"></i>
        <%= alertMessage %>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <% } %>

    <section id="productForm" class="mb-5">
        <h2 class="text-center mb-4 text-primary">Delete Product</h2>
        <form action="productDeleteServlet" method="post" class="card p-4 shadow-sm form-section">
            <div class="mb-3">
                <label for="ProductID" class="form-label">Product ID <i class="bi bi-info-circle" title="Enter the Product ID to delete."></i></label>
                <input type="number" class="form-control" name="ProductID" id="ProductID" placeholder="Enter Product ID" required>
            </div>
            <input type="hidden" name="action" value="delete">
            <div class="d-flex justify-content-between">
                <button type="submit" class="btn btn-danger" name="action" value="delete" onclick="return confirm('Are you sure you want to delete this product?')">
                    <i class="bi bi-trash3"></i> Delete Product
                </button>
                <button type="reset" class="btn btn-secondary"><i class="bi bi-arrow-clockwise"></i> Clear</button>
            </div>
        </form>
    </section>
</div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    <% if (alertType != null && alertMessage != null) { %>
    Swal.fire({
        icon: '<%= alertType %>', // success, error, warning, info
        title: '<%= alertMessage %>',
        confirmButtonText: 'OK'
    });
    <% } %>
</script>
</body>
</html>

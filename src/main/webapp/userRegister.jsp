<%--
  Created by IntelliJ IDEA.
  User: tashi
  Date: 18/01/2025
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign up</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<style>
    *{
        padding: 0;
        margin: 0;
        box-sizing: border-box;
    }
    body{
        background: linear-gradient(90deg,rgba(2,0,36,1)0%, rgba(75,14,154,1)35%,rgba(0,212,255,1)100%);
        font-family: 'Poppins',sans-serif;
    }
    form{
        width: 40%;
        background-color: white;
        padding: 50px;
        border-radius: 20px;
        margin-top: 30px;
    }
    .btn-primary{
        width: 100%;
        border: none;
        border-radius: 50px;
        background: linear-gradient(90deg,rgba(2,0,36,1)0%, rgba(75,14,154,1)35%,rgba(0,212,255,1)100%);
    }
    h4{
        font-size: 2rem !important;
        font-weight: 700;
    }

    .form-control{
        color: rgba(0,0,0,.87);
        border-bottom-color: rgba(0,0,0,.42);
        box-shadow: none !important;
        border: none;
        border-bottom: 1px solid;
        border-radius: 4px 4px 0 0;
    }
    .form-label{
        color: black;
    }
    p{
        font-size: 15px;
    }
</style>
<body>
<div class="container-fluid">
    <% String message = request.getAttribute("message") != null ? (String) request.getAttribute("message") : null; %>
    <% String error = request.getAttribute("error") != null ? (String) request.getAttribute("error") : null; %>

    <% if (message != null) { %>
    <div class="alert alert-success"><%= message %></div>
    <% } %>

    <% if (error != null) { %>
    <div class="alert alert-danger"><%= error %></div>
    <% } %>
    <form action="registerServlet" method="POST" class="mx-auto">
        <h4 class="text-center">Registration</h4>
        <div class="mb-3 mt-4">
            <label for="username" class="form-label">User Name</label>
            <input type="text" class="form-control" id="username" placeholder="Enter Your UserName">
        </div>
        <div class="mb-3 mt-4">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" placeholder="Enter Your Email ">
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" placeholder="Enter Your Password">
        </div>
        <div class="mb-3">
            <label for="confirmPassword" class="form-label">Confirm Password</label>
            <input type="password" class="form-control" id="confirmPassword" placeholder="Confirm Your Password">
        </div>
        <a href="index.jsp" class="btn btn-primary mt-2">Register</a>
        <a href="userDelete.jsp" class="btn btn-primary mt-2">Delete</a>

        <p class="text-muted text-center mt-3">
            Already have an account? <a href="index.jsp" class="text-decoration-none">Login here</a>.
        </p>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

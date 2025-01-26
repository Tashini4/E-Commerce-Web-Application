<%--
  Created by IntelliJ IDEA.
  User: tashi
  Date: 24/01/2025
  Time: 22:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Forget_Password</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
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
        margin-left: 300px;
    }
    .submit-btn{
        width: 100%;
        border: none;
        border-radius: 50px;
        background: linear-gradient(90deg,rgba(2,0,36,1)0%, rgba(75,14,154,1)35%,rgba(0,212,255,1)100%);
        color: white;
    }
    h3{
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
<div class="container">
    <div class="forgot-password-container">
        <%
            String message = (String) request.getAttribute("message");
            String error = (String) request.getAttribute("error");
        %>
        <% if (message != null) { %>
        <div class="alert alert-success"><%= message %></div>
        <% } %>
        <% if (error != null) { %>
        <div class="alert alert-danger"><%= error %></div>
        <% } %>

        <form action="forgetPasswordServlet" method="post">
            <h3 class="text-center mb-4">Forget Password</h3>
            <div class="mb-3">
                <label for="email" class="form-label">Enter Your Email</label>
                <input type="email" class="form-control" name="email" id="email" placeholder="Enter your registered email" required>
            </div>
            <div class="mb-3">
                <label for="newPassword" class="form-label">New Password</label>
                <input type="password" class="form-control" name="newPassword" id="newPassword" placeholder="Enter new password" required>
            </div>
            <div class="mb-3">
                <label for="confirmPassword" class="form-label">Confirm Password</label>
                <input type="password" class="form-control" name="confirmPassword" id="confirmPassword" placeholder="Re-enter new password" required>
            </div>
            <div class="d-grid">
                <a href="index.jsp" class="btn submit-btn">Change Password</a>
            </div>
        </form>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script>
    <% if (message != null) { %>
    Swal.fire({
        icon: 'success',
        title: 'Success',
        text: '<%= message %>',
    });
    <% } else if (error != null) { %>
    Swal.fire({
        icon: 'error',
        title: 'Error',
        text: '<%= error %>',
    });
    <% } %>
</script>
</body>
</html>

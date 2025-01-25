<%--
  Created by IntelliJ IDEA.
  User: tashi
  Date: 24/01/2025
  Time: 23:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
        <meta charset="UTF-8">
        <title>Sign up</title>
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
    <form action="" method="" class="mx-auto">
        <h4 class="text-center">SignUp Form</h4>
        <div class="mb-3 mt-4">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" placeholder="Enter Your Email ">
        </div>
        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Password</label>
            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter Your Password">
        </div>
        <button type="submit" class="btn btn-primary mt-2">Delete</button>

        <p class="text-muted text-center mt-3">
            <a href="index.jsp" class="text-decoration-none">Forget Password?</a>.
        </p>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script></head>


</body>
</html>

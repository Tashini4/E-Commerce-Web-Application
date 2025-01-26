<%--
  Created by IntelliJ IDEA.
  User: tashi
  Date: 26/01/2025
  Time: 13:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="lk.ijse.assignment_1_aad.dto.CategoryDTO" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Category</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<style>
    body {
        background-color: #573818;
        font-family: 'Arial', sans-serif;
    }
    .container {
        max-width: 900px;
    }
    h1 {
        text-align: center;
        font-weight: bold;
        margin-top: 50px;
        color: rgba(161,109,14,1);
        text-shadow: 1px 1px 1px black;
        border-bottom: 2px solid rgba(161,109,14,1);
    }
    .card {
        border: none;
        border-radius: 10px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }
    .card:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 12px rgba(0, 0, 0, 0.2);
    }
    .btn {
        border-radius: 30px;
        font-weight: bold;
        padding: 12px 24px;
        transition: background-color 0.3s, transform 0.3s;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }
    .btn:hover {
        transform: translateY(-3px);
        box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
    }
    .btn-danger {
        background: rgba(161,109,14,1);
        border: none;
        color: white;
    }
    .btn-danger:hover {
        background:rgba(161,109,14,1);
    }
    .btn-primary {
        background: rgba(161,109,14,1);
        border: none;
        color: white;
    }
    .btn-primary:hover {
        background: rgba(161,109,14,1);
    }
    .btn-warning {
        background: rgba(161,109,14,1);
        border: none;
        color: white;
    }
    .btn-warning:hover {
        background: rgba(161,109,14,1);
    }
    .alert {
        border-radius: 8px;
    }
    form {
        margin-bottom: 20px;
    }
    .form-label {
        font-weight: bold;
    }
    footer {
        margin-top: 30px;
        text-align: center;
        color: #6c757d;
        font-size: 0.9rem;
    }
</style>
<body>


<div class="container my-5">
    <h1 class="text-center mb-4 ">Category Management</h1>

    <!-- Navigation Buttons -->
    <div class="d-flex justify-content-center mb-4">
        <form action="#" class="me-3">
            <button type="submit" class="btn btn-danger">View Categories</button>
        </form>
        <form action="adminDashboard.jsp">
            <button type="submit" class="btn btn-danger">Home</button>
        </form>
    </div>

    <%
        String message = request.getParameter("message");
        String error = request.getParameter("error");
    %>

    <% if (message != null) { %>
    <div class="alert alert-success" role="alert"><%= message %></div>
    <% } else if (error != null) { %>
    <div class="alert alert-danger" role="alert"><%= error %></div>
    <% } %>

    <!-- Add Category -->
    <div class="card my-4">
        <div class="card-body">
            <h5 class="card-title text-warning">Add Category</h5>
            <form action="#" method="post">
                <div class="mb-3">
                    <label for="name" class="form-label">Name</label>
                    <input type="text" id="name" name="category_name" class="form-control" placeholder="Enter category name" required>
                </div>
                <div class="mb-3">
                    <label for="description" class="form-label">Description</label>
                    <input type="text" id="description" name="category_description" class="form-control" placeholder="Enter category description" required>
                </div>
                <button type="submit" class="btn btn-primary">Save Category</button>
            </form>
        </div>
    </div>

    <!-- Delete Category -->
    <div class="card my-4">
        <div class="card-body">
            <h5 class="card-title text-warning bg-dark">Delete Category</h5>
            <form action="#" method="post">
                <div class="mb-3">
                    <label for="id" class="form-label">Category ID</label>
                    <input type="number" id="id" name="category_id" class="form-control" placeholder="Enter category ID" required>
                </div>
                <button type="submit" class="btn btn-danger">Delete Category</button>
            </form>
        </div>
    </div>

    <!-- Update Category -->
    <div class="card my-4">
        <div class="card-body">
            <h5 class="card-title text-warning bg-dark">Update Category</h5>
            <form action="#" method="post">
                <div class="mb-3">
                    <label for="update_category_id" class="form-label">Category ID</label>
                    <input type="number" id="update_category_id" name="update_category_id" class="form-control" placeholder="Enter category ID" required>
                </div>
                <div class="mb-3">
                    <label for="update_name" class="form-label">New Name</label>
                    <input type="text" id="update_name" name="update_name" class="form-control" placeholder="Enter new category name" required>
                </div>
                <div class="mb-3">
                    <label for="update_description" class="form-label">New Description</label>
                    <input type="text" id="update_description" name="update_description" class="form-control" placeholder="Enter new category description" required>
                </div>
                <button type="submit" class="btn btn-warning">Update Category</button>
            </form>
        </div>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

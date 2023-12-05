<%--
  Created by IntelliJ IDEA.
  User: myasu
  Date: 10/16/2023
  Time: 11:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body>
<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Welcome Page</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">

    </ul>
  </div>
</nav>

<!-- Welcome Message -->
<div class="container mt-5">
  <div class="jumbotron">
    <h1 class="display-4">Welcome to Our Website</h1>
    <p class="lead">This is a simple welcome page created to learn JEE</p>
    <hr class="my-4">
    <p>Click the button below to connect.</p>
    <div class="d-flex justify-content-between">
      <a class="btn btn-primary btn-lg" href="FirstServlet?action=login" role="button">Sign in</a>
      <a class="btn btn-primary btn-lg" href="FirstServlet?action=signup" role="button">Sign up</a>
    </div>


  </div>
</div>

<!-- Include Bootstrap JS and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

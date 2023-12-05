<%--
  Created by IntelliJ IDEA.
  User: myasu
  Date: 10/17/2023
  Time: 4:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Sign Up Page</title>
  <!-- Include Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-md-6">
      <div class="card">
        <div class="card-header">Sign Up</div>
        <div class="card-body">
          <form method="post">
            <div class="form-group">
              <label for="Email">Email</label>
              <input type="text" class="form-control" id="Email" name="email" placeholder="Enter your Email">
            </div>
            <div class="form-group">
              <label for="Username">Username</label>
              <input type="text" class="form-control" id="Username" name="username" placeholder="Enter your Username">
            </div>
            <div class="form-group">
              <label for="password">Password</label>
              <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password">
            </div>
            <button type="submit" class="btn btn-primary" name="action" value="signup">Create an account</button>
            <a href="FirstServlet?action=login">Connect</a>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Include Bootstrap JS and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

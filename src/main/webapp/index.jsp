<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
  <style>
    /* CSS styles for the login page */
    body {
      background-color: #f2f2f2;
      font-family: Arial, sans-serif;
    }
    .container {
      max-width: 400px;
      margin: 0 auto;
      padding: 40px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h1 {
      text-align: center;
      color: #333;
      margin-bottom: 20px;
    }
    .form-group {
      margin-bottom: 20px;
    }
    .form-group label {
      display: block;
      font-weight: bold;
      margin-bottom: 5px;
    }
    .form-group input[type="text"],
    .form-group input[type="password"] {
      width: 100%;
      padding: 10px;
      border-radius: 4px;
      border: 1px solid #ccc;
      outline: none;
    }
    .form-group input[type="submit"] {
      width: 100%;
      padding: 10px;
      border-radius: 4px;
      background-color: #4caf50;
      color: #fff;
      font-weight: bold;
      border: none;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }
    .form-group input[type="submit"]:hover {
      background-color: #45a049;
    }
    .register-link {
      text-align: center;
      margin-top: 20px;
    }
    .register-link a {
      color: #777;
      text-decoration: none;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Login</h1>
      <form method="post" action="login.jsp">
      <div class="form-group">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" required>
      </div>
      <div class="form-group">
        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>
      </div>
      <div class="form-group">
        <input type="submit" value="Login">
      </div>
    </form>
    <div class="register-link">
      <a href="register.jsp">Don't have an account? Register here</a>
    </div>
  </div>
</body>
</html>


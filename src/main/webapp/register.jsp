<!DOCTYPE html>
<html>
<head>
  <title>Registration Form</title>
  <style>
    /* CSS styles for the form */
    body {
      background-color: #f8f8f8;
      font-family: Arial, sans-serif;
    }
    .container {
      max-width: 400px;
      margin: 0 auto;
      padding: 20px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h1 {
      text-align: center;
      color: #333;
    }
    .form-group {
      margin-bottom: 20px;
    }
    label {
      display: block;
      font-weight: bold;
      margin-bottom: 5px;
      color: #555;
    }
    input[type="text"],
    input[type="password"] {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
      outline: none;
    }
    button {
      width: 100%;
      padding: 10px;
      background-color: #4caf50;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    button:hover {
      background-color: #45a049;
    }
    .login-link {
      text-align: center;
      margin-top: 20px;
      color: #888;
    }
    .login-link a {
      color: #4caf50;
      text-decoration: none;
    }
  </style>
</head>
<body>
  <form method="post" action="userRegistration.jsp">
  <div class="container">
    <h1>Registration</h1>
    <form action="register.jsp" method="post">
      <div class="form-group">
        <label for="firstName">First Name</label>
        <input type="text" id="firstName" name="firstName" required>
      </div>
      <div class="form-group">
        <label for="lastName">Last Name</label>
        <input type="text" id="lastName" name="lastName" required>
      </div>
      <div class="form-group">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" required>
      </div>
      <div class="form-group">
        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>
      </div>
      <div class="form-group">
        <label for="email">Email</label>
        <input type="text" id="email" name="email" required>
      </div>
      <button type="submit">Register</button>
    </form>
    <div class="login-link">
      Already have an account? <a href="index.jsp">Login</a>
    </div>
  </div>
</body>
</html>


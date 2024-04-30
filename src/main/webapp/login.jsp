<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang=en>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <h3>Hospital Login</h3>
  <form action="loginaction.jsp" method="POST" class="form">
    <div class="form-group">
      <label for="name">Email:</label>
      <input type="email" id="name" name="email" placeholder="Your Email">
    </div>
    <div class="form-group">
      <label for="email">Password:</label>
      <input type="Password" id="email" name="password" placeholder="Your Password">
    </div>
    <button type="submit">Submit</button>
  </form>

</body>
</html>
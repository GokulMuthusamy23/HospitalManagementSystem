<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Register Patient</title>
  <link rel="stylesheet" href="stylesheet.css">
</head>
<body>
   <h3>New Patient</h3>
  <form action="addPatientAction.jsp" method="POST" class="form">
    <div class="form-group">
      <label for="name">ID:</label>
      <input type="text" id="name" name="id" placeholder="Patient ID" required>
    </div>
    <div class="form-group">
      <label for="email">Date:</label>
      <input type="text" id="date" name="date" placeholder="Date" required>
    </div>
    <div class="form-group">
      <label for="email">Name:</label>
      <input type="text" id="email" name="name" placeholder="Patient Name" required>
    </div>
    <div class="form-group">
      <label for="phone">Phone:</label>
      <input type="tel" id="phone" name="phone" placeholder="PhoneNumber" required>
    </div>
    <div class="form-group">
      <label for="address">Address:</label>
      <input type="text" id="address" name="address" placeholder="Address" required>
    </div>
    <div class="form-group">
      <label for="message">Problem:</label>
      <textarea id="message" name="message" placeholder="Patient's Problem" required></textarea>
    </div>
    <button type="submit">Save</button>
    <a href="home.jsp" >Home</a>
  </form>

</body>
</html>

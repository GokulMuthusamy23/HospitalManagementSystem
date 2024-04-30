<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<html>
<head>
<title>Edit Patient Details</title>
  <link rel="stylesheet" href="stylesheet.css">
</head>
<body>
 <h3>Edit Patient Details</h3>
<%
String id = request.getParameter("id");
try{
  Connection con = ConnectionProvider.getcon();
  Statement st = con.createStatement();
  ResultSet rs = st.executeQuery("select*from patient where id='"+id+"'");
  while(rs.next()){
%>
<form action="editPatientAction.jsp" method="POST" class="form">
    <div class="form-group">
      <label for="name">ID:</label>
      <input type="text" id="name" name="id" value="<% out.println(id);%>">
    </div>
    <div class="form-group">
      <label for="email">Name:</label>
      <input type="text" id="email" name="name"  value="<%=rs.getString(3) %>" >
    </div>
    <div class="form-group">
      <label for="phone">Phone:</label>
      <input type="tel" id="phone" name="phone"  value="<%=rs.getString(4) %>" >
    </div>
    <div class="form-group">
      <label for="address">Address:</label>
      <input type="text" id="address" name="address"  value="<%=rs.getString(5) %>" >
    </div>
    <div class="form-group">
      <label for="message">Problem:</label>
      <input type="text" id="message" name="message" value="<%=rs.getString(6) %>" >
    </div>
    <button type="submit">Update</button>
    <a href="home.jsp" >Home</a>
  </form>

<%
}
}catch(Exception e){
}
%>

</body>
<br><br><br>
</body>
</html>
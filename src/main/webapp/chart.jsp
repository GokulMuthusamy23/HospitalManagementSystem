<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Report</title>
<link rel="stylesheet" href="stylesheet.css">
</head>
<body>
   <h3>Patient's Reports</h3>
<form action="chart.jsp" method="post" id="search">
     <input type="text" name="search" placeholder="Date or Problem">
     <button type="submit">Search</button>
 </form>
<table>
        <thead>
          <tr>
            <th >ID</th>
            <th >Name</th>
            <th >Mobile no</th>
            <th >Address</th>
            <th>Problem</th>
            <th>Date</th>
          </tr>
        </thead>
        <tbody>
       <%
       try{
    	   String search = request.getParameter("search");
    	   Connection con = ConnectionProvider.getcon();
    	   Statement st = con.createStatement();
    	   ResultSet rs = st.executeQuery("select * from patient where date like '%"+search+"%' or problem like '%"+search+"%'");
    	   while(rs.next()){
       %>
          <tr>
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(5)%></td>
            <td><%=rs.getString(6)%></td>
            <td><%=rs.getString(2)%></td>
          </tr>
         <%}
       }
       catch(Exception e){
           out.println(e);
       }%>
        </tbody>
      </table>
       <a href="docHome.jsp" id="home">Home</a>
      <br>
      <br>
      <br>

</body>
</html>
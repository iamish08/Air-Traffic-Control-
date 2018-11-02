
<html>
</head>
<link rel="stylesheet" type="text/css" href="syle1.css">
</head>
<body>
<h1>Pilot landing page</h1>
<%@ page import ="java.sql.*" %>
<%@ page import =" java.sql.Connection" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.ResultSet" %>
<%@ page import ="java.sql.SQLException" %>
<%@ page import ="java.sql.Statement" %>
<%@ page import ="java.lang.*" %>
<%
try{
    String flight_id = request.getParameter("flight_id");
    String aircraft_name = request.getParameter("aircraft_name");
    String priority = request.getParameter("priority");
    String no_of_pass = request.getParameter("no_of_pass");
    String emergency = request.getParameter("emergency");
    String airlines = request.getParameter("airlines");
    String status = request.getParameter("status");
    String type = request.getParameter("type"); 
    String source = request.getParameter("source");
    String destination = request.getParameter("destination");
    String departure = request.getParameter("departure");
    String arrival = request.getParameter("arrival");
    String pilot_id = request.getParameter("pilot_id");
    
    Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectflight" , "root" , "goodjoke");   
    PreparedStatement pst = conn.prepareStatement("insert into flight values (?,?,?,?,?,?,?,?,?,?,?,?,?)");
    
    pst.setString(1,flight_id);
    pst.setString(2,aircraft_name);
    pst.setString(3,priority);
    pst.setString(4,no_of_pass);
    pst.setString(5,emergency);
    pst.setString(6,airlines);
    pst.setString(7,status);
    pst.setString(8,type);
    pst.setString(9,source);
    pst.setString(10,destination);
    pst.setString(11,departure);
    pst.setString(12,arrival);
    pst.setString(13,pilot_id);
    
    int count = pst.executeUpdate();
     
    out.println(count + " Row Inserted");
    %>
    <nav>
    <!--Add font and logout link here -->
   	<form method="get" action="logout.jsp">
    	<button type="submit">Logout</button>
	</form>
    </nav>
    <!--  <p>You have been assigned flight no. : <%--out.print(rs.getString(7));--%><a href= "" target ="blank">Click here</a> for details</p>
    <p>You have been assigned with Air Traffic Control Unit: <%--out.print(rs.getInt(6)); --%></p> -->
    </div>
    <footer>
    <!-- Add copyright and some more dilling -->
    </footer>
    <%
}
catch(Exception e){      
   out.println("Something went wrong !! Please try again " + e);
}   
%>


</body>
</html>


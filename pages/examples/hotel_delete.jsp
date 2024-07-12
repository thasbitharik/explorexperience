<%@page import="java.sql.*" %> 



<% 
        String id = request.getParameter("id");
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/explore_xperience_db","root","");
        pst = con.prepareStatement("delete from hotels where id = ?");
         pst.setString(1, id);
        pst.executeUpdate();  
        
        %>
        
        
       <%
       		response.sendRedirect("hotel.jsp");
       %>
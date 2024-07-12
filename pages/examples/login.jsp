<%@ page import="java.sql.*" %>
<%
String u_name=request.getParameter("Email");
String password=request.getParameter("Password");
String action=request.getParameter("login");


if (action.equals("login")) {

	try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/explore_xperience_db","root","");
	Statement st=con.createStatement();
	
	ResultSet rs=st.executeQuery("Select* from tourists where tourist_email='"+u_name+"' and tourist_password='"+password+"'");
	
	
	if (rs.next()){
		response.sendRedirect("../../User/index.jsp");
	}
	ResultSet rst=st.executeQuery("Select* from admin where admin_email='"+u_name+"' and admin_password='"+password+"'");
	while(rst.next()) 
    {
		response.sendRedirect("../../index.jsp");
		
    }
	
	
	
	%>
	<script type="text/javascript"> 
	
	alert("Incorrect Password"); 
	
	</script> 
	<%
	
	response.sendRedirect("login.html");
}


catch(Exception e) {
out.println(e);
}
}
%>
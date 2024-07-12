<script type="text/javascript"> 
function showAlertR(){ 
alert("You have Successfully Registered as a User!"); 
} 
</script> 

<%@ page import="java.sql.*, javax.sql.*, java.io.*, javax.naming.*" %>
<%
if(request.getParameterMap().containsKey("Submit")){ //JSP code starting from here 
	String fullname = request.getParameter("FullName");
	String email = request.getParameter("Email");
	String mb_no = request.getParameter("Mobile");
	String country = request.getParameter("Country");
	String nic = request.getParameter("NIC");
	String password = request.getParameter("Password");


  try {
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/explore_xperience_db","root","");
	  Statement stmt=con.createStatement();
	  stmt.executeUpdate("INSERT INTO tourists (`tourist_uname`,`tourist_nic_passport`,`tourist_email`,`tourist_password`,`tourist_tp_no`,`tourist_country`) VALUES ('"+fullname+"', '"+nic+"', '"+email+"', '"+password+"', '"+mb_no+"', '"+country+"');");
	  

	 con.close();

	  response.sendRedirect("login.jsp");
  }catch(Exception e){ out.println(e); 
  //response.sendRedirect("users_create.jsp");
  }
	
  }

%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Tourism_Management_Register</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="../../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
</head>
<body class="hold-transition register-page">
<div class="register-box">
  <div class="card card-outline card-primary">
    <div class="card-header text-center">
      <a href="../../index.html" class="h1"><b>Tourism</b> Management</a>
    </div>
    <div class="card-body">
      <p class="login-box-msg">Register a new membership</p>

      <form action="register.jsp" method="post">
       
       
       
        <div class="input-group mb-3">
          <input type="text" name="Fullname" class="form-control" placeholder="Full name">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="email" name="Email" class="form-control" placeholder="Email">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="text" name="Mobile" class="form-control" placeholder="Mobile Number">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-phone"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="text" name="Country" class="form-control" placeholder="Country">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-solid fa-globe"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="text" name="NIC" class="form-control" placeholder="NIC/Passport Number">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-passport"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" name="Password" class="form-control" placeholder="Password">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="agreeTerms" name="terms" value="agree">
              <label for="agreeTerms">
               I agree to the <a href="#">terms</a>
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
          	<button name = "Submit" type="submit" onclick="showAlertR()" class="btn btn-primary btn-block">Register</button>
            
          </div>
          <!-- /.col -->
        </div>
      </form>
<!--
      <div class="social-auth-links text-center">
        <a href="#" class="btn btn-block btn-primary">
          <i class="fab fa-facebook mr-2"></i>
          Sign up using Facebook
        </a>
        <a href="#" class="btn btn-block btn-danger">
          <i class="fab fa-google-plus mr-2"></i>
          Sign up using Google+
        </a>
      </div>
-->
      <a href="login-v2.html" class="text-center">I already have a membership</a>
    </div>
    <!-- /.form-box -->
  </div><!-- /.card -->
</div>
<!-- /.register-box -->

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
</body>
</html>

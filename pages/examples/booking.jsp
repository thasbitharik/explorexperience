<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 

<script type="text/javascript"> 
function showAlertD(){ 
alert("Data Successfuly Deleted"); 
} 
</script> 


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Tourism_Management_Bookings</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="../../index.html" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="../examples/booking.html" class="nav-link">Bookings</a>
      </li>
      
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->
      <li class="nav-item">
        <a class="nav-link" data-widget="navbar-search" href="#" role="button">
          <i class="fas fa-search"></i>
        </a>
        <div class="navbar-search-block">
          <form class="form-inline">
            <div class="input-group input-group-sm">
              <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
              <div class="input-group-append">
                <button class="btn btn-navbar" type="submit">
                  <i class="fas fa-search"></i>
                </button>
                <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
          </form>
        </div>
      </li>
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-bell"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-toggle="" href="login.html">
          <i class="fas fa-arrow-right"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="../../index.html" class="brand-link">
      <img src="../../dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Tourism Management</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="../../dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">ADMINISTRATOR</a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="../../index.jsp" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
              </p>
            </a>
            </li>

            <li class="nav-item">
              <a href="hotel.jsp" class="nav-link">
                <i class="nav-icon fas fa-hotel"></i>
                <p>
                  Hotel Management
                </p>
              </a>
            </li>

          <li class="nav-item">
            <a href="packages.jsp" class="nav-link" >
                <i class="nav-icon fas fa-book-open"></i>
              <p>
                Package Management
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="booking.jsp" class="nav-link active">
              <i class="nav-icon fas fa-chart-line"></i>
              <p>
                Bookings
              </p>
            </a>
          </li>

          <li class="nav-item">
            <a href="users.jsp" class="nav-link">
              <i class="nav-icon fas fa-users"></i>
              <p>
                Users
              </p>
            </a>
          </li>

          <li class="nav-item">
            <a href="feedback.jsp" class="nav-link">
              <i class="nav-icon fas fa-list"></i>
              <p>
                Feedback Review
              </p>
            </a>
          </li>
          
          
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Bookings</h1>
          </div>
          
            <div class="col-12">
              <a href="new_booking.jsp">
                <input type="submit" value="Create New Booking" class="btn btn-success float-right">
              </a>
            </div>
          
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Bookings</h3>

          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
              <i class="fas fa-minus"></i>
            </button>
            <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
              <i class="fas fa-times"></i>
            </button>
          </div>
        </div>
        
        <div class="card-body table-responsive p-0">
          <table class="table table-hover text-nowrap" align="left">
              <thead>
                  <tr>
                  <th style="" class="text-center">
                      Full Name
                  </th>
                  <th style="" class="text-center">
                      NIC/Passport
                  </th>
                  <th style="" class="text-center">
                    Hotel Name
                  </th>
                  <th style="" class="text-center">
                    Package Name
                  </th>
                  
                  <th style="" class="text-center">
                      Rooms Count
                  </th>
                  <th style="" class="text-center">
                      Facilities
                  </th>
                  <th style="" class="text-center">
                      Email
                  </th>
                  <th style="" class="text-center">
                      Mobile Number
                  </th>
                  <th style="" class="text-center">
                      Check-in
                  </th>
                  <th style="" class="text-center">
                    <th style="" class="text-center">
                      Check-out
                  </th>
                  </th>
                  <th style="" class="text-center">
                      Total Price
                  </th>
                  <th style="" class="text-center">
                      Payment Type
                  </th>
                  <th style="" class="text-center">
                      Status
                  </th>
                <th style="" class="text-center">
                  Action
              </th>
                  </tr>
              </thead>
              				<%   

                                Connection con;
                                PreparedStatement pst;
                                ResultSet rs;
        
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost/explore_xperience_db","root","");
                                
                                  String query = "select * from bookings";
                                  Statement st = con.createStatement();
                                  
                                    rs =  st.executeQuery(query);
                                    
                                        while(rs.next())
                                        {
                                            String id = rs.getString("id");
                            %>
             
                             <tr>
                                 <td><%=rs.getString("fullname") %></td>
                                 <td><%=rs.getString("nic") %></td>
                                 <td><%=rs.getString("hotelname") %></td>
                                 <td><%=rs.getString("packagename") %></td>
                                 <td><%=rs.getString("roomcount") %></td>
                                 <td>
                                 <td><%=rs.getString("facilities") %></td>
                                 </td>
                                 
                                 
                                 <td><%=rs.getString("email") %></td>
                                 <td><%=rs.getString("tpno") %></td>
                                 <td><%=rs.getString("checkin") %></td>
                                 <td><%=rs.getString("checkout") %></td>
                                 <td><%=rs.getString("totalprice") %></td>
                                 <td><%=rs.getString("paymenttype") %></td>
                                 <td><%=rs.getString("status") %></td>
                                 
                                 
                                 
                                 
                                 <td class="project-actions text-right">			                          
			                          <a class="btn btn-info btn-sm" href="booking_edit.jsp?id=<%=id%>">
			                              
			                              Edit
			                          </a>
			                          <a class="btn btn-danger btn-sm" onclick="showAlertD()" href="booking_delete.jsp?id=<%=id%>">
			                              Delete
			                          </a>
			                      </td>
                                 
                                 
                                 
                             </tr> 
                             
                             
                            <%
                                 
                                 }
                            %>
              
          </table>
        </div>
        <!-- /.card-body -->
      </div>
      <!-- /.card -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
</body>
</html>

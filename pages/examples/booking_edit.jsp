<script type="text/javascript"> 
function showAlert(){ 
alert("Data Successfuly Updated"); 
} 
</script> 

<%@ page import="java.sql.*, javax.sql.*, java.io.*, javax.naming.*" %>
<%
if(request.getParameter("Submit")!=null)
{
	String id = request.getParameter("id");
	String fullname = request.getParameter("FullName");
	String nic = request.getParameter("NIC");
	String hotelname = request.getParameter("HotelName");
	String packagename = request.getParameter("PackageName");
	String roomcount = request.getParameter("RoomsCount");
	
	String facilities = request.getParameter("Facilities");
	String email = request.getParameter("Email");
	String tpno = request.getParameter("MobileNumber");
	String checkin = request.getParameter("Checkin");
	String checkout = request.getParameter("Checkout");
	String totalprice = request.getParameter("TotalPrice");
	String paymenttype = request.getParameter("PaymentType");
	String status = request.getParameter("Status");
    
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost/explore_xperience_db","root","");
    pst = con.prepareStatement("update bookings set fullname=?,nic=?,hotelname=?,packagename=?,roomcount=?,facilities=?,email=?,tpno=?,checkin=?,checkout=?,totalprice=?,paymenttype=? ,status=? where id = ?");
    pst.setString(1, fullname);
    pst.setString(2, nic);
    pst.setString(3, hotelname);
    pst.setString(4, packagename);
    pst.setString(5, roomcount);
    pst.setString(6, facilities);
    pst.setString(7, email);
    pst.setString(8, tpno);
    pst.setString(9, checkin);
    pst.setString(10, checkout);
    pst.setString(11, totalprice);
    pst.setString(12, paymenttype);
    pst.setString(13, status);
    
    pst.setString(14, id);
    pst.executeUpdate(); 
    
    
    %>
    
        
    <% 
    
    response.sendRedirect("booking.jsp");
    }


	%>






<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Tourism_Management_Create_Booking</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
  <!-- daterange picker -->
  <link rel="stylesheet" href="../../plugins/daterangepicker/daterangepicker.css">
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="../../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="../../plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="../../plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="../../plugins/select2/css/select2.min.css">
  <link rel="stylesheet" href="../../plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
  <!-- Bootstrap4 Duallistbox -->
  <link rel="stylesheet" href="../../plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
  <!-- BS Stepper -->
  <link rel="stylesheet" href="../../plugins/bs-stepper/css/bs-stepper.min.css">
  <!-- dropzonejs -->
  <link rel="stylesheet" href="../../plugins/dropzone/min/dropzone.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="../../index3.html" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="../forms/new_booking.html" class="nav-link">Create New Booking</a>
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
        <a class="nav-link" data-toggle="" href="../examples/login-v2.html">
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

  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Create New Booking</h1>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">New Booking</h3>
              </div>
              <!-- /.card-header -->
             
              <!-- form start -->
              <form method="POST" action="" >
              <%   
                         Connection con;
                        PreparedStatement pst;
                        ResultSet rs;
        
                         Class.forName("com.mysql.jdbc.Driver");
                          con = DriverManager.getConnection("jdbc:mysql://localhost/explore_xperience_db","root","");
                           
                          String id = request.getParameter("id");
                          
                        pst = con.prepareStatement("select * from bookings where id = ?");
                        pst.setString(1, id);
                        rs = pst.executeQuery();
                        
                         while(rs.next())
                         {
                         
                %>
                

                  <div class="card-body">
                    <div class="row"></div>
                    <div class="col-md-12">
        
                        
                        
                        <div class="form-group">
                          <label>Full Name</label>
                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                          </div>
                          <input type="text" name="FullName" value="<%= rs.getString("fullname")%>" class="form-control"  placeholder="Full name">
                        </div>
                      </div>
                     
                      
                    
                      <div class="form-group">
                        <label>NIC/Passport Number</label>
                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-passport"></i></span>
                          </div>
                          <input type="text" name="NIC" value="<%= rs.getString("nic")%>" class="form-control" placeholder="NIC/Passport Number">
                        </div> 
                       

                        <div class="row">
                          <div class="col-3">
                            <div class="form-group">
                              <label>Hotel Name</label>
                              <div class="input-group-append">
                                  <select name="HotelName" value="<%= rs.getString("hotelname")%>" class="form-control"  style="width: 100%;"  >
                                    <option value="0">Please select</option>
                                    <option value="Valampuri">Valampuri</option>
									<option value="Jetwing">Jetwing</option>
									<option value="Village Hotel">Village Hotel</option>
									<option value="OneGalleFace">OneGalleFace</option>
                                  </select>
                                <div class="input-group-text">
                                    <span class="fas fa-hotel"></span>
                                </div>
                              </div>
                            </div>
                            </div>

                          <div class="col-3">
                        <div class="form-group">
                          <label>Package Name</label>									
                          <div class="input-group-append">
                              <select name="PackageName" value="<%= rs.getString("packagename")%>" class="form-control"  style="width: 100%;"  >
                                
                                <option value="0">Please select</option>
	                            <option value="Package A">Package A</option>
							    <option value="Package B">Package B</option>
							    <option value="Package C">Package C</option>   
                              </select>
                            <div class="input-group-text">
                                <span class="fas fa-book-open"></span>
                            </div>
                          </div>
                        </div>
                        </div>
                        
                            <div class="col-3">
                              <div class="form-group">
                                <label>No of Rooms</label>
                                <div class="input-group-append">
                                  <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-hospital-user"></i></span>
                                  </div>
                                  <input type="number" name="RoomsCount" value="<%= rs.getString("roomcount")%>" class="form-control"  placeholder="No.of.Rooms">
                                </div>
                                </div>
                                </div>
                            </div>

						
						
                     
                         <div class="row">
                          <div class="col-6">
                          <div class="form-group">
                            <label>Facilities</label>
                            <div class="input-group-append">
                              <select class="select2" name="RoomFacility" value="<%= rs.getString("facilities")%>" multiple="multiple" data-placeholder="Select Activities" style="width: 400%;">
                                
                                <option value="Free-WiFi">Free-WiFi</option>
                                <option value="Break Fast">Break Fast</option>
                                <option value="Lunch">Lunch</option>
                                <option value="Dinner">Dinner</option>
                                <option value="Room Service">Room Service</option>
                                <option value="Swimming Pool">Swimming Pool</option>
                              </select>
                              <div class="input-group-text">
                                  <span class="fas fa-snowflake"></span>
                              </div>
                            </div>
                          </div>
                          </div>
                                 
                          </div>
                          
                         
                            
                         
                            <div class="row">
                              <div class="col-3">
                            <div class="form-group">
                        <label>Email</label>
                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                          </div>
                          <input type="email" name="Email" value="<%= rs.getString("email")%>" class="form-control" placeholder="Email">
                        </div>
                        </div>
                        </div>
        
                        <div class="col-3">
                          <div class="form-group">
                        <label>Mobile Number</label>
                        <div class="input-group mb-3">
                          <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-phone"></i></span>
                          </div>
                          <input type="text" name="MobileNumber" value="<%= rs.getString("tpno")%>" class="form-control" placeholder="Mobile Number">
                        </div> 
                        </div>
                        </div>
                        </div>

                       
        
                        <div class="row">
                          <div class="col-3">
                        <div class="form-group">
                            <label>Check-in Date:</label>
                            <div class="input-group date" data-target-input="nearest">
                              <input type="date" name="Checkin" value="<%= rs.getString("checkin")%>" data-target="#reservationdate"/>
                              <div class="input-group-append" >
                                  <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                              </div>
                          </div>
                          </div>
                        </div>
        
                        <div class="col-3">
                        <div class="form-group">
                          <label>Check-out Date:</label>

                          <div class="input-group date" id="reservationdate2" data-target-input="nearest">
                            <input type="date" name="Checkout" value="<%= rs.getString("checkout")%>" data-target="#reservationdate"/>
                            <div class="input-group-append" >
                                <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                            </div>
                        </div>

                        </div>
                      </div>
                      </div>
        
                      <div class="row">
                        <div class="col-3">
                      <label>Total Price</label>
                      <div class="input-group mb-3">
                        <div class="input-group-prepend">
                          <span class="input-group-text"><i class="fas fa-money-check"></i></span>
                        </div>
                        <input type="text" name="TotalPrice" value="<%= rs.getString("totalprice")%>" class="form-control" placeholder="Total Price">
                      </div>
                      </div>
                        
                      <div class="col-3">
                        <div class="form-group">
                          <label>Payment Type</label>
                          <div class="input-group-append">
                              <select name="PaymentType" value="<%= rs.getString("paymenttype")%>"  class="form-control" style="width: 100%;"  >
                                
                                    <option value="Credit Card">Credit Card</option>
                                    <option value="Cash">Cash</option>
                              </select>
                            <div class="input-group-text">
                                <span class="fas fa-money-check"></span>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div>
                    <div class="col-3">
                      <div class="form-group">
                          <label>Status</label>									
                          <div class="input-group-append">
                              <select name="Status" class="form-control" value="<%= rs.getString("status")%>" style="width: 100%;"  >
                                <option value="Confirmed">Confirmed</option>
	                            <option value="Cancel">Cancel</option>
							      
                              </select>
                            <div class="input-group-text">
                                <span class="fas fa-book-open"></span>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                      
                     
				<% 
				
                         
                         }  
				%>
                      

                
                <!-- /.card-body -->

                <div class="card-footer">
                  <button name = "Submit" type="submit" onclick="showAlert()" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>
            <!-- /.card -->

            

                  

                    
                  </div>
                  <div class="form-group">
                  </div>
                </form>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
     </div>
     <!-- /.content-wrapper -->
  

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Select2 -->
<script src="../../plugins/select2/js/select2.full.min.js"></script>
<!-- Bootstrap4 Duallistbox -->
<script src="../../plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
<!-- InputMask -->
<script src="../../plugins/moment/moment.min.js"></script>
<script src="../../plugins/inputmask/jquery.inputmask.min.js"></script>
<!-- date-range-picker -->
<script src="../../plugins/daterangepicker/daterangepicker.js"></script>
<!-- bootstrap color picker -->
<script src="../../plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="../../plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Bootstrap Switch -->
<script src="../../plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
<!-- BS-Stepper -->
<script src="../../plugins/bs-stepper/js/bs-stepper.min.js"></script>
<!-- dropzonejs -->
<script src="../../plugins/dropzone/min/dropzone.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
<!-- Page specific script -->
<script>
  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()

    //Initialize Select2 Elements
    $('.select2bs4').select2({
      theme: 'bootstrap4'
    })

    //Datemask dd/mm/yyyy
    $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
    //Datemask2 mm/dd/yyyy
    $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
    //Money Euro
    $('[data-mask]').inputmask()

    //Date picker
    $('#reservationdate').datetimepicker({
        format: 'L'
    });

    //Date and time picker
    $('#reservationdatetime').datetimepicker({ icons: { time: 'far fa-clock' } });

    //Date range picker
    $('#reservation').daterangepicker()
    //Date range picker with time picker
    $('#reservationtime').daterangepicker({
      timePicker: true,
      timePickerIncrement: 30,
      locale: {
        format: 'MM/DD/YYYY hh:mm A'
      }
    })
    //Date range as a button
    $('#daterange-btn').daterangepicker(
      {
        ranges   : {
          'Today'       : [moment(), moment()],
          'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
          'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
          'Last 30 Days': [moment().subtract(29, 'days'), moment()],
          'This Month'  : [moment().startOf('month'), moment().endOf('month')],
          'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        startDate: moment().subtract(29, 'days'),
        endDate  : moment()
      },
      function (start, end) {
        $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
      }
    )

    //Timepicker
    $('#timepicker').datetimepicker({
      format: 'LT'
    })

    //Bootstrap Duallistbox
    $('.duallistbox').bootstrapDualListbox()

    //Colorpicker
    $('.my-colorpicker1').colorpicker()
    //color picker with addon
    $('.my-colorpicker2').colorpicker()

    $('.my-colorpicker2').on('colorpickerChange', function(event) {
      $('.my-colorpicker2 .fa-square').css('color', event.color.toString());
    })

    $("input[data-bootstrap-switch]").each(function(){
      $(this).bootstrapSwitch('state', $(this).prop('checked'));
    })

  })
  // BS-Stepper Init
  document.addEventListener('DOMContentLoaded', function () {
    window.stepper = new Stepper(document.querySelector('.bs-stepper'))
  })

  // DropzoneJS Demo Code Start
  Dropzone.autoDiscover = false

  // Get the template HTML and remove it from the doumenthe template HTML and remove it from the doument
  var previewNode = document.querySelector("#template")
  previewNode.id = ""
  var previewTemplate = previewNode.parentNode.innerHTML
  previewNode.parentNode.removeChild(previewNode)

  var myDropzone = new Dropzone(document.body, { // Make the whole body a dropzone
    url: "/target-url", // Set the url
    thumbnailWidth: 80,
    thumbnailHeight: 80,
    parallelUploads: 20,
    previewTemplate: previewTemplate,
    autoQueue: false, // Make sure the files aren't queued until manually added
    previewsContainer: "#previews", // Define the container to display the previews
    clickable: ".fileinput-button" // Define the element that should be used as click trigger to select files.
  })

  myDropzone.on("addedfile", function(file) {
    // Hookup the start button
    file.previewElement.querySelector(".start").onclick = function() { myDropzone.enqueueFile(file) }
  })

  // Update the total progress bar
  myDropzone.on("totaluploadprogress", function(progress) {
    document.querySelector("#total-progress .progress-bar").style.width = progress + "%"
  })

  myDropzone.on("sending", function(file) {
    // Show the total progress bar when upload starts
    document.querySelector("#total-progress").style.opacity = "1"
    // And disable the start button
    file.previewElement.querySelector(".start").setAttribute("disabled", "disabled")
  })

  // Hide the total progress bar when nothing's uploading anymore
  myDropzone.on("queuecomplete", function(progress) {
    document.querySelector("#total-progress").style.opacity = "0"
  })

  // Setup the buttons for all transfers
  // The "add files" button doesn't need to be setup because the config
  // `clickable` has already been specified.
  document.querySelector("#actions .start").onclick = function() {
    myDropzone.enqueueFiles(myDropzone.getFilesWithStatus(Dropzone.ADDED))
  }
  document.querySelector("#actions .cancel").onclick = function() {
    myDropzone.removeAllFiles(true)
  }
  // DropzoneJS Demo Code End
</script>
</body>
</html>



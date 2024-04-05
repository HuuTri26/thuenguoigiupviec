<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Thông tin khách hàng</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="<c:url value='/resources/admin/assets/img/EPariksha.png'/>" rel="icon">
    <link href="<c:url value='/resources/admin/assets/img/apple-touch-icon.png'/>" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="<c:url value='/resources/admin/assets/vendor/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">
    <link href="<c:url value='/resources/admin/assets/vendor/bootstrap-icons/bootstrap-icons.css'/>" rel="stylesheet">
    <link href="<c:url value='/resources/admin/assets/vendor/boxicons/css/boxicons.min.css'/>" rel="stylesheet">
    <link href="<c:url value='/resources/admin/assets/vendor/quill/quill.snow.css'/>" rel="stylesheet">
    <link href="<c:url value='/resources/admin/assets/vendor/quill/quill.bubble.css'/>" rel="stylesheet">
    <link href="<c:url value='/resources/admin/assets/vendor/remixicon/remixicon.css'/>" rel="stylesheet">
    <link href="<c:url value='/resources/admin/assets/vendor/simple-datatables/style.css'/>" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="<c:url value='/resources/admin/assets/css/style.css'/>" rel="stylesheet">

</head>

<body>

    <!-- ======= Header ======= -->
    <%@include file="/WEB-INF/views/admin/include/header.jsp" %>
<!--     <header id="header" class="header fixed-top d-flex align-items-center"> -->

<!--         <div class="d-flex align-items-center justify-content-between"> -->
<!--             <i class="bi bi-list toggle-sidebar-btn"></i> -->
<!--             <a href="index.html" class="logo d-flex align-items-center"> -->
<%--                 <img src="<c:url value='/resources/admin/assets/img/EPariksha.png'/>" alt=""> --%>
<!--                 <span class="d-none d-lg-block">E-Pariksha</span> -->
<!--             </a> -->

<!--         </div>End Logo -->


<!--         <nav class="header-nav ms-auto"> -->
<!--             <ul class="d-flex align-items-center"> -->



<!--                 <li class="nav-item dropdown pe-3"> -->

<!--                     <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown"> -->
<%--                         <img src="<c:url value='/resources/admin/assets/img/profile-img.jpg'/>" alt="Profile" class="rounded-circle"> --%>
<!--                         <span class="d-none d-md-block dropdown-toggle ps-2">Sumit</span> -->
<!--                     </a>End Profile Iamge Icon -->

<!--                     <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile"> -->
<!--                         <li class="dropdown-header"> -->
<!--                             <h6>Sumit</h6> -->
<!--                             <span>Web Designer</span> -->
<!--                         </li> -->
<!--                         <li> -->
<!--                             <hr class="dropdown-divider"> -->
<!--                         </li> -->

<!--                         <li> -->
<!--                             <a class="dropdown-item d-flex align-items-center" href="user-profile.html"> -->
<!--                                 <i class="bi bi-person"></i> -->
<!--                                 <span>My Profile</span> -->
<!--                             </a> -->
<!--                         </li> -->
<!--                         <li> -->
<!--                             <hr class="dropdown-divider"> -->
<!--                         </li> -->

<!--                         <li> -->
<!--                             <a class="dropdown-item d-flex align-items-center" href="#"> -->
<!--                                 <i class="bi bi-box-arrow-right"></i> -->
<!--                                 <span>Sign Out</span> -->
<!--                             </a> -->
<!--                         </li> -->

<!--                     </ul>End Profile Dropdown Items -->
<!--                 </li>End Profile Nav -->

<!--             </ul> -->
<!--         </nav>End Icons Navigation -->

<!--     </header>End Header -->

    <!-- ======= Sidebar ======= -->
<!--     <aside id="sidebar" class="sidebar"> -->

<!--         <ul class="sidebar-nav" id="sidebar-nav"> -->
    
<!--           <li class="nav-item"> -->
<!--             <a class="nav-link collapsed" href="index.html"> -->
<!--               <i class="bi bi-grid"></i> -->
<!--               <span>Dashboard</span> -->
<!--             </a> -->
<!--           </li>End Dashboard Nav -->
    
<!--           <li class="nav-item"> -->
<!--             <a class="nav-link collapsed" href="student.html"> -->
<!--               <i class="bi bi-person"></i> -->
<!--               <span>Maid</span> -->
<!--             </a> -->
<!--           </li>End Maid Page Nav -->
    
<!--           <li class="nav-item"> -->
<!--             <a class="nav-link collapsed" href="teacher.html"> -->
<!--               <i class="bi bi-question-circle"></i> -->
<!--               <span>User</span> -->
<!--             </a> -->
<!--           </li>End User Page Nav -->
    
<!--           <li class="nav-item"> -->
<!--             <a class="nav-link collapsed" href="subject.html"> -->
<!--               <i class="bi bi-envelope"></i> -->
<!--               <span>Services</span> -->
<!--             </a> -->
<!--           </li>End Subject Page Nav -->
    
<!--           <li class="nav-item"> -->
<!--             <a class="nav-link collapsed" href="examhistory.html"> -->
<!--               <i class="bi bi-box-arrow-in-right"></i> -->
<!--               <span>Booking Details</span> -->
<!--             </a> -->
<!--           </li>End Exam History Page Nav -->
        
    
<!--         </ul> -->
    
<!--       </aside>End Sidebar -->
      <%@include file="/WEB-INF/views/admin/include/sidebar.jsp" %>

    <main id="main" class="main">

        <div class="pagetitle">
            <h1>Thông tin khách hàng</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
                    <li class="breadcrumb-item active"><a href="customerManagement.html">Khách hàng</a></li>
                </ol>
            </nav>
        </div><!-- End Page Title -->

        <section class="section">
            <div class="row">
                <div class="col-lg-12">

                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Xem thông tin khách hàng</h5>
                            <!--   <p>Browser default validation with using the <code>required</code> keyword. Try submitting the form below. Depending on your browser and OS, you’ll see a slightly different style of feedback.</p>
   -->
                            <!-- Browser Default Validation -->
                            <form class="row g-3">
                                <!-- <div class="col-md-6">
                                    <label for="validationDefault01" class="form-label">ID</label>
                                    <input type="hidden" class="form-control" id="validationDefault01" value="id" name="id" placeholder="Id"
                                        required>
                                </div> -->
                                <div class="col-md-6">
                                    <label for="validationDefault01" class="form-label">Họ tên</label>
                                    <input type="text" class="form-control" id="validationDefault01" value="" name="name" placeholder="First name"
                                        required>
                                </div>
<!--                                 <div class="col-md-6"> -->
<!--                                     <label for="validationDefault02" class="form-label">Last name</label> -->
<!--                                     <input type="text" class="form-control" id="validationDefault02" value="" name="last_name" placeholder="Last name" -->
<!--                                         required> -->
<!--                                 </div> -->
                                <div class="col-md-6">
                                    <label for="validationDefault02" class="form-label">Số điện thoại</label>
                                    <input type="number" class="form-control" id="validationDefault02" value="" name="phonenumber" placeholder="Moblie No"
                                        required>
                                </div>
                                <div class="col-md-6">
                                    <label for="validationDefault02" class="form-label">Ngày sinh</label>
                                    <input type="date" class="form-control" id="validationDefault02" value="" name="dob" placeholder="Date of Birth"
                                        required>
                                </div>
                                <div class="col-md-6">
                                    <label for="validationDefault02" class="form-label">User Name</label>
                                    <input type="text" class="form-control" id="validationDefault02" value="" name="userName" placeholder="Enter Your PRN No."
                                        required>
                                </div>
                                <div class="col-md-6">
                                    <label for="validationDefault02" class="form-label">Password</label>
                                    <input type="password" class="form-control" id="validationDefault02" value="" name="password" placeholder="Password"
                                        required>
                                </div>
                                <div class="col-md-6">
                                    <label for="validationDefault02" class="form-label">Email</label>
                                    <input type="email" class="form-control" id="validationDefault02" value="" name="email" placeholder="Email"
                                        required>
                                </div>
                                 <div class="col-md-6">
                                    <label for="validationDefault02" class="form-label">Địa chỉ</label>
                                    <input type="text" class="form-control" id="validationDefault02" value="" name="address" placeholder="Enter Your PRN No."
                                        required>
                                </div>
                                 <div class="col-md-6">
                                    <label for="validationDefault04" class="form-label">Tỉnh</label>
                                    <select class="form-select" multiple  id="validationDefault04" required>
                                        <option selected disabled  value="">Hồ Chí Minh</option>
                                        <option>Hà Nội</option>
                                        <option>Cần Thơ</option>
                                        <option>Hải Phòng</option>
                                        <option>Đà Nẵng</option>
                                    </select>
                                </div> 
<!--                                   <div class="col-md-6"> -->
<!--                                     <label for="validationDefault02" class="form-label">Kinh nghiệm</label> -->
<!--                                     <input type="number" class="form-control" id="validationDefault02" value="" name="expierience" placeholder="Kinh nghiệm: " -->
<!--                                         required> -->
<!--                                 </div> -->
<!--                                 <div class="col-md-6"> -->
<!--                                     <label for="validationDefault02" class="form-label">Mức lương</label> -->
<!--                                     <input type="number" class="form-control" id="validationDefault02" value="" name="salary" placeholder="Lương: " -->
<!--                                         required> -->
<!--                                 </div> -->
<!--                                    <div class="col-md-6"> -->
<!--                                     <label for="validationDefault02" class="form-label">Loại công việc</label> -->
<!--                                     <input type="text" class="form-control" id="validationDefault02" value="" name="service" placeholder="Loại công việc: " -->
<!--                                         required> -->
<!--                                 </div> -->
<!--                                 <div class="col-md-6"> -->
<!--                                     <label for="validationDefault02" class="form-label">SSC Percentage</label> -->
<!--                                     <input type="number" class="form-control" id="validationDefault02" value="" name="qualification" placeholder="SSC Percentage" -->
<!--                                         required> -->
<!--                                 </div> -->
<!--                                 <div class="col-md-6"> -->
<!--                                     <label for="validationDefault02" class="form-label">HSC Percentage</label> -->
<!--                                     <input type="number" class="form-control" id="validationDefault02" value="" name="qualification" placeholder="HSC Percentage" -->
<!--                                         required> -->
<!--                                 </div> -->

<!--                                 <div class="col-md-6"> -->
<!--                                     <label for="validationDefault02" class="form-label">Degree Percentage</label> -->
<!--                                     <input type="number" class="form-control" id="validationDefault02" value="" name="qualification" placeholder="Degree Percentage" -->
<!--                                         required> -->
<!--                                 </div> -->
                                
                                
                                                                
                                <div class="col-12">
                                    <button class="btn btn-primary" href="#">Thoát</button>
                                </div>
                            </form>
                            <!-- End Browser Default Validation -->

                        </div>
                    </div>

                </div>
            </div>
        </section>

    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
    <footer id="footer" class="footer">
        <div class="copyright">
            &copy; Nhóm 16 <strong><span>Phầm mềm </span></strong>. cho thuê giúp việc tại nhà.
        </div>
        <div class="credits">
            <!-- Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a> -->
        </div>
    </footer><!-- End Footer -->

    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="<c:url value='/resources/admin/assets/vendor/apexcharts/apexcharts.min.js'/>"></script>
    <script src="<c:url value='/resources/admin/assets/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
    <script src="<c:url value='/resources/admin/assets/vendor/chart.js/chart.min.js'/>"></script>
    <script src="<c:url value='/resources/admin/assets/vendor/echarts/echarts.min.js'/>"></script>
    <script src="<c:url value='/resources/admin/assets/vendor/quill/quill.min.js'/>"></script>
    <script src="<c:url value='/resources/admin/assets/vendor/simple-datatables/simple-datatables.js'/>"></script>
    <script src="<c:url value='/resources/admin/assets/vendor/tinymce/tinymce.min.js'/>"></script>
    <script src="<c:url value='/resources/admin/assets/vendor/php-email-form/validate.js'/>"></script>

    <!-- Template Main JS File -->
    <script src="<c:url value='/resources/admin/assets/js/main.js'/>"></script>

</body>

</html>
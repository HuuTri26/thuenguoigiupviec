<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<base href="${pageContext.servletContext.contextPath}/">

<!-- ======= Header ======= -->
<header id="header" class="fixed-top d-flex align-items-center">
	<div class="container d-flex justify-content-between">

		<div class="logo">
			<h1>
				<a href="customer/index.htm">BookMyMaid</a>
			</h1>
			<!-- Uncomment below if you prefer to use an image logo -->
			<!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
		</div>

		<nav id="navbar" class="navbar">
			<ul>
				<li><a class="nav-link scrollto active" href="#hero">Home</a></li>
				<li><a class="nav-link scrollto" href="#about">About</a></li>
				<li><a class="nav-link scrollto" href="#services">Services</a></li>
				<li><a class="nav-link scrollto" href="customer/maidList.htm">Maid</a></li>
				<!--           <li class="dropdown"><a href="#"><span>Login</span> <i class="bi bi-chevron-down"></i></a> -->
				<!--             <ul> -->
				<!--               <li><a href="admin/adminLogin.htm">Admin</a></li> -->
				<!--               <li><a href="maid/maidLogin.htm">Maid</a></li> -->
				<!--               <li><a href="customer/customerLogin.htm">User</a></li> -->

				<!--             </ul> -->
				<!--           </li> -->
				<li><a class="nav-link scrollto" href="#contact">Contact</a></li>
				<li class="dropdown"><a href="customer/index.htm"><span>Account</span>
						<i class="bi bi-chevron-down"></i></a>
					<ul>
						<li><a href="customer/customerProfile.htm">Trang cá nhân</a></li>
						<li><a href="customer/updateCustomer.htm">Cập nhật thông
								tin</a></li>
						<li><a href="customer/customerChangePassword.htm">Đổi mật
								khẩu</a></li>
						<li><a href="customer/bookingManagement.htm">Xem danh
								sách </a></li>
						<li><a href="customer/contractManagement.htm">Xem danh
								sách đặt dịch vụ</a></li>
						<li><a href="customer/billManagement.htm">Xem danh bill</a></li>
						<li><a href="#">Log out</a></li>

					</ul></li>
			</ul>
			<i class="bi bi-list mobile-nav-toggle"></i>
		</nav>
		<!-- .navbar -->

	</div>
</header>
<!-- End Header -->
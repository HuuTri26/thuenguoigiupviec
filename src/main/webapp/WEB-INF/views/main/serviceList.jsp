<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>service List</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="<c:url value='/resources/main/assets/img/favicon.png'/>"
	rel="icon">
<link
	href="<c:url value='/resources/main/assets/img/apple-touch-icon.png'/>"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="<c:url value='/resources/main/assets/vendor/aos/aos.css'/>"
	rel="stylesheet">
<link
	href="<c:url value='/resources/main/assets/vendor/bootstrap/css/bootstrap.min.css'/>"
	rel="stylesheet">
<link
	href="<c:url value='/resources/main/assets/vendor/bootstrap-icons/bootstrap-icons.css'/>"
	rel="stylesheet">
<link
	href="<c:url value='/resources/main/assets/vendor/boxicons/css/boxicons.min.css'/>"
	rel="stylesheet">
<link
	href="<c:url value='/resources/main/assets/vendor/glightbox/css/glightbox.min.css'/>"
	rel="stylesheet">
<link
	href="<c:url value='/resources/main/assets/vendor/swiper/swiper-bundle.min.css'/>"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="<c:url value='/resources/main/assets/css/style.css'/>"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<!-- =======================================================
  * Template Name: Maxim - v4.8.0
  * Template URL: https://bootstrapmade.com/maxim-free-onepage-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body>

	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top d-flex align-items-center">
		<div class="container d-flex justify-content-between">

			<div class="logo">
				<h1>
					<a href="main.htm">BookMyMaid</a>
				</h1>
				<!-- Uncomment below if you prefer to use an image logo -->
				<!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
			</div>

			<!-- 			<nav id="navbar" class="navbar"> -->
			<!-- 				<ul> -->
			<!-- 					<li><a class="nav-link scrollto active" href="#hero">Home</a></li> -->
			<!-- 					<li><a class="nav-link scrollto" href="#about">About</a></li> -->
			<!-- 					<li><a class="nav-link scrollto" href="#services">Services</a></li> -->

			<!-- 					<li class="dropdown"><a href="#"><span>Login</span> <i -->
			<!-- 							class="bi bi-chevron-down"></i></a> -->
			<!-- 						<ul> -->
			<!-- 							<li><a href="admin/adminLogin.htm">Admin</a></li> -->
			<!-- 							<li><a href="maid/maidLogin.htm">Maid</a></li> -->
			<!-- 							<li><a href="customer/customerLogin.htm">User</a></li> -->

			<!-- 						</ul></li> -->
			<!-- 					<li><a class="nav-link scrollto" href="#contact">Contact</a></li> -->
			<!-- 					             <li class="dropdown"><a href="#"><span>Profile</span> <i class="bi bi-chevron-down"></i></a> -->
			<!-- 					               <ul> -->
			<!-- 					              <li><a href="profile.htm">Trang cá nhân</a></li> -->
			<!-- 					              <li><a href="index.htm">Log out</a></li> -->

			<!-- 					            </ul> -->
			<!-- 					          </li> -->
			<!-- 				</ul> -->
			<!-- 				<i class="bi bi-list mobile-nav-toggle"></i> -->
			<!-- 			</nav> -->
			<!-- .navbar -->

		</div>
	</header>
	<!-- End Header -->

	<!-- ======= Hero Section ======= -->
	<main id="main" style="background-color: gray;">
		<!-- 		<div style="margin-top: 100px;"> -->
		<%-- 			<form action="/services/search" method="GET"> --%>
		<!-- 				<div class="col-md-4"> -->
		<!-- 					<label for="filterBy">Lọc theo thuộc tính:</label> <select -->
		<!-- 						id="filterBy" name="filterBy" class="form-select"> -->
		<!-- 						<option value="all">Tất cả</option> -->
		<!-- 						<option value="name">Tên</option> -->
		<!-- 						<option value="category">Loại</option> -->
		<!-- 						<option value="time">Thời gian gói</option> -->
		<!-- 						Thêm các option khác nếu cần -->
		<!-- 					</select> -->
		<!-- 				</div> -->
		<!-- 				<div class="col-md-4"> -->
		<!-- 					<label for="searchInput">Nhập thông tin cần lọc:</label> <input -->
		<!-- 						type="text" id="searchInput" name="keyword" class="form-control" -->
		<!-- 						placeholder="Nhập thông tin..."> -->
		<!-- 				</div> -->
		<!-- 				<div class="col-md-2"> -->
		<!-- 					<label></label> -->
		<!-- 					<button type="submit" class="btn btn-primary">Search</button> -->
		<!-- 				</div> -->
		<%-- 			</form> --%>
		<!-- 		</div> -->
		<div class="container " style="margin-top: 70px;">
			<div class="row">
				<div class="col-md-4">
					<label for="filterBy">Lọc theo thuộc tính:</label> <select
						id="filterBy" class="form-select">
						<option value="all">Tất cả</option>
						<option value="serviceName">Tên gói</option>
						<option value="serviceTime">Thời gian gói</option>
						<option value="serviceQuantity">Số lượng Maid</option>
						<!-- Thêm các option khác nếu cần -->
					</select>
				</div>
				<div class="col-md-4">
					<label for="searchInput">Nhập thông tin cần lọc:</label> <input
						type="text" id="searchInput" class="form-control"
						placeholder="Nhập thông tin...">
				</div>
				<div class="col-md-2">
					<label></label>
					<button id="searchButton" class="btn btn-primary">Search</button>
				</div>
			</div>
		</div>
		<div
			class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-3 p-5 m-3 mt-10 serviceList">

			<c:forEach var="service" items="${serviceList }">
				<div class="col serviceInfor">
					<div class="card">
						<img
							src="https://images.squarespace-cdn.com/content/v1/5692fb8a5a566828b96c5bf0/1453150819608-Z0SGDXSAFJGZDY5RHERW/hire-maid-cleaning-lady-toronto-north-york.jpg?format=1500w"
							class="card-img-top" alt="Hollywood Sign on The Hill">
						<div class="card-body">
							<a href="serviceDetail/${service.id }.htm" class="card-title"
								style="color: black; font-size: 24px; font-weight: bold; cursor: pointer;"
								id="serviceName">${service.name }</a>
							<div class="text-warning mb-1 me-2">
								<span class="ms-1"> 4.5 </span><i class="fa fa-star"></i>
							</div>
							<p class="card-text" id="categoryName">Loại:
								${service.category.name }</p>
							<p class="card-text" id="serviceTime">Thời gian gói:
								${service.time }</p>
							<p class="card-text" id="serviceQuantity">Số lượng:
								${service.maidQuantity }</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<div class="pagination pb-4"
			style="display: flex; justify-content: center; align-items: center; vertical-align: middle;">
			<button class="prev-btn">Trước</button>
			<span class="page-num"
				style="color: white; padding: 3px; margin: 2px">1</span>
			<button class="next-btn">Tiếp</button>
		</div>
	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer">
		<div class="footer-top">
			<div class="container">
				<div class="row">

					<div class="col-lg-3 col-md-6">
						<div class="footer-info">
							<h3>BookMyMaid</h3>
							<p>
							<p>
								A-123 MG Road, <br> Pune, PU 535022 <br> <strong>Phone:</strong>
								+91 9988452631<br> <strong>Email:</strong>
								bookmymaid@gmail.com<br>
							</p>

						</div>
					</div>

					<div class="col-lg-2 col-md-6 footer-links">
						<h4>Useful Links</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">About
									us</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Terms
									of service</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Privacy
									policy</a></li>
						</ul>
					</div>

					<div class="col-lg-3 col-md-6 footer-links">
						<h4>Design by</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a href="#">AkshayKumar
									Girmal</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Atharva
									Bondre</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Tejas
									Jawale</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Mayur
									Nigade</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Pankaj
									Desai</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Ruchita
									Patil</a></li>
						</ul>
					</div>

					<div class="col-lg-3 col-md-6 footer-links">
						<h3>BookMyMaid</h3>
						<p>A web-based application that provides facility to book maid
							online. It provides a common platform where user can book maid
							according to need and maid can get a job assigned.</p>
						<h4>Our Social Networks</h4>
						<div class="social-links mt-3">
							<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a> <a
								href="#" class="facebook"><i class="bx bxl-facebook"></i></a> <a
								href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
							<a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
							<a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
						</div>
					</div>

				</div>
			</div>
		</div>

		<div class="container">
			<div class="copyright">
				&copy; Đồ án <strong><span>Nhóm 16</span></strong> Maid Hiring
			</div>
			<div class="credits">
				<!-- All the links in the footer should remain intact. -->
				<!-- You can delete the links only if you purchased the pro version. -->
				<!-- Licensing information: https://bootstrapmade.com/license/ -->
				<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/maxim-free-onepage-bootstrap-theme/ -->
				Designed by <a href="https://bootstrapmade.com/">Developers</a>
			</div>
		</div>
	</footer>
	<!-- End Footer -->

	<script>
  const originalCards = Array.from(document.querySelectorAll('.serviceInfor'));
  let filteredCards = originalCards.slice(); // Sao chép danh sách card ban đầu

  const prevBtn = document.querySelector('.prev-btn');
  const nextBtn = document.querySelector('.next-btn');
  const pageNumSpan = document.querySelector('.page-num');

  let currentPage = 1;
  const cardPerPage = 3;

  document.getElementById('searchButton').addEventListener('click', function() {
    const filterBy = document.getElementById('filterBy').value; // Lấy giá trị thuộc tính được chọn từ combo box
    const searchInput = document.getElementById('searchInput').value.trim().toLowerCase(); // Lấy giá trị đã nhập từ input và chuyển thành chữ thường

    // Lọc danh sách card dựa trên từ khóa tìm kiếm và thuộc tính đã chọn
    filteredCards = originalCards.filter(card => {
      const serviceName = card.querySelector('#serviceName').innerText.toLowerCase();
      const serviceTime = card.querySelector('#serviceTime').innerText.toLowerCase();
      const serviceQuantity = card.querySelector('#serviceQuantity').innerText.toLowerCase();

      if (filterBy === 'all' && (serviceName.includes(searchInput) || serviceTime.includes(searchInput) || serviceQuantity.includes(searchInput))) {
        return true;
      } else if ((filterBy === 'serviceName' && serviceName.includes(searchInput)) || (filterBy === 'serviceTime' && serviceTime.includes(searchInput)) || (filterBy === 'serviceQuantity' && serviceQuantity.includes(searchInput))) {
        return true;
      } else {
        return false;
      }
    });

    // Hiển thị danh sách card đã lọc và cập nhật phân trang
    displayCards(filteredCards);
    updatePagination(filteredCards);
  });

  // Xử lý khi input trống hoặc trang được làm mới
  window.addEventListener('load', function() {
    // Hiển thị danh sách card ban đầu và cập nhật phân trang
    displayCards(originalCards);
    updatePagination(originalCards);
  });

  function updatePagination(cards) {
    const totalPages = Math.ceil(cards.length / cardPerPage);
    pageNumSpan.textContent = currentPage + ' / ' + totalPages;
  }

  function displayCards(cards) {
    const cardList = document.querySelector('.serviceList');
    // Xóa toàn bộ card hiện tại trước khi đổ danh sách card mới
    cardList.innerHTML = '';

    const startIndex = (currentPage - 1) * cardPerPage;
    const endIndex = startIndex + cardPerPage;

    cards.slice(startIndex, endIndex).forEach(function(card) {
      cardList.appendChild(card);
    });
  }

  prevBtn.addEventListener('click', () => {
    if (currentPage > 1) {
      currentPage--;
      displayCards(filteredCards);
      updatePagination(filteredCards);
    }
  });

  nextBtn.addEventListener('click', () => {
    const totalPages = Math.ceil(filteredCards.length / cardPerPage);
    if (currentPage < totalPages) {
      currentPage++;
      displayCards(filteredCards);
      updatePagination(filteredCards);
    }
  });
</script>

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="<c:url value='/resources/main/assets/vendor/aos/aos.js'/>"></script>
	<script
		src="<c:url value='/resources/main/assets/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
	<script
		src="<c:url value='/resources/main/assets/vendor/glightbox/js/glightbox.min.js'/>"></script>
	<script
		src="<c:url value='/resources/main/assets/vendor/isotope-layout/isotope.pkgd.min.js'/>"></script>
	<script
		src="<c:url value='/resources/main/assets/vendor/swiper/swiper-bundle.min.js'/>"></script>
	<script
		src="<c:url value='/resources/main/assets/vendor/php-email-form/validate.js'/>"></script>

	<!-- Template Main JS File -->
	<script src="<c:url value='/resources/main/assets/js/main.js'/>"></script>

</body>

</html>
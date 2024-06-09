<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Maid List</title>
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

<!-- =======================================================
  * Template Name: Maxim - v4.8.0
  * Template URL: https://bootstrapmade.com/maxim-free-onepage-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body>

<%-- 	<%@include file="/WEB-INF/views/customer/include/header.jsp"%> --%>
	<header id="header" class="fixed-top d-flex align-items-center">
		<div class="container d-flex justify-content-between">

			<div class="logo">
				<h1>
					<a href="index.htm">BookMyMaid</a>
				</h1>
				<!-- Uncomment below if you prefer to use an image logo -->
				<!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
			</div>

		</div>
	</header>
	<main id="main" style="background-color: gray;" >
		<div class="container " style="margin-top: 70px;"  >
			<div class="row">
				<div class="col-md-4">
					<label for="filterBy">Lọc theo thuộc tính:</label> <select
						id="filterBy" class="form-select">
						<option value="all">Tất cả</option>
						<option value="name">Tên</option>
						<option value="exp">Kinh nghiệm</option>
						<option value="address">Địa điểm</option>
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
			class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-3 p-5 m-3 mt-10 cardList">
			<div class="col cardInfor">
				<div class="card">
					<img
						src="https://giupviecnhatanbinh.vn/hoangnhu/upload/images/t%C3%ACm%20ng%C6%B0%E1%BB%9Di%20gi%C3%BAp%20vi%E1%BB%87c%20nh%C3%A0%20t%E1%BA%A1i%20qu%E1%BA%ADn%206%20th%C3%A0nh%20ph%E1%BB%91%20h%E1%BB%93%20ch%C3%AD%20minh.jpg"
						class="card-img-top" alt="Hollywood Sign on The Hill">
					<div class="card-body">
						<a href="maidDetail.htm" class="card-title" id="name"
							style="color: black; font-size: 24px; font-weight: bold; cursor: pointer;">Hữu
							Trí</a>
						<p class="card-text" id="exp">Kinh nghiệm: 2 năm</p>
						<p class="card-text" id="address">Làm việc tại: TP Hồ Chí Minh</p>
						<p class="card-text" id="rating">Đánh giá: 5 sao</p>
					</div>
				</div>
			</div>

			<div class="col cardInfor">
				<div class="card">
					<img
						src="https://giupviecnhatanbinh.vn/hoangnhu/upload/images/t%C3%ACm%20ng%C6%B0%E1%BB%9Di%20gi%C3%BAp%20vi%E1%BB%87c%20nh%C3%A0%20t%E1%BA%A1i%20qu%E1%BA%ADn%206%20th%C3%A0nh%20ph%E1%BB%91%20h%E1%BB%93%20ch%C3%AD%20minh.jpg"
						class="card-img-top" alt="Hollywood Sign on The Hill">
					<div class="card-body">
						<a href="#" class="card-title" id="name"
							style="color: black; font-size: 24px; font-weight: bold; cursor: pointer;">Kaka
							Trí</a>
						<p class="card-text" id="exp">Kinh nghiệm: 1 năm</p>
						<p class="card-text" id="address">Làm việc tại: TP Hồ Chí Minh</p>
						<p class="card-text" id="rating">Đánh giá: 5 sao</p>
					</div>
				</div>
			</div>

			<div class="col cardInfor">
				<div class="card">
					<img
						src="https://giupviecnhatanbinh.vn/hoangnhu/upload/images/t%C3%ACm%20ng%C6%B0%E1%BB%9Di%20gi%C3%BAp%20vi%E1%BB%87c%20nh%C3%A0%20t%E1%BA%A1i%20qu%E1%BA%ADn%206%20th%C3%A0nh%20ph%E1%BB%91%20h%E1%BB%93%20ch%C3%AD%20minh.jpg"
						class="card-img-top" alt="Hollywood Sign on The Hill">
					<div class="card-body">
						<a href="maidDetail.htm" class="card-title" id="name"
							style="color: black; font-size: 24px; font-weight: bold; cursor: pointer;">Hữu
							Trí</a>
						<p class="card-text" id="exp">Kinh nghiệm: 2 năm</p>
						<p class="card-text" id="address">Làm việc tại: TP Hồ Chí Minh</p>
						<p class="card-text" id="rating">Đánh giá: 5 sao</p>
					</div>
				</div>
			</div>
			<div class="col cardInfor">
				<div class="card">
					<img
						src="https://giupviecnhatanbinh.vn/hoangnhu/upload/images/t%C3%ACm%20ng%C6%B0%E1%BB%9Di%20gi%C3%BAp%20vi%E1%BB%87c%20nh%C3%A0%20t%E1%BA%A1i%20qu%E1%BA%ADn%206%20th%C3%A0nh%20ph%E1%BB%91%20h%E1%BB%93%20ch%C3%AD%20minh.jpg"
						class="card-img-top" alt="Hollywood Sign on The Hill">
					<div class="card-body">
						<a href="maidDetail.htm" class="card-title" id="name"
							style="color: black; font-size: 24px; font-weight: bold; cursor: pointer;">Hữu
							Trí</a>
						<p class="card-text" id="exp">Kinh nghiệm: 2 năm</p>
						<p class="card-text" id="address">Làm việc tại: TP Hồ Chí Minh</p>
						<p class="card-text" id="rating">Đánh giá: 5 sao</p>
					</div>
				</div>
			</div>
			<div class="col cardInfor">
				<div class="card">
					<img
						src="https://giupviecnhatanbinh.vn/hoangnhu/upload/images/t%C3%ACm%20ng%C6%B0%E1%BB%9Di%20gi%C3%BAp%20vi%E1%BB%87c%20nh%C3%A0%20t%E1%BA%A1i%20qu%E1%BA%ADn%206%20th%C3%A0nh%20ph%E1%BB%91%20h%E1%BB%93%20ch%C3%AD%20minh.jpg"
						class="card-img-top" alt="Hollywood Sign on The Hill">
					<div class="card-body">
						<a href="maidDetail.htm" class="card-title" id="name"
							style="color: black; font-size: 24px; font-weight: bold; cursor: pointer;">Hữu
							Trí</a>
						<p class="card-text" id="exp">Kinh nghiệm: 2 năm</p>
						<p class="card-text" id="address">Làm việc tại: TP Hồ Chí Minh</p>
						<p class="card-text" id="rating">Đánh giá: 5 sao</p>
					</div>
				</div>
			</div>
			<div class="col cardInfor">
				<div class="card">
					<img
						src="https://giupviecnhatanbinh.vn/hoangnhu/upload/images/t%C3%ACm%20ng%C6%B0%E1%BB%9Di%20gi%C3%BAp%20vi%E1%BB%87c%20nh%C3%A0%20t%E1%BA%A1i%20qu%E1%BA%ADn%206%20th%C3%A0nh%20ph%E1%BB%91%20h%E1%BB%93%20ch%C3%AD%20minh.jpg"
						class="card-img-top" alt="Hollywood Sign on The Hill">
					<div class="card-body">
						<a href="maidDetail.htm" class="card-title" id="name"
							style="color: black; font-size: 24px; font-weight: bold; cursor: pointer;">Huyy
							Lê</a>
						<p class="card-text" id="exp">Kinh nghiệm: 1 năm</p>
						<p class="card-text" id="address">Làm việc tại: TP Hà Nội</p>
						<p class="card-text" id="rating">Đánh giá: 1 sao</p>
					</div>
				</div>
			</div>
			<div class="col cardInfor">
				<div class="card">
					<img
						src="https://giupviecnhatanbinh.vn/hoangnhu/upload/images/t%C3%ACm%20ng%C6%B0%E1%BB%9Di%20gi%C3%BAp%20vi%E1%BB%87c%20nh%C3%A0%20t%E1%BA%A1i%20qu%E1%BA%ADn%206%20th%C3%A0nh%20ph%E1%BB%91%20h%E1%BB%93%20ch%C3%AD%20minh.jpg"
						class="card-img-top" alt="Hollywood Sign on The Hill">
					<div class="card-body">
						<a href="maidDetail.htm" class="card-title" id="name"
							style="color: black; font-size: 24px; font-weight: bold; cursor: pointer;">Hữu
							Trí</a>
						<p class="card-text" id="exp">Kinh nghiệm: 2 năm</p>
						<p class="card-text" id="address">Làm việc tại: TP Hồ Chí Minh</p>
						<p class="card-text" id="rating">Đánh giá: 5 sao</p>
					</div>
				</div>
			</div>
			<div class="col cardInfor">
				<div class="card">
					<img
						src="https://giupviecnhatanbinh.vn/hoangnhu/upload/images/t%C3%ACm%20ng%C6%B0%E1%BB%9Di%20gi%C3%BAp%20vi%E1%BB%87c%20nh%C3%A0%20t%E1%BA%A1i%20qu%E1%BA%ADn%206%20th%C3%A0nh%20ph%E1%BB%91%20h%E1%BB%93%20ch%C3%AD%20minh.jpg"
						class="card-img-top" alt="Hollywood Sign on The Hill">
					<div class="card-body">
						<a href="#" class="card-title" id="name"
							style="color: black; font-size: 24px; font-weight: bold; cursor: pointer;">Kaka
							Trí</a>
						<p class="card-text" id="exp">Kinh nghiệm: 1 năm</p>
						<p class="card-text" id="address">Làm việc tại: TP Hồ Chí Minh</p>
						<p class="card-text" id="rating">Đánh giá: 5 sao</p>
					</div>
				</div>
			</div>
		</div>
		<div class="pagination pb-4"
			style="display: flex; justify-content: center; align-items: center; vertical-align: middle;">
			<button class="prev-btn">Trước</button>
			<span class="page-num"
				style="color: white; padding: 3px; margin: 2px">1</span>
			<button class="next-btn">Tiếp</button>
		</div>
	</main>
	<%@include file="/WEB-INF/views/customer/include/footer.jsp"%>

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
<script>
  const originalCards = Array.from(document.querySelectorAll('.cardInfor'));
  let filteredCards = originalCards.slice(); // Sao chép danh sách card ban đầu

  const paginationDiv = document.querySelector('.pagination');
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
      const cardName = card.querySelector('#name').innerText.toLowerCase();
      const cardExp = card.querySelector('#exp').innerText.toLowerCase();
      const cardAddress = card.querySelector('#address').innerText.toLowerCase();

      if (filterBy === 'all' && (cardName.includes(searchInput) || cardExp.includes(searchInput) || cardAddress.includes(searchInput))) {
        return true;
      } else if ((filterBy === 'name' && cardName.includes(searchInput)) || (filterBy === 'exp' && cardExp.includes(searchInput)) || (filterBy === 'address' && cardAddress.includes(searchInput))) {
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
    const cardList = document.querySelector('.cardList');
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

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

<!-- =======================================================
  * Template Name: Maxim - v4.8.0
  * Template URL: https://bootstrapmade.com/maxim-free-onepage-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body>

	<%@include file="/WEB-INF/views/customer/include/header.jsp"%>

	<main id="main" style="background-color: gray;">
		<div
			class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-3 p-5 m-3 mt-10">

			<c:forEach var="service" items="${serviceList }">
				<div class="col">
					<div class="card">
						<img
							src="https://images.squarespace-cdn.com/content/v1/5692fb8a5a566828b96c5bf0/1453150819608-Z0SGDXSAFJGZDY5RHERW/hire-maid-cleaning-lady-toronto-north-york.jpg?format=1500w"
							class="card-img-top" alt="Hollywood Sign on The Hill">
						<div class="card-body">
							<a href="serviceDetail/${service.id }.htm" class="card-title"
								style="color: black; font-size: 24px; font-weight: bold; cursor: pointer;">${service.name }</a>
							<p class="card-text">Loại: ${service.category.name }</p>
							<p class="card-text">Thời gian gói: ${service.time }</p>
							<p class="card-text">Số lượng: ${service.maidQuantity }</p>
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
	const cards = document.querySelectorAll('.col');
	const paginationDiv = document.querySelector('.pagination');
	const prevBtn = document.querySelector('.prev-btn');
	const nextBtn = document.querySelector('.next-btn');
	const pageNumSpan = document.querySelector('.page-num');

	let currentPage = 1;
	const cardPerPage = 6;

	function displayCards() {
	  const startIndex = (currentPage - 1) * cardPerPage;
	  const endIndex = startIndex + cardPerPage;

	  cards.forEach((card, index) => {
	    if (index >= startIndex && index < endIndex) {
	      card.style.display = 'block';
	    } else {
	      card.style.display = 'none';
	    }
	  });

	  pageNumSpan.textContent = currentPage;
	}

	prevBtn.addEventListener('click', () => {
	  if (currentPage > 1) {
	    currentPage--;
	    displayCards();
	  }
	});

	nextBtn.addEventListener('click', () => {
	  if (currentPage * cardPerPage < cards.length) {
	    currentPage++;
	    displayCards();
	  }
	});

	displayCards();
	</script>
</body>
</html>
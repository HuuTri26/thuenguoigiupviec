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

<!-- Modal -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">


<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">

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
<style>
.icon-hover:hover {
	border-color: #3b71ca !important;
	background-color: white !important;
	color: #3b71ca !important;
}

.icon-hover:hover i {
	color: #3b71ca !important;
}
</style>
<style media="screen">
.form-control, .form-select {
	border: 0;
}

.form-control:focus, .form-select:focus {
	-webkit-box-shadow: none;
	box-shadow: none;
}

.bg-form {
	background-color: #383434;
}

.bg-button-submit {
	background-color: #282828;
}

.overlay {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5);
	z-index: 999;
}

.container.mt-3.pt-3 {
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	z-index: 1000;
}

.close-btn {
  cursor: pointer;
}

.close-btn i {
  font-size: 24px;
}
</style>
</head>
<body>

	<%@include file="/WEB-INF/views/customer/include/header.jsp"%>

	<main id="main">
		<!-- 		<header> -->
		<!-- 			<!-- Jumbotron -->
		-->
		<!-- 			<div class="p-3 text-center bg-white border-bottom"> -->
		<!-- 				<div class="container"> -->
		<!-- 					<div class="row gy-3"> -->
		<!-- 						Left elements -->
		<!-- 						<div class="col-lg-2 col-sm-4 col-4"> -->
		<!-- 							<a href="https://mdbootstrap.com/" target="_blank" -->
		<!-- 								class="float-start"> <img -->
		<!-- 								src="https://images.squarespace-cdn.com/content/v1/5692fb8a5a566828b96c5bf0/1453150819608-Z0SGDXSAFJGZDY5RHERW/hire-maid-cleaning-lady-toronto-north-york.jpg?format=1500w" -->
		<!-- 								height="35" /> -->
		<!-- 							</a> -->
		<!-- 						</div> -->
		<!-- 						Left elements -->

		<!-- 						Center elements -->
		<!-- 						<div class="order-lg-last col-lg-5 col-sm-8 col-8"> -->
		<!-- 							<div class="d-flex float-end"> -->
		<!-- 								<a -->
		<!-- 									href="https://github.com/mdbootstrap/bootstrap-material-design" -->
		<!-- 									class="me-1 border rounded py-1 px-3 nav-link d-flex align-items-center" -->
		<!-- 									target="_blank"> <i class="fas fa-user-alt m-1 me-md-2"></i> -->
		<!-- 									<p class="d-none d-md-block mb-0">Sign in</p> -->
		<!-- 								</a> <a -->
		<!-- 									href="https://github.com/mdbootstrap/bootstrap-material-design" -->
		<!-- 									class="me-1 border rounded py-1 px-3 nav-link d-flex align-items-center" -->
		<!-- 									target="_blank"> <i class="fas fa-heart m-1 me-md-2"></i> -->
		<!-- 									<p class="d-none d-md-block mb-0">Wishlist</p> -->
		<!-- 								</a> <a -->
		<!-- 									href="https://github.com/mdbootstrap/bootstrap-material-design" -->
		<!-- 									class="border rounded py-1 px-3 nav-link d-flex align-items-center" -->
		<!-- 									target="_blank"> <i -->
		<!-- 									class="fas fa-shopping-cart m-1 me-md-2"></i> -->
		<!-- 									<p class="d-none d-md-block mb-0">My cart</p> -->
		<!-- 								</a> -->
		<!-- 							</div> -->
		<!-- 						</div> -->
		<!-- 						Center elements -->

		<!-- 						Right elements -->
		<!-- 						<div class="col-lg-5 col-md-12 col-12"> -->
		<!-- 							<div class="input-group float-center"> -->
		<!-- 								<div class="form-outline"> -->
		<!-- 									<input type="search" id="form1" class="form-control" /> <label -->
		<!-- 										class="form-label" for="form1">Search</label> -->
		<!-- 								</div> -->
		<!-- 								<button type="button" class="btn btn-primary shadow-0"> -->
		<!-- 									<i class="fas fa-search"></i> -->
		<!-- 								</button> -->
		<!-- 							</div> -->
		<!-- 						</div> -->
		<!-- 						Right elements -->
		<!-- 					</div> -->
		<!-- 				</div> -->
		<!-- 			</div> -->
		<!-- 			<!-- Jumbotron -->
		-->

		<!-- 			<!-- Heading -->
		-->
		<!-- 			<div class="bg-primary"> -->
		<!-- 				<div class="container py-4"> -->
		<!-- 					Breadcrumb -->
		<!-- 					<nav class="d-flex"> -->
		<!-- 						<h6 class="mb-0"> -->
		<!-- 							<a href="" class="text-white-50">Home</a> <span -->
		<!-- 								class="text-white-50 mx-2"> > </span> <a href="" -->
		<!-- 								class="text-white-50">Library</a> <span -->
		<!-- 								class="text-white-50 mx-2"> > </span> <a href="" -->
		<!-- 								class="text-white"><u>Data</u></a> -->
		<!-- 						</h6> -->
		<!-- 					</nav> -->
		<!-- 					Breadcrumb -->
		<!-- 				</div> -->
		<!-- 			</div> -->
		<!-- 			<!-- Heading -->
		-->
		<!-- 		</header> -->

		<!-- content -->
		<section class="py-5">
			<div class="container">
				<div class="row gx-5">
					<aside class="col-lg-6">
						<div class="border rounded-4 mb-3 d-flex justify-content-center">
							<a data-fslightbox="mygalley" class="rounded-4" target="_blank"
								data-type="image"
								href="https://mdbcdn.b-cdn.net/img/bootstrap-ecommerce/items/detail1/big.webp">
								<img style="max-width: 100%; max-height: 100vh; margin: auto;"
								class="rounded-4 fit"
								src="https://images.squarespace-cdn.com/content/v1/5692fb8a5a566828b96c5bf0/1453150819608-Z0SGDXSAFJGZDY5RHERW/hire-maid-cleaning-lady-toronto-north-york.jpg?format=1500w" />
							</a>
						</div>
						<div class="d-flex justify-content-center mb-3">
							<a data-fslightbox="mygalley" class="border mx-1 rounded-2"
								target="_blank" data-type="image"
								href="https://images.squarespace-cdn.com/content/v1/5692fb8a5a566828b96c5bf0/1453150819608-Z0SGDXSAFJGZDY5RHERW/hire-maid-cleaning-lady-toronto-north-york.jpg?format=1500w"
								class="item-thumb"> <img width="60" height="60"
								class="rounded-2"
								src="https://images.squarespace-cdn.com/content/v1/5692fb8a5a566828b96c5bf0/1453150819608-Z0SGDXSAFJGZDY5RHERW/hire-maid-cleaning-lady-toronto-north-york.jpg?format=1500w" />
							</a> <a data-fslightbox="mygalley" class="border mx-1 rounded-2"
								target="_blank" data-type="image"
								href="https://images.squarespace-cdn.com/content/v1/5692fb8a5a566828b96c5bf0/1453150819608-Z0SGDXSAFJGZDY5RHERW/hire-maid-cleaning-lady-toronto-north-york.jpg?format=1500w"
								class="item-thumb"> <img width="60" height="60"
								class="rounded-2"
								src="https://images.squarespace-cdn.com/content/v1/5692fb8a5a566828b96c5bf0/1453150819608-Z0SGDXSAFJGZDY5RHERW/hire-maid-cleaning-lady-toronto-north-york.jpg?format=1500w" />
							</a> <a data-fslightbox="mygalley" class="border mx-1 rounded-2"
								target="_blank" data-type="image"
								href="https://images.squarespace-cdn.com/content/v1/5692fb8a5a566828b96c5bf0/1453150819608-Z0SGDXSAFJGZDY5RHERW/hire-maid-cleaning-lady-toronto-north-york.jpg?format=1500w"
								class="item-thumb"> <img width="60" height="60"
								class="rounded-2"
								src="https://images.squarespace-cdn.com/content/v1/5692fb8a5a566828b96c5bf0/1453150819608-Z0SGDXSAFJGZDY5RHERW/hire-maid-cleaning-lady-toronto-north-york.jpg?format=1500w" />
							</a>
						</div>
						<!-- thumbs-wrap.// -->
						<!-- gallery-wrap .end// -->
					</aside>
					<main class="col-lg-6">
						<div class="ps-lg-3">
							<h4 class="title text-dark">
								Gói dọn nhà 2H <br /> Casual Hoodie
							</h4>
							<div class="d-flex flex-row my-3">
								<div class="text-warning mb-1 me-2">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fas fa-star-half-alt"></i> <span class="ms-1">
										4.5 </span>
								</div>
								<span class="text-muted"><i
									class="fas fa-shopping-basket fa-sm mx-1"></i>154 orders</span> <span
									class="text-success ms-2">Đang hoạt động</span>
							</div>

							<div class="mb-3">
								<span class="h5">150.000 VNĐ</span> <span class="text-muted">/gói</span>
							</div>

							<p>Dịch vụ dọn nhà số 1 Thế giới</p>

							<div class="row">
								<dt class="col-3">Tên:</dt>
								<dd class="col-9">Gói dọn nhà 2h</dd>

								<dt class="col-3">Loại</dt>
								<dd class="col-9">Dọn nhà</dd>

								<dt class="col-3">Số giờ</dt>
								<dd class="col-9">2 h</dd>

								<dt class="col-3">Số lượng người giúp việc</dt>
								<dd class="col-9">2</dd>
							</div>

							<hr />

							<div class="row mb-4">
								<div class="col-md-4 col-6">
									<label class="mb-2">Size</label> <select
										class="form-select border border-secondary"
										style="height: 35px;">
										<option>Small</option>
										<option>Medium</option>
										<option>Large</option>
									</select>
								</div>
								<!-- col.// -->
								<div class="col-md-4 col-6 mb-3">
									<label class="mb-2 d-block">Quantity</label>
									<div class="input-group mb-3" style="width: 170px;">
										<button class="btn btn-white border border-secondary px-3"
											type="button" id="button-addon1" data-mdb-ripple-color="dark">
											<i class="fas fa-minus"></i>
										</button>
										<input type="text"
											class="form-control text-center border border-secondary"
											placeholder="14" aria-label="Example text with button addon"
											aria-describedby="button-addon1" />
										<button class="btn btn-white border border-secondary px-3"
											type="button" id="button-addon2" data-mdb-ripple-color="dark">
											<i class="fas fa-plus"></i>
										</button>
									</div>
								</div>
							</div>
							<a href="#" class="btn btn-warning shadow-0"> Đặt ngay </a> 
<!-- 							<a -->
<!-- 								href="#" class="btn btn-primary shadow-0"> <i -->
<!-- 								class="me-1 fa fa-shopping-basket"></i> Add to cart -->
<!-- 							</a> <a href="#" -->
<!-- 								class="btn btn-light border border-secondary py-2 icon-hover px-3"> -->
<!-- 								<i class="me-1 fa fa-heart fa-lg"></i> Save -->
<!-- 							</a> -->
						</div>
					</main>
				</div>
			</div>
		</section>
		<!-- content -->

		<!-- 		<section class="bg-light border-top py-4"> -->
		<!-- 			<div class="container"> -->
		<!-- 				<div class="row gx-4"> -->
		<!-- 					<div class="col-lg-8 mb-4"> -->
		<!-- 						<div class="border rounded-2 px-3 py-2 bg-white"> -->
		<!-- 							Pills navs -->
		<!-- 							<ul class="nav nav-pills nav-justified mb-3" id="ex1" -->
		<!-- 								role="tablist"> -->
		<!-- 								<li class="nav-item d-flex" role="presentation"><a -->
		<!-- 									class="nav-link d-flex align-items-center justify-content-center w-100 active" -->
		<!-- 									id="ex1-tab-1" data-mdb-toggle="pill" href="#ex1-pills-1" -->
		<!-- 									role="tab" aria-controls="ex1-pills-1" aria-selected="true">Specification</a> -->
		<!-- 								</li> -->
		<!-- 								<li class="nav-item d-flex" role="presentation"><a -->
		<!-- 									class="nav-link d-flex align-items-center justify-content-center w-100" -->
		<!-- 									id="ex1-tab-2" data-mdb-toggle="pill" href="#ex1-pills-2" -->
		<!-- 									role="tab" aria-controls="ex1-pills-2" aria-selected="false">Warranty -->
		<!-- 										info</a></li> -->
		<!-- 								<li class="nav-item d-flex" role="presentation"><a -->
		<!-- 									class="nav-link d-flex align-items-center justify-content-center w-100" -->
		<!-- 									id="ex1-tab-3" data-mdb-toggle="pill" href="#ex1-pills-3" -->
		<!-- 									role="tab" aria-controls="ex1-pills-3" aria-selected="false">Shipping -->
		<!-- 										info</a></li> -->
		<!-- 								<li class="nav-item d-flex" role="presentation"><a -->
		<!-- 									class="nav-link d-flex align-items-center justify-content-center w-100" -->
		<!-- 									id="ex1-tab-4" data-mdb-toggle="pill" href="#ex1-pills-4" -->
		<!-- 									role="tab" aria-controls="ex1-pills-4" aria-selected="false">Seller -->
		<!-- 										profile</a></li> -->
		<!-- 							</ul> -->
		<!-- 							Pills navs -->

		<!-- 							Pills content -->
		<!-- 							<div class="tab-content" id="ex1-content"> -->
		<!-- 								<div class="tab-pane fade show active" id="ex1-pills-1" -->
		<!-- 									role="tabpanel" aria-labelledby="ex1-tab-1"> -->
		<!-- 									<p>With supporting text below as a natural lead-in to -->
		<!-- 										additional content. Lorem ipsum dolor sit amet, consectetur -->
		<!-- 										adipisicing elit, sed do eiusmod tempor incididunt ut labore -->
		<!-- 										et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud -->
		<!-- 										exercitation ullamco laboris nisi ut aliquip ex ea commodo -->
		<!-- 										consequat. Duis aute irure dolor in reprehenderit in voluptate -->
		<!-- 										velit esse cillum dolore eu fugiat nulla pariatur.</p> -->
		<!-- 									<div class="row mb-2"> -->
		<!-- 										<div class="col-12 col-md-6"> -->
		<!-- 											<ul class="list-unstyled mb-0"> -->
		<!-- 												<li><i class="fas fa-check text-success me-2"></i>Some -->
		<!-- 													great feature name here</li> -->
		<!-- 												<li><i class="fas fa-check text-success me-2"></i>Lorem -->
		<!-- 													ipsum dolor sit amet, consectetur</li> -->
		<!-- 												<li><i class="fas fa-check text-success me-2"></i>Duis -->
		<!-- 													aute irure dolor in reprehenderit</li> -->
		<!-- 												<li><i class="fas fa-check text-success me-2"></i>Optical -->
		<!-- 													heart sensor</li> -->
		<!-- 											</ul> -->
		<!-- 										</div> -->
		<!-- 										<div class="col-12 col-md-6 mb-0"> -->
		<!-- 											<ul class="list-unstyled"> -->
		<!-- 												<li><i class="fas fa-check text-success me-2"></i>Easy -->
		<!-- 													fast and ver good</li> -->
		<!-- 												<li><i class="fas fa-check text-success me-2"></i>Some -->
		<!-- 													great feature name here</li> -->
		<!-- 												<li><i class="fas fa-check text-success me-2"></i>Modern -->
		<!-- 													style and design</li> -->
		<!-- 											</ul> -->
		<!-- 										</div> -->
		<!-- 									</div> -->
		<!-- 									<table class="table border mt-3 mb-2"> -->
		<!-- 										<tr> -->
		<!-- 											<th class="py-2">Display:</th> -->
		<!-- 											<td class="py-2">13.3-inch LED-backlit display with IPS</td> -->
		<!-- 										</tr> -->
		<!-- 										<tr> -->
		<!-- 											<th class="py-2">Processor capacity:</th> -->
		<!-- 											<td class="py-2">2.3GHz dual-core Intel Core i5</td> -->
		<!-- 										</tr> -->
		<!-- 										<tr> -->
		<!-- 											<th class="py-2">Camera quality:</th> -->
		<!-- 											<td class="py-2">720p FaceTime HD camera</td> -->
		<!-- 										</tr> -->
		<!-- 										<tr> -->
		<!-- 											<th class="py-2">Memory</th> -->
		<!-- 											<td class="py-2">8 GB RAM or 16 GB RAM</td> -->
		<!-- 										</tr> -->
		<!-- 										<tr> -->
		<!-- 											<th class="py-2">Graphics</th> -->
		<!-- 											<td class="py-2">Intel Iris Plus Graphics 640</td> -->
		<!-- 										</tr> -->
		<!-- 									</table> -->
		<!-- 								</div> -->
		<!-- 								<div class="tab-pane fade mb-2" id="ex1-pills-2" role="tabpanel" -->
		<!-- 									aria-labelledby="ex1-tab-2"> -->
		<!-- 									Tab content or sample information now <br /> Lorem ipsum dolor -->
		<!-- 									sit amet, consectetur adipisicing elit, sed do eiusmod tempor -->
		<!-- 									incididunt ut labore et dolore magna aliqua. Ut enim ad minim -->
		<!-- 									veniam, quis nostrud exercitation ullamco laboris nisi ut -->
		<!-- 									aliquip ex ea commodo consequat. Duis aute irure dolor in -->
		<!-- 									reprehenderit in voluptate velit esse cillum dolore eu fugiat -->
		<!-- 									nulla pariatur. Excepteur sint occaecat cupidatat non proident, -->
		<!-- 									sunt in culpa qui officia deserunt mollit anim id est laborum. -->
		<!-- 									Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed -->
		<!-- 									do eiusmod tempor incididunt ut labore et dolore magna aliqua. -->
		<!-- 									Ut enim ad minim veniam, quis nostrud exercitation ullamco -->
		<!-- 									laboris nisi ut aliquip ex ea commodo -->
		<!-- 								</div> -->
		<!-- 								<div class="tab-pane fade mb-2" id="ex1-pills-3" role="tabpanel" -->
		<!-- 									aria-labelledby="ex1-tab-3"> -->
		<!-- 									Another tab content or sample information now <br /> Dolor sit -->
		<!-- 									amet, consectetur adipisicing elit, sed do eiusmod tempor -->
		<!-- 									incididunt ut labore et dolore magna aliqua. Ut enim ad minim -->
		<!-- 									veniam, quis nostrud exercitation ullamco laboris nisi ut -->
		<!-- 									aliquip ex ea commodo consequat. Duis aute irure dolor in -->
		<!-- 									reprehenderit in voluptate velit esse cillum dolore eu fugiat -->
		<!-- 									nulla pariatur. Excepteur sint occaecat cupidatat non proident, -->
		<!-- 									sunt in culpa qui officia deserunt mollit anim id est laborum. -->
		<!-- 								</div> -->
		<!-- 								<div class="tab-pane fade mb-2" id="ex1-pills-4" role="tabpanel" -->
		<!-- 									aria-labelledby="ex1-tab-4"> -->
		<!-- 									Some other tab content or sample information now <br /> Lorem -->
		<!-- 									ipsum dolor sit amet, consectetur adipisicing elit, sed do -->
		<!-- 									eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut -->
		<!-- 									enim ad minim veniam, quis nostrud exercitation ullamco laboris -->
		<!-- 									nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor -->
		<!-- 									in reprehenderit in voluptate velit esse cillum dolore eu -->
		<!-- 									fugiat nulla pariatur. Excepteur sint occaecat cupidatat non -->
		<!-- 									proident, sunt in culpa qui officia deserunt mollit anim id est -->
		<!-- 									laborum. -->
		<!-- 								</div> -->
		<!-- 							</div> -->
		<!-- 							Pills content -->
		<!-- 						</div> -->
		<!-- 					</div> -->
		<!-- 					<div class="col-lg-4"> -->
		<!-- 						<div class="px-0 border rounded-2 shadow-0"> -->
		<!-- 							<div class="card"> -->
		<!-- 								<div class="card-body"> -->
		<!-- 									<h5 class="card-title">Similar items</h5> -->
		<!-- 									<div class="d-flex mb-3"> -->
		<!-- 										<a href="#" class="me-3"> <img -->
		<!-- 											src="https://mdbcdn.b-cdn.net/img/bootstrap-ecommerce/items/8.webp" -->
		<!-- 											style="min-width: 96px; height: 96px;" -->
		<!-- 											class="img-md img-thumbnail" /> -->
		<!-- 										</a> -->
		<!-- 										<div class="info"> -->
		<!-- 											<a href="#" class="nav-link mb-1"> Rucksack Backpack -->
		<!-- 												Large <br /> Line Mounts -->
		<!-- 											</a> <strong class="text-dark"> $38.90</strong> -->
		<!-- 										</div> -->
		<!-- 									</div> -->

		<!-- 									<div class="d-flex mb-3"> -->
		<!-- 										<a href="#" class="me-3"> <img -->
		<!-- 											src="https://mdbcdn.b-cdn.net/img/bootstrap-ecommerce/items/9.webp" -->
		<!-- 											style="min-width: 96px; height: 96px;" -->
		<!-- 											class="img-md img-thumbnail" /> -->
		<!-- 										</a> -->
		<!-- 										<div class="info"> -->
		<!-- 											<a href="#" class="nav-link mb-1"> Summer New Men's Denim -->
		<!-- 												<br /> Jeans Shorts -->
		<!-- 											</a> <strong class="text-dark"> $29.50</strong> -->
		<!-- 										</div> -->
		<!-- 									</div> -->

		<!-- 									<div class="d-flex mb-3"> -->
		<!-- 										<a href="#" class="me-3"> <img -->
		<!-- 											src="https://mdbcdn.b-cdn.net/img/bootstrap-ecommerce/items/10.webp" -->
		<!-- 											style="min-width: 96px; height: 96px;" -->
		<!-- 											class="img-md img-thumbnail" /> -->
		<!-- 										</a> -->
		<!-- 										<div class="info"> -->
		<!-- 											<a href="#" class="nav-link mb-1"> T-shirts with multiple -->
		<!-- 												colors, for men and lady </a> <strong class="text-dark"> -->
		<!-- 												$120.00</strong> -->
		<!-- 										</div> -->
		<!-- 									</div> -->

		<!-- 									<div class="d-flex"> -->
		<!-- 										<a href="#" class="me-3"> <img -->
		<!-- 											src="https://mdbcdn.b-cdn.net/img/bootstrap-ecommerce/items/11.webp" -->
		<!-- 											style="min-width: 96px; height: 96px;" -->
		<!-- 											class="img-md img-thumbnail" /> -->
		<!-- 										</a> -->
		<!-- 										<div class="info"> -->
		<!-- 											<a href="#" class="nav-link mb-1"> Blazer Suit Dress -->
		<!-- 												Jacket for Men, Blue color </a> <strong class="text-dark"> -->
		<!-- 												$339.90</strong> -->
		<!-- 										</div> -->
		<!-- 									</div> -->
		<!-- 								</div> -->
		<!-- 							</div> -->
		<!-- 						</div> -->
		<!-- 					</div> -->
		<!-- 				</div> -->
		<!-- 			</div> -->
		<!-- 		</section> -->
		<!-- Footer -->
		<!-- 		<footer class="text-center text-lg-start text-muted bg-primary mt-3"> -->
		<!-- 			<!-- Section: Links  -->
		-->
		<!-- 			<section class=""> -->
		<!-- 				<div class="container text-center text-md-start pt-4 pb-4"> -->
		<!-- 					Grid row -->
		<!-- 					<div class="row mt-3"> -->
		<!-- 						Grid column -->
		<!-- 						<div class="col-12 col-lg-3 col-sm-12 mb-2"> -->
		<!-- 							Content -->
		<!-- 							<a href="https://mdbootstrap.com/" target="_blank" -->
		<!-- 								class="text-white h2"> MDB </a> -->
		<!-- 							<p class="mt-1 text-white">© 2023 Copyright: MDBootstrap.com -->
		<!-- 							</p> -->
		<!-- 						</div> -->
		<!-- 						Grid column -->

		<!-- 						Grid column -->
		<!-- 						<div class="col-6 col-sm-4 col-lg-2"> -->
		<!-- 							Links -->
		<!-- 							<h6 class="text-uppercase text-white fw-bold mb-2">Store</h6> -->
		<!-- 							<ul class="list-unstyled mb-4"> -->
		<!-- 								<li><a class="text-white-50" href="#">About us</a></li> -->
		<!-- 								<li><a class="text-white-50" href="#">Find store</a></li> -->
		<!-- 								<li><a class="text-white-50" href="#">Categories</a></li> -->
		<!-- 								<li><a class="text-white-50" href="#">Blogs</a></li> -->
		<!-- 							</ul> -->
		<!-- 						</div> -->
		<!-- 						Grid column -->

		<!-- 						Grid column -->
		<!-- 						<div class="col-6 col-sm-4 col-lg-2"> -->
		<!-- 							Links -->
		<!-- 							<h6 class="text-uppercase text-white fw-bold mb-2"> -->
		<!-- 								Information</h6> -->
		<!-- 							<ul class="list-unstyled mb-4"> -->
		<!-- 								<li><a class="text-white-50" href="#">Help center</a></li> -->
		<!-- 								<li><a class="text-white-50" href="#">Money refund</a></li> -->
		<!-- 								<li><a class="text-white-50" href="#">Shipping info</a></li> -->
		<!-- 								<li><a class="text-white-50" href="#">Refunds</a></li> -->
		<!-- 							</ul> -->
		<!-- 						</div> -->
		<!-- 						Grid column -->

		<!-- 						Grid column -->
		<!-- 						<div class="col-6 col-sm-4 col-lg-2"> -->
		<!-- 							Links -->
		<!-- 							<h6 class="text-uppercase text-white fw-bold mb-2">Support</h6> -->
		<!-- 							<ul class="list-unstyled mb-4"> -->
		<!-- 								<li><a class="text-white-50" href="#">Help center</a></li> -->
		<!-- 								<li><a class="text-white-50" href="#">Documents</a></li> -->
		<!-- 								<li><a class="text-white-50" href="#">Account restore</a></li> -->
		<!-- 								<li><a class="text-white-50" href="#">My orders</a></li> -->
		<!-- 							</ul> -->
		<!-- 						</div> -->
		<!-- 						Grid column -->

		<!-- 						Grid column -->
		<!-- 						<div class="col-12 col-sm-12 col-lg-3"> -->
		<!-- 							Links -->
		<!-- 							<h6 class="text-uppercase text-white fw-bold mb-2">Newsletter</h6> -->
		<!-- 							<p class="text-white">Stay in touch with latest updates about -->
		<!-- 								our products and offers</p> -->
		<!-- 							<div class="input-group mb-3"> -->
		<!-- 								<input type="email" class="form-control border" -->
		<!-- 									placeholder="Email" aria-label="Email" -->
		<!-- 									aria-describedby="button-addon2" /> -->
		<!-- 								<button class="btn btn-light border shadow-0" type="button" -->
		<!-- 									id="button-addon2" data-mdb-ripple-color="dark">Join</button> -->
		<!-- 							</div> -->
		<!-- 						</div> -->
		<!-- 						Grid column -->
		<!-- 					</div> -->
		<!-- 					Grid row -->
		<!-- 				</div> -->
		<!-- 			</section> -->
		<!-- 			<!-- Section: Links  -->
		-->

		<!-- 			<div class=""> -->
		<!-- 				<div class="container"> -->
		<!-- 					<div class="d-flex justify-content-between py-4 border-top"> -->
		<!-- 						- payment - -->
		<!-- 						<div> -->
		<!-- 							<i class="fab fa-lg fa-cc-visa text-white"></i> <i -->
		<!-- 								class="fab fa-lg fa-cc-amex text-white"></i> <i -->
		<!-- 								class="fab fa-lg fa-cc-mastercard text-white"></i> <i -->
		<!-- 								class="fab fa-lg fa-cc-paypal text-white"></i> -->
		<!-- 						</div> -->
		<!-- 						- payment - -->

		<!-- 						- language selector - -->
		<!-- 						<div class="dropdown dropup"> -->
		<!-- 							<a class="dropdown-toggle text-white" href="#" id="Dropdown" -->
		<!-- 								role="button" data-mdb-toggle="dropdown" aria-expanded="false"> -->
		<!-- 								<i class="flag-united-kingdom flag m-0 me-1"></i>English -->
		<!-- 							</a> -->

		<!-- 							<ul class="dropdown-menu dropdown-menu-end" -->
		<!-- 								aria-labelledby="Dropdown"> -->
		<!-- 								<li><a class="dropdown-item" href="#"><i -->
		<!-- 										class="flag-united-kingdom flag"></i>English <i -->
		<!-- 										class="fa fa-check text-success ms-2"></i></a></li> -->
		<!-- 								<li><hr class="dropdown-divider" /></li> -->
		<!-- 								<li><a class="dropdown-item" href="#"><i -->
		<!-- 										class="flag-poland flag"></i>Polski</a></li> -->
		<!-- 								<li><a class="dropdown-item" href="#"><i -->
		<!-- 										class="flag-china flag"></i>中文</a></li> -->
		<!-- 								<li><a class="dropdown-item" href="#"><i -->
		<!-- 										class="flag-japan flag"></i>日本語</a></li> -->
		<!-- 								<li><a class="dropdown-item" href="#"><i -->
		<!-- 										class="flag-germany flag"></i>Deutsch</a></li> -->
		<!-- 								<li><a class="dropdown-item" href="#"><i -->
		<!-- 										class="flag-france flag"></i>Français</a></li> -->
		<!-- 								<li><a class="dropdown-item" href="#"><i -->
		<!-- 										class="flag-spain flag"></i>Español</a></li> -->
		<!-- 								<li><a class="dropdown-item" href="#"><i -->
		<!-- 										class="flag-russia flag"></i>Русский</a></li> -->
		<!-- 								<li><a class="dropdown-item" href="#"><i -->
		<!-- 										class="flag-portugal flag"></i>Português</a></li> -->
		<!-- 							</ul> -->
		<!-- 						</div> -->
		<!-- 						- language selector - -->
		<!-- 					</div> -->
		<!-- 				</div> -->
		<!-- 			</div> -->
		<!-- 		</footer> -->
		<!-- Footer -->
		<div class="container mt-3 pt-3 d-none">
			<div class="row">
				<div class="col-12">
					<div class="card p-3 bg-form position-relative">
						<div class="close-btn position-absolute top-0 end-0 p-3">
							<i class="fas fa-times text-white"></i>
						</div>
						<form class="row g-3">
							<div class="col-12">
								<h1 class="text-center fw-bolder text-white mt-3">Form đặt
									dịch vụ</h1>
								<hr>
							</div>
							<div class="col-12">
								<div
									class="p-3 mb-3 text-white fw-bolder fs-3 border-5 border-start">
									Điền thông tin đặt dịch vụ</div>
							</div>
							<div class="col-12">
								<div class="form-floating">
									<input type="date" autocomplete="off"
										class="form-control bg-light " id="startTime"
										placeholder="Name"> <label for="inputName">Ngày
										bắt đầu</label>
								</div>
							</div>
							<!-- 							<div class="col-12 col-md-6"> -->
							<!-- 								<div class="form-floating"> -->
							<!-- 									<input type="email" class="form-control bg-light " -->
							<!-- 										id="inputEmail4" placeholder="Informe seu e-mail"> <label -->
							<!-- 										for="inputEmail4">Email</label> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 							<div class="col-md-6"> -->
							<!-- 								<div class="form-floating"> -->
							<!-- 									<input type="password" class="form-control bg-light border-0 " -->
							<!-- 										id="inputPassword4" placeholder="Informe uma senha segura"> -->
							<!-- 									<label for="inputPassword4" class="form-label">Password</label> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<div class="col-12">
								<div class="form-floating">
									<input type="text" class="form-control bg-light "
										id="inputAddress" placeholder="1234 Main St"> <label
										for="inputAddress" class="form-label">Address</label>
								</div>
							</div>
							<!-- 							<div class="col-md-6"> -->
							<!-- 								<div class="form-floating"> -->
							<!-- 									<input type="text" class="form-control bg-light " -->
							<!-- 										id="inputCity" placeholder="Cidade"> <label -->
							<!-- 										for="inputCity" class="form-label">City</label> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 							<div class="col-md-4"> -->
							<!-- 								<div class="form-floating"> -->
							<!-- 									<select id="inputState" class="form-select bg-light"> -->
							<!-- 										<option selected>Choose...</option> -->
							<!-- 										<option>...</option> -->
							<!-- 									</select> <label for="inputState" class="form-label">State</label> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 							<div class="col-md-2"> -->
							<!-- 								<div class="form-floating"> -->
							<!-- 									<input type="text" class="form-control bg-light" id="inputZip" -->
							<!-- 										placeholder="Cep"> <label for="inputZip" -->
							<!-- 										class="form-label">CEP</label> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<div class="col-12">
								<div class="form-floating">
									<textarea class="form-control"
										placeholder="Leave a comment here" id="floatingTextarea"
										style="height: 100px"></textarea>
									<label for="floatingTextarea">Note</label>
								</div>
							</div>
							<!-- 							<div class="col-12"> -->
							<!-- 								<div class="form-check"> -->
							<!-- 									<input class="form-check-input" type="checkbox" id="gridCheck"> -->
							<!-- 									<label class="form-check-label shadow-sm text-white" -->
							<!-- 										for="gridCheck"> Concordo com os termos. </label> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<div class="col-12 text-end">
								<button type="submit"
									class="btn bg-button-submit w-100 bg-gradient p-3 text-center mb-2 text-white fw-bolder fs-3">Xác
									nhận</button>
								<a href="#" class="text-primary shadow-sm">Xác nhận</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>


	</main>
	<%@include file="/WEB-INF/views/customer/include/footer.jsp"%>

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- 		Modal -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<script>
		// Lấy đối tượng "Buy now" button
		const buyNowBtn = document.querySelector('a.btn.btn-warning');

		// Thêm sự kiện click cho button
		buyNowBtn.addEventListener('click', function(event) {
			event.preventDefault(); // Ngăn chặn hành động mặc định của link

			// Hiển thị div với lớp overlay và toggle
			const formContainer = document
					.querySelector('.container.mt-3.pt-3');
			formContainer.classList.remove('d-none');

			// Thêm lớp overlay
			const overlay = document.createElement('div');
			overlay.classList.add('overlay');
			document.body.appendChild(overlay);

			// Thêm sự kiện click cho overlay để đóng form
			overlay.addEventListener('click', function() {
				formContainer.classList.add('d-none');
				overlay.remove();
			});
		});

		// Lấy đối tượng nút "X"
		const closeBtn = document.querySelector('.close-btn');

		// Thêm sự kiện click cho nút "X"
		closeBtn.addEventListener('click', function() {
		  const formContainer = document.querySelector('.container.mt-3.pt-3');
		  formContainer.classList.add('d-none');
		  const overlay = document.querySelector('.overlay');
		  overlay.remove();
		});
	</script>

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
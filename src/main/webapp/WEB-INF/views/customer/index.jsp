<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Khách hàng</title>
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

	<!-- ======= Header ======= -->
	<%@include file="/WEB-INF/views/customer/include/header.jsp"%>

	<!-- ======= Hero Section ======= -->
	<section id="hero"
		class="d-flex flex-column justify-content-center align-items-center">
		<div class="container text-center text-md-left" data-aos="fade-up">
			<h1>Welcome to BookMyMaid</h1>
			<h2>Don’t stress. We’ll handle the mess.</h2>
			<a href="#about" class="btn-get-started scrollto">Get Started</a>
		</div>
	</section>
	<!-- End Hero -->

	<main id="main">

		<!-- ======= About Us Section ======= -->
		<section id="about" class="about">
			<div class="container" data-aos="fade-up">

				<div class="section-title">
					<h2>About Us</h2>
				</div>

				<p>The BookMyMaid Portal will provide a connection mechanism to
					all the maids in the area and will also provide standardization and
					regularity in the salaries paid to them. The online venture may
					also serve as an easy means to find and book maid/helpers online
					through the website depending on the need of the user.</p>

				<p>Today Online Booking System has become fast growing Booking
					method because of its speed and accuracy. Online Maid Booking
					System is the simplest to use web-based application for household,
					Residential complexes etc. BookMyMaid is web-based application
					provides facility to book a service online</p>

				<p>The Administrator can manage Maids as well as Users. Admin
					can manage Bookings and can analyse requirements of users.</p>
				<div class="row content">
					<div class="col-lg-6"></div>


				</div>
			</div>
		</section>
		<!-- End About Us Section -->

		<!-- ======= Steps Section ======= -->
		<section id="steps" class="steps section-bg">
			<div class="container">

				<div class="row no-gutters">

					<div class="col-lg-4 col-md-6 content-item" data-aos="fade-in">
						<span>01</span>
						<h4>Easy Bookings</h4>
						<p>Ulamco laboris nisi ut aliquip ex ea commodo consequat. Et
							consectetur ducimus vero placeat</p>
					</div>

					<div class="col-lg-4 col-md-6 content-item" data-aos="fade-in"
						data-aos-delay="100">
						<span>02</span>
						<h4>Verified Maids</h4>
						<p>Dolorem est fugiat occaecati voluptate velit esse. Dicta
							veritatis dolor quod et vel dire leno para dest</p>
					</div>

					<div class="col-lg-4 col-md-6 content-item" data-aos="fade-in"
						data-aos-delay="200">
						<span>03</span>
						<h4>Refund on cancellation</h4>
						<p>Molestiae officiis omnis illo asperiores. Aut doloribus
							vitae sunt debitis quo vel nam quis</p>
					</div>

					<div class="col-lg-4 col-md-6 content-item" data-aos="fade-in"
						data-aos-delay="300">
						<span>04</span>
						<h4>Easy Schedulling</h4>
						<p>Inventore quo sint a sint rerum. Distinctio blanditiis
							deserunt quod soluta quod nam mider lando casa</p>
					</div>

					<div class="col-lg-4 col-md-6 content-item" data-aos="fade-in"
						data-aos-delay="400">
						<span>05</span>
						<h4>Available at your time</h4>
						<p>Vitae dolorem in deleniti ipsum omnis tempore voluptatem.
							Qui possimus est repellendus est quibusdam</p>
					</div>

					<div class="col-lg-4 col-md-6 content-item" data-aos="fade-in"
						data-aos-delay="500">
						<span>06</span>
						<h4>Easy Payment gateway</h4>
						<p>Quis eum numquam veniam ea voluptatibus voluptas. Excepturi
							aut nostrum repudiandae voluptatibus corporis sequi</p>
					</div>

				</div>

			</div>
		</section>
		<!-- End Steps Section -->



		<!-- ======= Services Section ======= -->
		<section id="services" class="services section-bg">
			<div class="container">

				<div class="section-title" data-aos="fade-up">
					<h2>Dịch Vụ Chúng Tôi Cung Cấp</h2>
					<p>Chọn bất kỳ dịch vụ nào dưới đây và làm việc của bạn sẽ được
						hoàn thành trong thời gian ngắn. Chỉ cần đặt lịch và người giúp
						việc và hãy để chúng tôi lo mọi thứ!!!</p>
				</div>

				<div class="row">
					<c:forEach var="category" items="${categoryList }">
						<!-- Phần dịch vụ thứ nhất -->
						<div
							class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0"
							data-aos="fade-up">
							<div class="icon-box icon-box-pink">
								<div class="icon">
									<i class="bx ${category.image }"></i>
								</div>
								<h4 class="title">
									<a href="serviceList/${category.id }.htm">${category.name }</a>
								</h4>
								<p class="description">${category.description }</p>
							</div>
						</div>
					</c:forEach>
				</div>

				<!-- Chuyển trang -->
				<!-- Chuyển trang -->
				<div class="text-center mt-5"
					style="display: flex; justify-content: center;">
					<ul class="pagination">
						<li class="page-item"><a class="page-link" href="#"
							id="page-prev">&laquo;</a></li>
						<li class="page-item active"><span class="page-link"
							id="current-page">1</span></li>
						<li class="page-item"><a class="page-link" href="#"
							id="page-next">&raquo;</a></li>
					</ul>
				</div>

			</div>
		</section>
		<!-- Kết Thúc Phần Dịch Vụ -->

		<!-- ======= Testimonials Section ======= -->
		<section id="testimonials" class="testimonials">
			<div class="container">

				<div class="section-title" data-aos="fade-up">
					<h2>Happy Customers</h2>
					<p>Magnam dolores commodi suscipit. Necessitatibus eius
						consequatur ex aliquid fuga eum quidem. Sit sint consectetur
						velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
						suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem
						hic quas.</p>
				</div>

				<div class="testimonials-slider swiper" data-aos="fade-up"
					data-aos-delay="100">
					<div class="swiper-wrapper">

						<div class="swiper-slide">
							<div class="testimonial-item">
								<p>
									<i class="bx bxs-quote-alt-left quote-icon-left"></i> Proin
									iaculis purus consequat sem cure digni ssim donec porttitora
									entum suscipit rhoncus. Accusantium quam, ultricies eget id,
									aliquam eget nibh et. Maecen aliquam, risus at semper. <i
										class="bx bxs-quote-alt-right quote-icon-right"></i>
								</p>
								<img
									src="<c:url value='/resources/main/assets/img/testimonials/testimonials-1.jpg'/>"
									class="testimonial-img" alt="">
								<h3>Saul Goodman</h3>
								<h4>Ceo &amp; Founder</h4>
							</div>
						</div>
						<!-- End testimonial item -->

						<div class="swiper-slide">
							<div class="testimonial-item">
								<p>
									<i class="bx bxs-quote-alt-left quote-icon-left"></i> Export
									tempor illum tamen malis malis eram quae irure esse labore quem
									cillum quid cillum eram malis quorum velit fore eram velit sunt
									aliqua noster fugiat irure amet legam anim culpa. <i
										class="bx bxs-quote-alt-right quote-icon-right"></i>
								</p>
								<img
									src="<c:url value='/resources/main/assets/img/testimonials/testimonials-2.jpg'/>"
									class="testimonial-img" alt="">
								<h3>Sara Wilsson</h3>
								<h4>Designer</h4>
							</div>
						</div>
						<!-- End testimonial item -->

						<div class="swiper-slide">
							<div class="testimonial-item">
								<p>
									<i class="bx bxs-quote-alt-left quote-icon-left"></i> Enim nisi
									quem export duis labore cillum quae magna enim sint quorum
									nulla quem veniam duis minim tempor labore quem eram duis
									noster aute amet eram fore quis sint minim. <i
										class="bx bxs-quote-alt-right quote-icon-right"></i>
								</p>
								<img
									src="<c:url value='/resources/main/assets/img/testimonials/testimonials-3.jpg'/>"
									class="testimonial-img" alt="">
								<h3>Jena Karlis</h3>
								<h4>Store Owner</h4>
							</div>
						</div>
						<!-- End testimonial item -->

						<div class="swiper-slide">
							<div class="testimonial-item">
								<p>
									<i class="bx bxs-quote-alt-left quote-icon-left"></i> Fugiat
									enim eram quae cillum dolore dolor amet nulla culpa multos
									export minim fugiat minim velit minim dolor enim duis veniam
									ipsum anim magna sunt elit fore quem dolore labore illum
									veniam. <i class="bx bxs-quote-alt-right quote-icon-right"></i>
								</p>
								<img
									src="<c:url value='/resources/main/assets/img/testimonials/testimonials-4.jpg'/>"
									class="testimonial-img" alt="">
								<h3>Matt Brandon</h3>
								<h4>Freelancer</h4>
							</div>
						</div>
						<!-- End testimonial item -->

						<div class="swiper-slide">
							<div class="testimonial-item">
								<p>
									<i class="bx bxs-quote-alt-left quote-icon-left"></i> Quis
									quorum aliqua sint quem legam fore sunt eram irure aliqua
									veniam tempor noster veniam enim culpa labore duis sunt culpa
									nulla illum cillum fugiat legam esse veniam culpa fore nisi
									cillum quid. <i class="bx bxs-quote-alt-right quote-icon-right"></i>
								</p>
								<img
									src="<c:url value='/resources/main/assets/img/testimonials/testimonials-5.jpg'/>"
									class="testimonial-img" alt="">
								<h3>John Larson</h3>
								<h4>Entrepreneur</h4>
							</div>
						</div>
						<!-- End testimonial item -->

					</div>
					<div class="swiper-pagination"></div>
				</div>

			</div>
		</section>
		<!-- End Testimonials Section -->


		<!-- ======= Frequently Asked Questions Section ======= -->
		<section id="faq" class="faq section-bg">
			<div class="container" data-aos="fade-up">

				<div class="section-title">
					<h2>Frequently Asked Questions</h2>
					<!-- <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p> -->
				</div>

				<div class="faq-list">
					<ul>
						<li data-aos="fade-up" data-aos-delay="100"><i
							class="bx bx-help-circle icon-help"></i> <a
							data-bs-toggle="collapse" class="collapse"
							data-bs-target="#faq-list-1">How many Maids can i book at a
								time? <i class="bx bx-chevron-down icon-show"></i><i
								class="bx bx-chevron-up icon-close"></i>
						</a>
							<div id="faq-list-1" class="collapse " data-bs-parent=".faq-list">
								<p>
									As much you want for your services.
									<!--  However, students who miss the exam (never start the exam) can contact the teacher personally for requesting re-open of exams. As for students who already taken the exam, they cannot take the re-open exam. -->
								</p>
							</div></li>

						<li data-aos="fade-up" data-aos-delay="200"><i
							class="bx bx-help-circle icon-help"></i> <a
							data-bs-toggle="collapse" data-bs-target="#faq-list-2"
							class="collapsed">Feugiat scelerisque varius morbi enim nunc?
								<i class="bx bx-chevron-down icon-show"></i><i
								class="bx bx-chevron-up icon-close"></i>
						</a>
							<div id="faq-list-2" class="collapse" data-bs-parent=".faq-list">
								<p>Dolor sit amet consectetur adipiscing elit pellentesque
									habitant morbi. Id interdum velit laoreet id donec ultrices.
									Fringilla phasellus faucibus scelerisque eleifend donec
									pretium. Est pellentesque elit ullamcorper dignissim. Mauris
									ultrices eros in cursus turpis massa tincidunt dui.</p>
							</div></li>

						<li data-aos="fade-up" data-aos-delay="300"><i
							class="bx bx-help-circle icon-help"></i> <a
							data-bs-toggle="collapse" data-bs-target="#faq-list-3"
							class="collapsed">Dolor sit amet consectetur adipiscing elit?
								<i class="bx bx-chevron-down icon-show"></i><i
								class="bx bx-chevron-up icon-close"></i>
						</a>
							<div id="faq-list-3" class="collapse" data-bs-parent=".faq-list">
								<p>Eleifend mi in nulla posuere sollicitudin aliquam
									ultrices sagittis orci. Faucibus pulvinar elementum integer
									enim. Sem nulla pharetra diam sit amet nisl suscipit. Rutrum
									tellus pellentesque eu tincidunt. Lectus urna duis convallis
									convallis tellus. Urna molestie at elementum eu facilisis sed
									odio morbi quis</p>
							</div></li>

						<li data-aos="fade-up" data-aos-delay="400"><i
							class="bx bx-help-circle icon-help"></i> <a
							data-bs-toggle="collapse" data-bs-target="#faq-list-4"
							class="collapsed">Tempus quam pellentesque nec nam aliquam
								sem et tortor consequat? <i class="bx bx-chevron-down icon-show"></i><i
								class="bx bx-chevron-up icon-close"></i>
						</a>
							<div id="faq-list-4" class="collapse" data-bs-parent=".faq-list">
								<p>Molestie a iaculis at erat pellentesque adipiscing
									commodo. Dignissim suspendisse in est ante in. Nunc vel risus
									commodo viverra maecenas accumsan. Sit amet nisl suscipit
									adipiscing bibendum est. Purus gravida quis blandit turpis
									cursus in.</p>
							</div></li>

						<li data-aos="fade-up" data-aos-delay="500"><i
							class="bx bx-help-circle icon-help"></i> <a
							data-bs-toggle="collapse" data-bs-target="#faq-list-5"
							class="collapsed">Tortor vitae purus faucibus ornare. Varius
								vel pharetra vel turpis nunc eget lorem dolor? <i
								class="bx bx-chevron-down icon-show"></i><i
								class="bx bx-chevron-up icon-close"></i>
						</a>
							<div id="faq-list-5" class="collapse" data-bs-parent=".faq-list">
								<p>Laoreet sit amet cursus sit amet dictum sit amet justo.
									Mauris vitae ultricies leo integer malesuada nunc vel.
									Tincidunt eget nullam non nisi est sit amet. Turpis nunc eget
									lorem dolor sed. Ut venenatis tellus in metus vulputate eu
									scelerisque.</p>
							</div></li>

					</ul>
				</div>

			</div>
		</section>
		<!-- End Frequently Asked Questions Section -->

		<!-- ======= Contact Section ======= -->
		<section id="contact" class="contact">
			<div class="container">

				<div class="section-title" data-aos="fade-up">
					<h2>Contact Us</h2>
					<p>Magnam dolores commodi suscipit. Necessitatibus eius
						consequatur ex aliquid fuga eum quidem. Sit sint consectetur
						velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
						suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem
						hic quas.</p>
				</div>

				<div class="row no-gutters justify-content-center"
					data-aos="fade-up">

					<div class="col-lg-5 d-flex align-items-stretch">
						<div class="info">
							<div class="address">
								<i class="bi bi-geo-alt"></i>
								<h4>Location:</h4>
								<p>A-123 MG Road, Pune, PU 535022</p>
							</div>

							<div class="email mt-4">
								<i class="bi bi-envelope"></i>
								<h4>Email:</h4>
								<p>bookmymaid@gmail.com</p>
							</div>

							<div class="phone mt-4">
								<i class="bi bi-phone"></i>
								<h4>Call:</h4>
								<p>+91 9988452631</p>
							</div>

						</div>

					</div>

					<div class="col-lg-5 d-flex align-items-stretch">
						<iframe style="border: 0; width: 100%; height: 270px;"
							src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621"
							allowfullscreen="allowfullscreen"></iframe>
					</div>

				</div>

				<div class="row mt-5 justify-content-center" data-aos="fade-up">
					<div class="col-lg-10">
						<form action="forms/contact.php" method="post" role="form"
							class="php-email-form">
							<div class="row">
								<div class="col-md-6 form-group">
									<input type="text" name="name" class="form-control" id="name"
										placeholder="Your Name" required>
								</div>
								<div class="col-md-6 form-group mt-3 mt-md-0">
									<input type="email" class="form-control" name="email"
										id="email" placeholder="Your Email" required>
								</div>
							</div>
							<div class="form-group mt-3">
								<input type="text" class="form-control" name="subject"
									id="subject" placeholder="Subject" required>
							</div>
							<div class="form-group mt-3">
								<textarea class="form-control" name="message" rows="5"
									placeholder="Message" required></textarea>
							</div>
							<div class="my-3">
								<div class="loading">Loading</div>
								<div class="error-message"></div>
								<div class="sent-message">Your message has been sent.
									Thank you!</div>
							</div>
							<div class="text-center">
								<button type="submit">Send Message</button>
							</div>
						</form>
					</div>

				</div>

			</div>
		</section>
		<!-- End Contact Section -->

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<%@include file="/WEB-INF/views/customer/include/footer.jsp"%>

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- 		Phân trang -->

	<script>
		//Phần JavaScript
		document
				.addEventListener(
						"DOMContentLoaded",
						function() {
							// Khai báo các biến và hàm cần thiết
							var currentPage = 1; // Trang hiện tại
							var itemsPerPage = 4; // Số dịch vụ trên mỗi trang
							var totalItems = document
									.querySelectorAll(".icon-box").length; // Tổng số dịch vụ

							// Ẩn tất cả các dịch vụ
							function hideAllItems() {
								var items = document
										.querySelectorAll(".icon-box");
								items.forEach(function(item) {
									item.style.display = "none";
								});
							}

							// Hiển thị các dịch vụ trên trang hiện tại
							function showItems(page) {
								hideAllItems();
								var startIndex = (page - 1) * itemsPerPage;
								var endIndex = startIndex + itemsPerPage;
								var items = document
										.querySelectorAll(".icon-box");
								for (var i = startIndex; i < endIndex
										&& i < totalItems; i++) {
									items[i].style.display = "block";
								}
							}
							//Cập nhật só trang hiện tại:
							function showPageNumber(currentPage) {
								document.getElementById("current-page").textContent = currentPage; // Cập nhật số trang hiện tại

							}
							// Xử lý khi nhấp vào nút trang trước
							document.getElementById("page-prev")
									.addEventListener("click", function(event) {
										event.preventDefault();
										if (currentPage > 1) {
											currentPage--;
											showPageNumber(currentPage);
											showItems(currentPage);
										}
									});

							// Xử lý khi nhấp vào nút trang tiếp theo
							document
									.getElementById("page-next")
									.addEventListener(
											"click",
											function(event) {
												event.preventDefault();
												if (currentPage < Math
														.ceil(totalItems
																/ itemsPerPage)) {
													currentPage++;
													showPageNumber(currentPage);
													showItems(currentPage);
												}
											});
							// Hiển thị các dịch vụ trên trang đầu tiên khi trang web được tải
							showItems(currentPage);
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
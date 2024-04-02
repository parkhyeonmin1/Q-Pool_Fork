<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!-- 원화표시 functions함수집합 가져오기 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 원화표시 포맷 -->
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<title>Q_Pool 게시판</title>
	<meta content="" name="description">
	<meta content="" name="keywords">
	
	<!-- Favicons -->
	<link href="resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">
	
	<!-- Fonts -->
	<link href="https://fonts.googleapis.com" rel="preconnect">
	<link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
	
	<!-- Vendor CSS Files -->
	<link href="resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
	<link href="resources/assets/vendor/aos/aos.css" rel="stylesheet">
	<link href="resources/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
	<link href="resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
	
	<!-- Main CSS File -->
	<link href="resources/assets/css/main.css" rel="stylesheet">
	
	<!-- admin쪽 템플릿 css -->
	<!-- Icons. Uncomment required icon fonts -->
	<link rel="stylesheet" href="resources/adminAssets/vendor/fonts/boxicons.css" />
	
	<!-- Core CSS -->
	<link rel="stylesheet" href="resources/adminAssets/vendor/css/core.css" class="template-customizer-core-css" />
	<link rel="stylesheet" href="resources/adminAssets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
	<link rel="stylesheet" href="resources/adminAssets/css/demo.css" />

  <!-- =======================================================
  * Template Name: Mentor
  * Template URL: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/
  * Updated: Mar 18 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body class="courses-page">

<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

  <main class="main">

    <!-- Page Title -->
    <div class="page-title" data-aos="fade">
      <div class="heading">
        <div class="container">
          <div class="row d-flex justify-content-center text-center">
            <div class="col-lg-8">
              <h1>게시판</h1>
            </div>
          </div>
        </div>
      </div>
    </div><!-- End Page Title -->

    <!-- Courses List Section -->
    <section id="courses-list" class="section courses-list">
      <div class="container">
		<!-- Basic Bootstrap Table -->
          <div class="card">
            <h5 class="card-header">토의 게시판 <button type="button" class="btn btn-primary btn-sm" onclick="boardWritePage()"
            	style="float: right;
            	width: 10%;
            	height: 10%;
            	color: #fff;
    			background-color: var(--accent-color);
    			border-color: var(--accent-color);
    			box-shadow: 0 0.125rem 0.25rem 0 var(--accent-color);">작성하기</button></h5>
            <div class="table-responsive text-nowrap">
              <table class="table">
                <thead>
                  <tr>
                    <th>분류</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                    <th>기타</th>
                  </tr>
                </thead>
                <tbody class="table-border-bottom-0">
                  <tr>
                    <td><i class="fab fa-angular fa-lg text-danger me-3"></i> <strong>코딩테스트</strong></td>
                    <td>3번 문제 풀이 공유</td>
                    <td>
                      <ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
                        <li
                          data-bs-toggle="tooltip"
                          data-popup="tooltip-custom"
                          data-bs-placement="top"
                          class="avatar avatar-xs pull-up"
                          title="Lilian Fuller"
                        >
                          user
                        </li>
                        <li
                          data-bs-toggle="tooltip"
                          data-popup="tooltip-custom"
                          data-bs-placement="top"
                          class="avatar avatar-xs pull-up"
                          title="Sophia Wilkerson"
                        >
                        </li>
                        <li
                          data-bs-toggle="tooltip"
                          data-popup="tooltip-custom"
                          data-bs-placement="top"
                          class="avatar avatar-xs pull-up"
                          title="Christina Parker"
                        >
                        </li>
                      </ul>
                    </td>
                    <td>2024-03-29</td>
                    <td>
                      <div class="dropdown">
                        <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                          <i class="bx bx-dots-vertical-rounded"></i>
                        </button>
                        <div class="dropdown-menu">
                          <a class="dropdown-item" href="javascript:void(0);"
                            ><i class="bx bx-edit-alt me-1"></i> Edit</a
                          >
                          <a class="dropdown-item" href="javascript:void(0);"
                            ><i class="bx bx-trash me-1"></i> Delete</a
                          >
                        </div>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td><i class="fab fa-react fa-lg text-info me-3"></i> <strong>정보처리기사</strong></td>
                    <td>3번 문제 답 3번 아닌가요?</td>
                    <td>
                      <ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
                        <li
                          data-bs-toggle="tooltip"
                          data-popup="tooltip-custom"
                          data-bs-placement="top"
                          class="avatar avatar-xs pull-up"
                          title="Lilian Fuller"
                        >
                          user1
                        </li>
                        <li
                          data-bs-toggle="tooltip"
                          data-popup="tooltip-custom"
                          data-bs-placement="top"
                          class="avatar avatar-xs pull-up"
                          title="Sophia Wilkerson"
                        >
                        </li>
                        <li
                          data-bs-toggle="tooltip"
                          data-popup="tooltip-custom"
                          data-bs-placement="top"
                          class="avatar avatar-xs pull-up"
                          title="Christina Parker"
                        >
                        </li>
                      </ul>
                    </td>
                    <td>2024-03-29</td>
                    <td>
                      <div class="dropdown">
                        <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                          <i class="bx bx-dots-vertical-rounded"></i>
                        </button>
                        <div class="dropdown-menu">
                          <a class="dropdown-item" href="javascript:void(0);"
                            ><i class="bx bx-edit-alt me-2"></i> Edit</a
                          >
                          <a class="dropdown-item" href="javascript:void(0);"
                            ><i class="bx bx-trash me-2"></i> Delete</a
                          >
                        </div>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td><i class="fab fa-vuejs fa-lg text-success me-3"></i> <strong>SQLD</strong></td>
                    <td>innerjoin 관련 sql문 풀이 도와주세요</td>
                    <td>
                      <ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
                        <li
                          data-bs-toggle="tooltip"
                          data-popup="tooltip-custom"
                          data-bs-placement="top"
                          class="avatar avatar-xs pull-up"
                          title="Lilian Fuller"
                        >
                          user2
                        </li>
                        <li
                          data-bs-toggle="tooltip"
                          data-popup="tooltip-custom"
                          data-bs-placement="top"
                          class="avatar avatar-xs pull-up"
                          title="Sophia Wilkerson"
                        >
                        </li>
                        <li
                          data-bs-toggle="tooltip"
                          data-popup="tooltip-custom"
                          data-bs-placement="top"
                          class="avatar avatar-xs pull-up"
                          title="Christina Parker"
                        >
                        </li>
                      </ul>
                    </td>
                    <td>2024-03-29</td>
                    <td>
                      <div class="dropdown">
                        <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                          <i class="bx bx-dots-vertical-rounded"></i>
                        </button>
                        <div class="dropdown-menu">
                          <a class="dropdown-item" href="javascript:void(0);"
                            ><i class="bx bx-edit-alt me-2"></i> Edit</a
                          >
                          <a class="dropdown-item" href="javascript:void(0);"
                            ><i class="bx bx-trash me-2"></i> Delete</a
                          >
                        </div>
                      </div>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
          <!--/ Basic Bootstrap Table -->

      </div>

    </section><!-- /Courses List Section -->

  </main>

  <footer id="footer" class="footer position-relative">

    <div class="container footer-top">
      <div class="row gy-4">
        <div class="col-lg-4 col-md-6 footer-about">
          <a href="index.jsp" class="logo d-flex align-items-center">
            <span class="">Mentor</span>
          </a>
          <div class="footer-contact pt-3">
            <p>A108 Adam Street</p>
            <p>New York, NY 535022</p>
            <p class="mt-3"><strong>Phone:</strong> <span>+1 5589 55488 55</span></p>
            <p><strong>Email:</strong> <span>info@example.com</span></p>
          </div>
          <div class="social-links d-flex mt-4">
            <a href=""><i class="bi bi-twitter"></i></a>
            <a href=""><i class="bi bi-facebook"></i></a>
            <a href=""><i class="bi bi-instagram"></i></a>
            <a href=""><i class="bi bi-linkedin"></i></a>
          </div>
        </div>

        <div class="col-lg-2 col-md-3 footer-links">
          <h4>Useful Links</h4>
          <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">About us</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Terms of service</a></li>
            <li><a href="#">Privacy policy</a></li>
          </ul>
        </div>

        <div class="col-lg-2 col-md-3 footer-links">
          <h4>Our Services</h4>
          <ul>
            <li><a href="#">Web Design</a></li>
            <li><a href="#">Web Development</a></li>
            <li><a href="#">Product Management</a></li>
            <li><a href="#">Marketing</a></li>
            <li><a href="#">Graphic Design</a></li>
          </ul>
        </div>

        <div class="col-lg-4 col-md-12 footer-newsletter">
          <h4>Our Newsletter</h4>
          <p>Subscribe to our newsletter and receive the latest news about our products and services!</p>
          <form action="forms/newsletter.php" method="post" class="php-email-form">
            <div class="newsletter-form"><input type="email" name="email"><input type="submit" value="Subscribe"></div>
            <div class="loading">Loading</div>
            <div class="error-message"></div>
            <div class="sent-message">Your subscription request has been sent. Thank you!</div>
          </form>
        </div>

      </div>
    </div>

    <div class="container copyright text-center mt-4">
      <p>© <span>Copyright</span> <strong class="px-1">SiteName</strong> <span>All Rights Reserved</span></p>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you've purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: [buy-url] -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>

  </footer>

  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Preloader -->
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/assets/vendor/php-email-form/validate.js"></script>
  <script src="resources/assets/vendor/aos/aos.js"></script>
  <script src="resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="resources/assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="resources/assets/vendor/swiper/swiper-bundle.min.js"></script>

  <!-- Main JS File -->
  <script src="resources/assets/js/main.js"></script>
  
	  <!-- admin 템플릿 js -->
	  <!-- Core JS -->
	    <!-- build:js assets/vendor/js/core.js -->
	    <script src="resources/adminAssets/vendor/libs/jquery/jquery.js"></script>
	    <script src="resources/adminAssets/vendor/libs/popper/popper.js"></script>
	    <script src="resources/adminAssets/vendor/js/bootstrap.js"></script>
	    <script src="resources/adminAssets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
	
	    <script src="resources/adminAssets/vendor/js/menu.js"></script>
	    <!-- endbuild -->
	
	    <!-- Vendors JS -->
	
	    <!-- Main JS -->
	    <script src="resources/adminAssets/js/main.js"></script>
	
	<script>
		function boardWritePage(){
			location.href="/boardWritePage";
		}
	</script>
	
</body>

</html>
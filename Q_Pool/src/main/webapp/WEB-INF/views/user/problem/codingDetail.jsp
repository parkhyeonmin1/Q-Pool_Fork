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
	<title>Q_Pool 문제</title>
	<meta content="" name="description">
	<meta content="" name="keywords">
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
	<!-- code mirror -->
	<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.39.0/codemirror.min.js'></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.39.0/mode/xml/xml.min.js"></script>
	<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.39.0/codemirror.min.css'>
	<!-- Favicons -->
	<link href="resources/assets/img/favicon.png" rel="icon">
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
	<link href="resources/codemirror/lib/codemirror.css" rel="stylesheet" type="text/css" >
	<link href="resources/codemirror/theme/darcula.css" rel="stylesheet" >
  <!-- =======================================================
  * Template Name: Mentor
  * Template URL: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/
  * Updated: Mar 18 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body class="course-details-page">

  <jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

  <main class="main">

    <!-- Page Title -->
    <div class="page-title" data-aos="fade">
      <div class="heading">
        <div class="container">
          <div class="row d-flex justify-content-center text-center">
            <div class="col-lg-8">
              <h1>코딩테스트 기출문제</h1>
            </div>
          </div>
        </div>
      </div>
    </div><!-- End Page Title -->

    <!-- Courses Course Details Section -->
    <section id="courses-course-details" class="courses-course-details section">

      <div class="container" data-aos="fade-up">

        <div class="row">
          <div class="col-md-6">
          	문제
          	<textarea id="question_content" name="question_content">
문제 설명

다음은 어느 자동차 대여 회사에서 대여중인 자동차들의 정보를 담은 CAR_RENTAL_COMPANY_CAR 테이블입니다.
CAR_RENTAL_COMPANY_CAR 테이블은 아래와 같은 구조로 되어있으며,
CAR_ID, CAR_TYPE, DAILY_FEE, OPTIONS 는 각각 자동차 ID,
자동차 종류, 일일 대여 요금(원), 자동차 옵션 리스트를 나타냅니다.

Column_name		Type			Nullable
CAR_ID			INTEGER			FALSE
CAR_TYPE		VARCHAR(255)	FALSE
DAILY_FEE		INTEGER			FALSE
OPTIONS			VARCHAR(255)	FALSE

자동차 종류는 '세단', 'SUV', '승합차', '트럭', '리무진' 이 있습니다.
자동차 옵션 리스트는 콤마(',')로 구분된 
키워드 리스트(예: '열선시트', '스마트키', '주차감지센서')로 되어있으며,
키워드 종류는 '주차감지센서', '스마트키', '네비게이션', '통풍시트', 
'열선시트', '후방카메라', '가죽시트' 가 있습니다.
          	</textarea>
          </div>
          <div class="col-md-6">
          	<!-- codemirror 입력창 -->
          	<div style="">
			    Java
			    <textarea id="batch_content" name="batch_content"></textarea>
			    <button class="btn btn-primary" type="button" onclick="fn_msg()" style="float: right;">제출하기</button>
			</div>
          </div>
        </div>

      </div>

    </section><!-- /Courses Course Details Section -->

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
	
	<!-- codemirror -->
	<script src="resources/codemirror/src/edit/main.js"></script>
	<script src="resources/codemirror/mode/clike/clike.js"></script>
	<script src="resources/codemirror/mode/textile/textile.js"></script>
	<script src="resources/codemirror/mode/textile/test.js"></script>
	<!-- <script>
	    $(document).ready(function(){
		  var code = $(".codemirror-textarea")[0];
		  var editor = CodeMirror.fromTextArea(code, {
		    lineNumbers : true
		  });
		});
	</script> -->
	
	<script>
	    // textarea 태그의 element를 지정
	    var textarea = document.getElementById('question_content');
	    // 에디터 설정
	    var editor = CodeMirror.fromTextArea(textarea, {
	        lineNumbers: false,  //왼쪽 라인넘버 표기
	        lineWrapping: true, //줄바꿈. 음.. break-word;
	        theme: "darcula",   //테마는 맘에드는 걸로.
	        mode: 'text/x-textile', //모드는 textile 모드
	        readOnly : true
	    });
	</script>
	
	<script>
	    // textarea 태그의 element를 지정
	    var textarea = document.getElementById('batch_content');
	    var defaultValue = "class Solution {\n \n}";
	    
	    textarea.value = defaultValue;
	    // 에디터 설정
	    var editor = CodeMirror.fromTextArea(textarea, {
	        lineNumbers: true,  //왼쪽 라인넘버 표기
	        lineWrapping: true, //줄바꿈. 음.. break-word;
	        theme: "darcula",   //테마는 맘에드는 걸로.
	        mode: 'text/x-java' //모드는 sql 모드
	    });
	
	    function fn_msg() {
	        // 에디터에 입력된 값은 아래와 같이 가져올 수 있다.
	        var text = editor.getValue();
	        alert(text);
	    }
	</script>
</body>

</html>
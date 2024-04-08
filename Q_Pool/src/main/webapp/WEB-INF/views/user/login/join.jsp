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
  <title>Q_Pool 회원가입 페이지</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  <!-- 네이버 소셜로그인 -->
  <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
  <script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2-nopolyfill.js"></script>
  <!-- jQuery Plugin -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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

  <!-- =======================================================
  * Template Name: Mentor
  * Template URL: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/
  * Updated: Mar 18 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body class="about-page">

<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

  <main class="main">

    <!-- Page Title -->
    <div class="page-title" data-aos="fade">
      <div class="heading">
        <div class="container">
          <div class="row d-flex justify-content-center text-center">
            <div class="col-lg-8">
              <h1 class="">회원가입<br></h1>
            </div>
          </div>
        </div>
      </div>
      <nav class="breadcrumbs">
        <div class="container">
        </div>
      </nav>
    </div><!-- End Page Title -->

    <!-- About Us Section -->
    <section id="contact" class="contact section">

      <div class="container" style="margin-top: 10%;">
      	<div class="row gy-12" style="justify-content : center; margin-top : 5%; margin : auto;">
	      	<div class="col-lg-12" style="justify-content : center;">
	        <form action="/join" method="POST">
          		<div class="row gy-4">
	            	
	            	<!-- 아이디 -->
	            	<div class="col-lg-12">
	              		<input type="text" name="memberId" class="form-control form-control-lg" placeholder="아이디를 입력하세요" required style="width : 60%; margin : auto;">
	            	</div>
	            	
	            	<!-- 비밀번호 -->
	            	<div class="col-lg-12">
	              		<input type="password" class="form-control form-control-lg" name="memberPw" placeholder="비밀번호를 입력하세요" required style="width : 60%; margin : auto;">
	            	</div>
	            	
	            	<!-- 비밀번호 체크 -->
	            	<div class="col-lg-12">
	              		<input type="password" class="form-control form-control-lg" name="memberPwCheck" placeholder="비밀번호를 다시 입력하세요" required style="width : 60%; margin : auto;">
	            	</div>
	            	
	            	<!-- 이름 -->
	            	<div class="col-lg-12">
	              		<input type="text" class="form-control form-control-lg" name="memberName" placeholder="이름을 입력하세요" required style="width : 60%; margin : auto;">
	            	</div>
	            	
	            	<!-- 생년월일 -->
	            	<div class="col-lg-12" style="margin-left: 20%;">
						<input type="text" class="form-control form-control-lg" id="year" name="year" placeholder=" ex) 1997 " style="display: inline-block; width: 18%;" minlength="4" maxlength="4" oninput="removeWhitespace(this)" required> 
						<select class="form-control form-control-lg" id="month" name="month" style="width: 18%; display: inline-block; margin-left: 2%;"></select> 
						<input type="text" class="form-control form-control-lg" id="day" name="day" placeholder=" ex) 11 " style="display: inline-block; width: 18%; margin-left: 2%;" minlength="2" maxlength="2" oninput="removeWhitespace(this)" required>
					</div>
					
					<!-- 전화번호 -->
					<div class="col-lg-12" style="margin-left: 20%;">
						<input type="text" class="form-control form-control-lg" id="phoneNumberPrefix" name="phoneNumberPrefix" placeholder=" 010 " style="display: inline-block; width: 15%;" minlength="3" maxlength="3" oninput="removeWhitespace(this)" required> 
						<span style="display: inline-block; margin-left: 5px; margin-right: 5px;">-</span> 
						<input type="text" class="form-control form-control-lg" id="phoneNumberMiddle" name="phoneNumberMiddle" placeholder=" 0000 " style="display: inline-block; width: 15%;" minlength="4" maxlength="4" oninput="removeWhitespace(this)" required> 
						<span style="display: inline-block; margin-left: 5px; margin-right: 5px;">-</span> 
						<input type="text" class="form-control form-control-lg" id="phoneNumberSuffix" name="phoneNumberSuffix" placeholder=" 0000 " style="display: inline-block; width: 15%;" minlength="4" maxlength="4" oninput="removeWhitespace(this)" required>
						<input type="button" id="authenticationNumber" class="btn btn-success btn-sm" value="인증번호 발송" onclick="authentication_Number()"style="display: inline-block; width: 10%;background-color : #5fcf80; border : none;">
					</div>
					
					<!-- 인증번호 확인 -->
					<div class="col-lg-12" style="margin-left: 20%;">
						<input type="text" placeholder="인증번호" class="form-control form-control-lg" id="phoneNumberCK" name="phoneNumberCK"
							style="display: inline-block; width: 20%;" minlength="6" maxlength="6" oninput="removeWhitespace(this)" required />
						<input type="button" class="btn btn-success btn-sm" id="authenticationNumberCheck" value="인증번호 확인" onclick="authentication_Number_Check()"
							style="display: inline-block; width: 10%; background-color : #5fcf80; border : none;"><br>
					</div>
					
					<!-- 이메일 -->
					<div class="col-lg-12" style="margin-left: 20%;">
						<input type="text" class="form-control form-control-lg" placeholder="Email1" id="emailUsername" name="emailUsername" style="display: inline-block; width: 15%;" oninput="removeWhitespace(this)" required />
						<span style="display: inline-block;">@</span>
						<input class="form-control form-control-lg" id="domain-txt" type="text" placeholder="domain.com" name="emailDomain" style="display: inline-block; width: 15%;" oninput="removeWhitespace(this)" required /> 
						<select class="form-control" id="domain-list" name="emailDomain" style="display: inline-block; width: 10%; " required>
							<option value="type">직접 입력</option>
							<option value="naver.com">naver.com</option>
							<option value="google.com">google.com</option>
							<option value="hanmail.net">hanmail.net</option>
							<option value="nate.com">nate.com</option>
							<option value="kakao.com">kakao.com</option>
						</select>
					</div>
					
					
	            	<div class="col-md-12 text-center">
	              		<button type="submit" class="btn btn-success btn-lg" onclick="submitForm()" style="background-color : #5fcf80; border : none;">회원가입</button>
              		</div>
           	  	</div>
            </form>
            </div>
		</div>
      </div>

    </section><!-- /About Us Section -->

  </main>

  <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

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
  <script src="resources/js/join.js"></script>
</body>

</html>
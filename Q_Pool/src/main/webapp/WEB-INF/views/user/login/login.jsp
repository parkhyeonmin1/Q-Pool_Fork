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
  <title>Q_Pool 로그인 페이지</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  <!-- 네이버 소셜로그인 -->
  <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
  <script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2-nopolyfill.js"></script>
  <!-- jQuery Plugin -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"></script>
  <!-- 카카오톡 소셜로그인 -->
  <script src="https://t1.kakaocdn.net/kakao_js_sdk/2.7.0/kakao.min.js" integrity="sha384-l+xbElFSnPZ2rOaPrU//2FF5B4LB8FiX5q4fXYTlfcG4PGpMkE1vcL7kNXI6Cci0" crossorigin="anonymous"></script>
  <script>
    Kakao.init('09f5245c373047d1b84985742c98e322'); // 사용하려는 앱의 JavaScript 키 입력
  </script>
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
              <h1 class="">Log In<br></h1>
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

      <div class="container">
      	<div class="row gy-4" style="justify-content : center; margin-top : 5%; margin : auto;">
	      	<div class="col-lg-8" style="justify-content : center;">
	        <form action="/login" method="POST" id="loginForm">
	          <div class="row gy-4">
	            <div class="col-md-12">
	              <input type="text" name="memberId" class="form-control form-control-lg" placeholder="아이디를 입력하세요" required="" style="width : 60%; margin : auto;">
	            </div>
	            <div class="col-md-12">
	              <input type="password" class="form-control form-control-lg" name="memberPw" placeholder="비밀번호를 입력하세요" required="" style="width : 60%; margin : auto;">
	            </div>
	            <div class="col-md-12 text-center">
	              <button type="submit" class="btn btn-success btn-lg" style="background-color : #5fcf80; border : none;">로그인</button>
	              <button type="submit" class="btn btn-success btn-lg" onclick="submitForm()" style="background-color : #5fcf80; border : none;">회원가입</button>
              <div id="naver_id_login" style="margin-top: 5%;"></div>
	      		<a id="kakao-login-btn" href="javascript:loginWithKakao()" style="height: inherit;">
	      			<img src="https://k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg" width="200" alt="카카오 로그인 버튼" />
	      		</a>
	      		<p id="token-result"></p>
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
  <script>
  function submitForm() {
      location.href="/joinPage";
  }
  </script>
  <!-- 네이버 로그인 버튼 노출 영역 -->
  <script type="text/javascript">
    	var naver_id_login = new naver_id_login("QknPldO_qP5hGm2Nhx6M", "http://localhost:8088/naverLogin");
    	var state = naver_id_login.getUniqState();
    	naver_id_login.setButton("green", 60,55);
    	naver_id_login.setDomain("http://localhost:8088");
    	naver_id_login.setState(state);
    	naver_id_login.setPopup();
    	naver_id_login.init_naver_id_login();
  </script>
  <script type="text/javascript">
  $("#kakao-login-btn").on("click", function(e){
     e.preventDefault();
     window.location.href = '/oauth2/authorization/kakao'
  })
</script>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>헤르메스 - 일본 여행의 길잡이</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">
	
    <link rel="stylesheet" href="<c:url value='/resources/css/open-iconic-bootstrap.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/animate.css'/>">
    
    <link rel="stylesheet" href="<c:url value='/resources/css/owl.carousel.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/owl.theme.default.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/magnific-popup.css'/>">

    <link rel="stylesheet" href="<c:url value='/resources/css/aos.css'/>">

    <link rel="stylesheet" href="<c:url value='/resources/css/ionicons.min.css'/>">

    <link rel="stylesheet" href="<c:url value='/resources/css/bootstrap-datepicker.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/jquery.timepicker.css'/>">

    
    <link rel="stylesheet" href="<c:url value='/resources/css/flaticon.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/icomoon.css'/>">
    <link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>">
    
    <link rel="stylesheet" href="<c:url value='/resources/fonts/material-icon/css/material-design-iconic-font.min.css'/>">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
	var apiURI = "http://api.openweathermap.org/data/2.5/weather?lat=42.9850407&lon=140.967794&appid=d84691dc195879fc0f05365198f1f5a0";
	$.ajax({
		url : apiURI,
		dataType : "json",
		type : "GET",
		async : "false",
		success : function(resp) {
			console.log(resp);
			var tag = "<tr>";
			tag +="<td>";
			tag +="현재온도 : " + Math.round((resp.main.temp - 273.15));
			tag +="</td>";
			tag +="</tr>";
			
			tag +="<tr>";
			tag +="<td>";
			tag +="현재습도 : " + resp.main.humidity;
			tag +="</td>";
			tag +="</tr>";
			
			tag +="<tr>";
			tag +="<td>";
			tag +="날씨 : " + resp.weather[0].main;
			tag +="</td>";
			tag +="</tr>";
			
			tag +="<tr>";
			tag +="<td>";
			tag +="상세날씨설명 : " + resp.weather[0].description;
			tag +="</td>";
			tag +="</tr>";
			
			tag +="<tr>";
			tag +="<td>";
			tag +="날씨 이미지 : ";
			tag +="<img src='http://openweathermap.org/img/wn/";
			tag +=resp.weather[0].icon;
			tag +="@2x.png'>";
			
			tag +="</td>";
			tag +="</tr>";
			
			tag +="<tr>";
			tag +="<td>";
			tag +="바람   : " + resp.wind.speed;
			tag +="</td>";
			tag +="</tr>";
			
			tag +="<tr>";
			tag +="<td>";
			tag +="나라   : " + resp.sys.country;
			tag +="</td>";
			tag +="</tr>";
			
			

			tag +="<tr>";
			tag +="<td>";
			tag +="구름  : " + (resp.clouds.all) + "%";
			tag +="</td>";
			tag += "</tr>";
			tag +="</tr>";
				$("#here").html(tag);

				var link = document.location.href; 
				console.log(link);
		}
	});	
</script>
  </head>
  <body>
    
  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="/hermes">Hermes</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> 메뉴
      </button>

       <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">			<a href="<c:url value='/'/>" 				class="nav-link">메인 화면</a></li>
          <li class="nav-item">			<a href="<c:url value='/about'/>"  			class="nav-link">이용 방법</a></li>
          <li class="nav-item active">	<a href="<c:url value='/tour'/>" 		 	class="nav-link">여행 정보</a></li>
          <li class="nav-item">			<a href="<c:url value='/map/mapmain'/>"		class="nav-link">지도 정보</a></li>
          <li class="nav-item">			<a href="<c:url value='/board/boardmain'/>"	class="nav-link">게시판</a></li>
          <c:choose>
          	<c:when test="${sessionScope.userid != null}">
          	  <li class="nav-item"><a href="<c:url value='/member/logout'/>" class="nav-link"><span>로그아웃</span></a></li>
	          <li class="nav-item cta"><a href="<c:url value='/member/profile'/>" class="nav-link"><span>${sessionScope.userid}</span></a></li>
          	</c:when>
          	<c:otherwise>
	          <li class="nav-item"><a href="<c:url value='/member/loginForm'/>" class="nav-link">로그인 / 회원가입</a></li>
          	</c:otherwise>
          </c:choose>
        </ul>
      </div>
    </div>
  </nav>
    <!-- END nav -->
 
     <div class="hero-wrap js-fullheight" style="background-image: url(https://t1.daumcdn.net/thumb/R1280x0/?fname=http%3A//t1.daumcdn.net/brunch/service/user/STq/image/QRoo3Gklw_3mPM4mDeTd0afwPYo);">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"> 
            <span class="mr-2"><a href="<c:url value='/tour'/>">여행지 메인으로</a></span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">여행지 소개</h1>
          </div>
        </div>
      </div>
    </div>


    <section class="ftco-section ftco-degree-bg">
      <div class="container">
        <div class="row">
        	<div class="col-lg-3 sidebar">
        		<div class="sidebar-wrap bg-light ftco-animate">
        			<h3 class="heading mb-4">도시 검색</h3>
        			<form action="#">
        				<div class="fields">
		              <div class="form-group">
		                <input type="text" class="form-control" placeholder="도시, 관광지 검색">
		              </div>
		              
		              <div class="form-group">
		                <input type="submit" value="검색" class="btn btn-primary py-3 px-5">
		              </div>
		            </div>
	            </form>
        		</div>
        		<table id="here"></table>
          </div>
          <div class="col-lg-9">
          	<div class="row">
          		<div class="col-md-12 ftco-animate">
          			<div class="single-slider owl-carousel">
          				<div class="item">
          					<div class="hotel-img" style="background-image: url('https://3.bp.blogspot.com/-eJONm8tKgOM/XDmkLDbLIpI/AAAAAAAAAYU/mOzTKK9u2sM7I40GMT0-ilEy9hjjMMGLACLcBGAs/s1600/KakaoTalk_20190112_172243976.jpg');"></div>
          				</div>
          				<div class="item">
          					<div class="hotel-img" style="background-image: url('https://www.koreatimes.net/images/attach/PSHW4OZG564MAVI-2017042813045131/20170428-13042069.jpg');"></div>
          				</div>
          				<div class="item">
          					<div class="hotel-img" style="background-image: url('https://www.agoda.com/wp-content/uploads/2019/01/%E6%9C%AD%E5%B9%8C_%E3%82%82%E3%81%84%E3%82%8F%E5%B1%B1_%E5%B1%B1%E9%A0%82%E5%B1%95%E6%9C%9B%E5%8F%B0-1024x717.jpg');"></div>
          				</div>
          			</div>
          		</div>
          		<div class="col-md-12 hotel-single mt-4 mb-5 ftco-animate">
          			<span>주요 도시 &amp; 관광지</span>
          			<h2>삿포로</h2>
          			<p class="rate mb-5">
          				<span class="loc"><a href="#"><i class="icon-map"></i> 위치 : 일본 홋카이도 남서부</a></span>
    						</p>
    						<p>삿포로의 관광지 인기순</p>
    						<div class="d-md-flex mt-5 mb-5">
    							<ul>
	    							<li>1. 스스키노</li>
	    							<li>2. 삿포로 텔레비전 타워</li>
	    							<li>3. 나카지마 공원</li>
	    							<li>4. 니조이치바</li>
	    						</ul>
	    						<ul class="ml-md-5">
	    							<li>5. 오도리 공원</li>
	    							<li>6. 모이와야마</li>
	    							<li>7. 라멘요코쵸</li>
	    							<li>8. 스텔라 플레이스</li>
	    						</ul>
    						</div>
    						<p>겨울과 맥주가 유명한 도시 삿포로. 
    						북해도의 중심이자 대자연으로 둘러싸인 삿포로는 일본인들이 가장 살고싶어하는 도시로 꼽힌다. 
    						여름에는 서늘하고 겨울에는 눈이 내린 절경으로 유명하며, 특히 겨울에 세계 3대 축제 중 하나인 삿포로 눈축제가 열려 많은 관광객들이 온다. 
    						모이와산 로프웨이 케이블카를 타고 삿포로의 야경을 감상하는 것은 삿포로 관광의 필수 코스로 불린다. 
    						맥주와 함께 스스키노역의 라멘골목, 수프카레, 쟈카바타가 유명해 식도락 여행으로도 좋다.</p>
          		</div>
          		<div class="col-md-12 hotel-single ftco-animate mb-5 mt-4">
          			<h4 class="mb-4">여행 동영상</h4>
          			<div class="block-16">
		              <figure>
		                <img src='https://3.bp.blogspot.com/-eJONm8tKgOM/XDmkLDbLIpI/AAAAAAAAAYU/mOzTKK9u2sM7I40GMT0-ilEy9hjjMMGLACLcBGAs/s1600/KakaoTalk_20190112_172243976.jpg' alt="Image placeholder" class="img-fluid">
		                <a href="https://www.youtube.com/watch?v=qKYvSPJ2GHw" class="play-button popup-vimeo"><span class="icon-play"></span></a>
		              </figure>
		            </div>
          		</div>         		
          	</div>
          </div> <!-- .col-md-8 -->
        </div>
      </div>
    </section> <!-- .section -->



  

    


    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">대표자</h2>
              <p>SWDO 4기 4조 프론트엔드 담당 HDS
              </p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Navigation</h2>
              <ul class="list-unstyled">
                <li><a href="<c:url value='/'/>" 				class="py-2 d-block">메인 화면</a></li>
                <li><a href="<c:url value='/about'/>" 			class="py-2 d-block">이용 방법</a></li>
                <li><a href="<c:url value='/tour'/>" 			class="py-2 d-block">여행 정보</a></li>
                <li><a href="<c:url value='/map/mapmain'/>" 	class="py-2 d-block">지도 정보</a></li>
                <li><a href="<c:url value='/board/boardmain'/>" class="py-2 d-block">게시판</a></li>
                <li>
                <c:choose>
          			<c:when test="${sessionScope.userid != null}">
          	 			 <li><a href="<c:url value='/member/profile'/>" 	class="py-2 d-block">회원 정보</a></li>
	         		</c:when>
          			<c:otherwise>
	          			<li><a href="<c:url value='/member/loginForm'/>" 	class="py-2 d-block">로그인</a></li>
          			</c:otherwise>
        		  </c:choose>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">외부 사이트</h2>
              <ul class="list-unstyled">
                <li><a href="https:www.google.com" class="py-2 d-block">구글</a></li>
                <li><a href="https:www.naver.com" class="py-2 d-block">네이버</a></li>
                <li><a href="https:kakaocorp.com" class="py-2 d-block">카카오</a></li>
                <li><a href="https:www.youtube.com" class="py-2 d-block">유튜브</a></li>
                <li><a href="https:softsociety.net/ictcenter" class="py-2 d-block">SWDO</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Q/A</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">광주 SWDO 4기 Hermes Project</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">010-0000-0000</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">wg4544@gmail.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p>
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
  All rights reserved <br>
  This Site is made with 
  by Hermes
 </p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="<c:url value='/resources/js/jquery.min.js'/>"></script>
  <script src="<c:url value='/resources/js/jquery-migrate-3.0.1.min.js'/>"></script>
  <script src="<c:url value='/resources/js/popper.min.js'/>"></script>
  <script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
  <script src="<c:url value='/resources/js/jquery.easing.1.3.js'/>"></script>
  <script src="<c:url value='/resources/js/jquery.waypoints.min.js'/>"></script>
  <script src="<c:url value='/resources/js/jquery.stellar.min.js'/>"></script>
  <script src="<c:url value='/resources/js/owl.carousel.min.js'/>"></script>
  <script src="<c:url value='/resources/js/jquery.magnific-popup.min.js'/>"></script>
  <script src="<c:url value='/resources/js/aos.js'/>"></script>
  <script src="<c:url value='/resources/js/jquery.animateNumber.min.js'/>"></script>
  <script src="<c:url value='/resources/js/bootstrap-datepicker.js'/>"></script>
  <script src="<c:url value='/resources/js/jquery.timepicker.min.js'/>"></script>
  <script src="<c:url value='/resources/js/scrollax.min.js'/>"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="<c:url value='/resources/js/google-map.js'/>"></script>
  <script src="<c:url value='/resources/js/main.js'/>"></script>
    
  <script src="<c:url value='/resources/vendor/jquery/jquery.min.js'/>"></script>
  <script src="<c:url value='/resources/js/main01.js'/>"></script>
  </body>
</html>

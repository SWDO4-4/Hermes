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
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span>다양한 여행정보를 한눈에</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">여행 정보</h1>
          </div>
        </div>
      </div>
    </div>


    <section class="ftco-section ftco-degree-bg">
      <div class="container">
        <div class="row">
        	<div class="col-lg-3 sidebar ftco-animate">
        		<div class="sidebar-wrap bg-light ftco-animate">
        			<h3 class="heading mb-4">지역을 검색하세요</h3>
        			<form action="#">
        				<div class="fields">
		              <div class="form-group">
		                <input type="text" class="form-control" placeholder="도시, 지역, 목적지">
		              </div>
		              <div class="form-group">
		                <div class="select-wrap one-third">
	                  	</div>
		              </div>
		              <div class="form-group">
		                <input type="submit" value="Search" class="btn btn-primary py-3 px-5">
		              </div>
		            </div>
	            </form>
        		</div>
          </div>
          <div class="col-lg-9">
          	<div class="row">
          		<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<a href="<c:url value='/tour/tokyo'/>" class="img img-2 d-flex justify-content-center align-items-center" 
		    						style="background-image: url('https://www.visakorea.com/dam/VCOM/regional/ap/Marquees/marquee-destinations-tokyo-1600x900.jpg');">
		    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="<c:url value='/tour/tokyo'/>">도쿄</a></h3>
			    						</div>
			    						<div class="two">
			    							<span class="price">Tokyo</span>
		    							</div>
		    						</div>
		    						<p>도쿄 타워</p>
		    						<p class="days"><span>일본 수도이자 최대의 도시</span></p>
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							<span><i class="icon-map-o"></i>지도 정보</span> 
		    							<span class="ml-auto"><a href="#">날씨</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			
		    			<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<a href="<c:url value='/tour/osaka'/>" class="img img-2 d-flex justify-content-center align-items-center" 
		    						style="background-image: url('https://resources.matcha-jp.com/resize/720x2000/2016/10/26-6796.jpeg');">
		    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="<c:url value='/tour/osaka'/>">오사카</a></h3>
			    						</div>
			    						<div class="two">
			    							<span class="price">Osaka</span>
		    							</div>
		    						</div>
		    						<p>도톤보리</p>
		    						<p class="days"><span>서일본 최대의 도시</span></p>
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							<span><i class="icon-map-o"></i>지도 정보</span> 
		    							<span class="ml-auto"><a href="#">날씨</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			
		    			<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<a href="<c:url value='/tour/kyoto'/>" class="img img-2 d-flex justify-content-center align-items-center" 
		    						style="background-image: url('https://t1.daumcdn.net/cfile/tistory/994AC94B5CB3441A04');">
		    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="<c:url value='/tour/kyoto'/>">교토</a></h3>
			    						</div>
			    						<div class="two">
			    							<span class="price">Kyoto</span>
		    							</div>
		    						</div>
		    						<p>기요미즈데라</p>
		    						<p class="days"><span>역사와 전통의 도시</span></p>
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							<span><i class="icon-map-o"></i>지도 정보</span> 
		    							<span class="ml-auto"><a href="#">날씨</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			
		    			<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<a href="<c:url value='/tour/gobe'/>" class="img img-2 d-flex justify-content-center align-items-center" 
		    						style="background-image: url('https://lh3.googleusercontent.com/proxy/XTS_YgZ1MM0bHIEt8NXLJoHUAaOHRcBJEWca83VI0YW161HdZmf0wePtB3IBwikKnD3zKyJx3vTRrJhrxvNZk2CbyHyA79G8OFVHW5Adpz8mNlxt4UOG_D0PSC10Q0FultHPtOurCJRTz6X5sIt0WRCFAMvNxwupYoY4Py6i_a_FISTgD4p7Y7tYmK8ZUshp-lYZhy_KGxiM6tRGEnGTYrsBmpicEeD0mw7OY2UVdShiXf3gQnjsrD1Dto0ExBiNVuLcZihATjPqdsEoyuYH619Hdo2D65vZhsOuAHqGJ84yBbVoHjveJLYaFvlXcJE2jxiQkw4');">
		    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="<c:url value='/tour/gobe'/>">고베</a></h3>
			    						</div>
			    						<div class="two">
			    							<span class="price">Kobe</span>
		    							</div>
		    						</div>
		    						<p>고베 포트 타워</p>
		    						<p class="days"><span>일본의 국제무역도시</span></p>
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							<span><i class="icon-map-o"></i>지도 정보</span> 
		    							<span class="ml-auto"><a href="#">날씨</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			
		    			<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<a href="<c:url value='/tour/yokohama'/>" class="img img-2 d-flex justify-content-center align-items-center" 
		    						style="background-image: url('https://rimage.gnst.jp/livejapan.com/public/article/detail/a/00/02/a0002974/img/basic/a0002974_main.jpg?20200925182954&q=80&rw=750&rh=536');">
		    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="<c:url value='/tour/gobe'/>">요쿄하마</a></h3>
			    						</div>
			    						<div class="two">
			    							<span class="price">Yokohama</span>
		    							</div>
		    						</div>
		    						<p>요코하마 역</p>
		    						<p class="days"><span>도심 테마의 세련된 도시</span></p>
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							<span><i class="icon-map-o"></i>지도 정보</span> 
		    							<span class="ml-auto"><a href="#">날씨</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			
		    			<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<a href="<c:url value='/tour/nagoya'/>" class="img img-2 d-flex justify-content-center align-items-center" 
		    						style="background-image: url('https://resources.matcha-jp.com/original/2018/08/26-61341.jpeg');">
		    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="<c:url value='/tour/nagoya'/>">나고야</a></h3>
			    						</div>
			    						<div class="two">
			    							<span class="price">Nagoya</span>
		    							</div>
		    						</div>
		    						<p>오아시스21</p>
		    						<p class="days"><span>세계 최대의 역</span></p>
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							<span><i class="icon-map-o"></i>지도 정보</span> 
		    							<span class="ml-auto"><a href="#">날씨</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			
		    			<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<a href="<c:url value='/tour/nara'/>" class="img img-2 d-flex justify-content-center align-items-center" 
		    						style="background-image: url('https://d2ahiw9kb7is19.cloudfront.net/-/media/9BC8F188D47543AEAAE92BFA4F5FE86E.jpg?d=20180129T014150&w=750');">
		    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="<c:url value='/tour/nara'/>">나라</a></h3>
			    						</div>
			    						<div class="two">
			    							<span class="price">Nara</span>
		    							</div>
		    						</div>
		    						<p>사슴 공원</p>
		    						<p class="days"><span>사슴과 전통의 도시</span></p>
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							<span><i class="icon-map-o"></i>지도 정보</span> 
		    							<span class="ml-auto"><a href="<c:url value='/tour/nara'/>">날씨</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			
		    			<div class="col-md-4 ftco-animate">
		    				<div class="destination">
		    					<a href="<c:url value='/tour/sapporo'/>" class="img img-2 d-flex justify-content-center align-items-center" 
		    						style="background-image: url('https://www.agoda.com/wp-content/uploads/2019/01/%E6%9C%AD%E5%B9%8C_%E3%82%82%E3%81%84%E3%82%8F%E5%B1%B1_%E5%B1%B1%E9%A0%82%E5%B1%95%E6%9C%9B%E5%8F%B0-1024x717.jpg');">
		    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<div class="d-flex">
		    							<div class="one">
				    						<h3><a href="<c:url value='/tour/sapporo'/>">삿포로</a></h3>
			    						</div>
			    						<div class="two">
			    							<span class="price">Sapporo</span>
		    							</div>
		    						</div>
		    						<p>삿포로 야경</p>
		    						<p class="days"><span>눈과 축제의 도시</span></p>
		    						<hr>
		    						<p class="bottom-area d-flex">
		    							<span><i class="icon-map-o"></i>지도 정보</span> 
		    							<span class="ml-auto"><a href="<c:url value='/tour/sapporo'/>">날씨</a></span>
		    						</p>
		    					</div>
		    				</div>
		    			</div>
          	</div>
          	<div class="row mt-5">
		          <div class="col text-center">
		            <div class="block-27">
		              <ul>
		                <li><a href="#">&lt;</a></li>
		                <li class="active"><span>1</span></li>
		                <li><a href="#">2</a></li>
		                <li><a href="#">3</a></li>
		                <li><a href="#">4</a></li>
		                <li><a href="#">5</a></li>
		                <li><a href="#">&gt;</a></li>
		              </ul>
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

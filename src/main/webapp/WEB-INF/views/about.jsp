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
          <li class="nav-item">			<a href="<c:url value='/'/>" 				 class="nav-link">메인 화면</a></li>
          <li class="nav-item active">	<a href="<c:url value='/about'/>"			 class="nav-link">이용 방법</a></li>
          <li class="nav-item">			<a href="<c:url value='/tour'/>"			 class="nav-link">여행 정보</a></li>
          <li class="nav-item">			<a href="<c:url value='/map/mapmain'/>"		 class="nav-link">지도 정보</a></li>
          <li class="nav-item">			<a href="<c:url value='/board/boardmain'/>"  class="nav-link">게시판</a></li>
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
 
    <div class="hero-wrap js-fullheight" style="background-image: url(https://post-phinf.pstatic.net/MjAxODAyMTJfMTUg/MDAxNTE4NDA3MjE5Mzgw.zVS_BG88s8BJoxkvljzIyxs2x5uXuKMHxe7LbCGN4WAg.iJXTcwJoopT5uf7EcP-_aguUS2fNtZ9BdXANtlc-XHsg.JPEG/%EB%A1%9C%EB%A7%A8%ED%8B%B1%EA%B3%A0%EB%B2%A0%EC%BD%98%EC%B2%B4%EB%A5%B4%ED%86%A0%ED%81%AC%EB%A3%A8%EC%A6%88_%281%29.jpg?type=w1200);">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span>헤르메스 활용 가이드</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">이용 방법</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section">
    	<div class="container">
    		<div class="row d-md-flex">
	    		<div class="col-md-6 ftco-animate img about-image" 
	    			style="background-image: url('<c:url value='/resources/images/about.jpg'/>');">
	    		</div>
	    		<div class="col-md-6 ftco-animate p-md-5">
		    		<div class="row">
			          <div class="col-md-12 nav-link-wrap mb-5">
			            <div class="nav ftco-animate nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
			              <a class="nav-link active" id="v-pills-whatwedo-tab" data-toggle="pill" href="#v-pills-whatwedo" role="tab" aria-controls="v-pills-whatwedo" aria-selected="true">1. 알아보기</a>
			              <a class="nav-link" id="v-pills-mission-tab" data-toggle="pill" href="#v-pills-mission" role="tab" aria-controls="v-pills-mission" aria-selected="false">2. 계획하기</a>
			              <a class="nav-link" id="v-pills-goal-tab" data-toggle="pill" href="#v-pills-goal" role="tab" aria-controls="v-pills-goal" aria-selected="false">3. 활용하기</a>
			            </div>
			          </div>
		          <div class="col-md-12 d-flex align-items-center">  
		            <div class="tab-content ftco-animate" id="v-pills-tabContent">
		              
		              <div class="tab-pane fade show active" id="v-pills-whatwedo" role="tabpanel" aria-labelledby="v-pills-whatwedo-tab">
		              	<div>
			                <h2 class="mb-4">여행지 설정하기</h2>
			              	<p>헤르메스가 제공하는 다양한 여행 정보를 보시고, 자유롭게 마음에 드는 여행지를 선택해 보세요!</p>
			                <p>여행이 고민된다면, 게시판에서 제공하는 여행 팁과 QnA를 참고하세요! </p>
				        </div>
		              </div>

		              <div class="tab-pane fade" id="v-pills-mission" role="tabpanel" aria-labelledby="v-pills-mission-tab">
		                <div>
			                <h2 class="mb-4">여행 계획하기</h2>
			              	<p>헤르메스가 제공하는 다양한 여행 정보를 참고해서, 자신만의 여행 계획을 만들어 보세요!</p>
			                <p>홈페이지에 다양한 이벤트 정보, 주변 지도 및 시설, 항공편과 날씨까지 한번에!</p>
				        </div>
		              </div>

		              <div class="tab-pane fade" id="v-pills-goal" role="tabpanel" aria-labelledby="v-pills-goal-tab">
		                <div>
			                <h2 class="mb-4">더 활용하기</h2>
			              	<p>여행을 가서도, 여행이 끝나도 헤르메스는 활용될 수 있습니다.</p>
			                <p>여행 중이시라면 지도와 제공되는 주변 시설을 한번에, 여행 후에는 후기를 남겨서 다음 여행을 준비하세요!</p>
				        </div>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
		    </div>
    	</div>
    </section>

    <section class="ftco-section bg-light">
    	<div class="container">
    		<div class="row justify-content-start mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate">
          	<span class="subheading">Q/A</span>
            <h2 class="mb-4"><strong>자주 묻는 질문</strong></h2>
          </div>
        </div>  
    		<div class="row">
    			<div class="col-md-12 ftco-animate">
    				<div id="accordion">
    					<div class="row">
    						<div class="col-md-6">
    							<div class="card">
						        <div class="card-header">
										  <a class="card-link" data-toggle="collapse"  href="#menuone" aria-expanded="true" aria-controls="menuone">
										   헤르메스는 어떤 사이트인가요?
										  <span class="collapsed"><i class="icon-plus-circle"></i></span><span class="expanded"><i class="icon-minus-circle"></i></span></a>
						        </div>
						        <div id="menuone" class="collapse show">
						          <div class="card-body">
									<p>헤르메스는 일본 여행의 도우미입니다. 일본 전역에 대한 관광정보를 제공하고 항공편과 날씨정보를 통해 스마트한 예약이 가능하며,
										지도와 함께 제공되는 주변 관광정보를 통해 여행 중에도 어디를 갈지 활용가능합니다. 
									</p>
						          </div>
						        </div>
						      </div>

						      <div class="card">
						        <div class="card-header">
										  <a class="card-link" data-toggle="collapse"  href="#menutwo" aria-expanded="false" aria-controls="menutwo">
										 항공편 예약과 날씨정보에 대해서 
										  <span class="collapsed"><i class="icon-plus-circle"></i></span><span class="expanded"><i class="icon-minus-circle"></i></span></a>
						        </div>
						        <div id="menutwo" class="collapse">
						          <div class="card-body">
								<p>헤르메스는 항공편예약은 항공편 API를 사용중이고, 날씨는 날씨 정보API를 사용하여 이용자분들께 제공하고 있습니다.
									인터넷 환경 혹은 사이트 환경에 따라서 접속지연 및 표기오류가 나타날 수 있으니 양해 부탁드립니다.
								</p>
						          </div>
						        </div>
						      </div>

						      <div class="card">
						        <div class="card-header">
										  <a class="card-link" data-toggle="collapse"  href="#menu3" aria-expanded="false" aria-controls="menu3">
										   회원 가입 및 로그인이 정상적으로 작동되지 않습니다. 
										   <span class="collapsed"><i class="icon-plus-circle"></i></span><span class="expanded"><i class="icon-minus-circle"></i></span></a>
						        </div>
						        <div id="menu3" class="collapse">
						          <div class="card-body">
									<p>페이지 하단에 있는 주소로 문의주시기 바랍니다. </p>
						          </div>
						        </div>
						      </div>
    						</div>

    						<div class="col-md-6">
    							<div class="card">
						        <div class="card-header">
										  <a class="card-link" data-toggle="collapse"  href="#menu4" aria-expanded="false" aria-controls="menu4">
										  게시판엔 어떤 기능이 있나요? 
										  <span class="collapsed"><i class="icon-plus-circle"></i></span><span class="expanded"><i class="icon-minus-circle"></i></span></a>
						        </div>
						        <div id="menu4" class="collapse">
						          <div class="card-body">
									<p>게시판은 회원들끼리 자유롭게 소통할 수 있는 공간입니다. 회원들간의 QnA나 여행 Tips등을 통해
									다양한 정보를 얻을 수 있으므로 여행이 익숙하지 않다면 적극 이용해보세요.</p>
						          </div>
						        </div>
						      </div>

						      <div class="card">
						        <div class="card-header">
										  <a class="card-link" data-toggle="collapse"  href="#menu5" aria-expanded="false" aria-controls="menu5">
										  질문 5
										  <span class="collapsed"><i class="icon-plus-circle"></i></span><span class="expanded"><i class="icon-minus-circle"></i></span></a>
						        </div>
						        <div id="menu5" class="collapse">
						          <div class="card-body">
												<p>답변 5</p>
						          </div>
						        </div>
						      </div>

						      <div class="card">
						        <div class="card-header">
										  <a class="card-link" data-toggle="collapse"  href="#menu6" aria-expanded="false" aria-controls="menu6">
										  질문 6 
										  <span class="collapsed"><i class="icon-plus-circle"></i></span><span class="expanded"><i class="icon-minus-circle"></i></span></a>
						        </div>
						        <div id="menu6" class="collapse">
						          <div class="card-body">
												<p>답변 6.</p>
						          </div>
						        </div>
						      </div>
    						</div>
    					</div>
				    </div>
    			</div>
    		</div>
    	</div>
    </section>   


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
                <li><a href="<c:url value='/'/>" 					class="py-2 d-block">메인 화면</a></li>
                <li><a href="<c:url value='/about'/>" 				class="py-2 d-block">이용 방법</a></li>
                <li><a href="<c:url value='/tour'/>" 				class="py-2 d-block">여행 정보</a></li>
                <li><a href="<c:url value='/map/mapmain'/>"			class="py-2 d-block">지도 정보</a></li>
                <li><a href="<c:url value='/board/boardmain'/>" 	class="py-2 d-block">게시판</a></li>
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
    
  </body>
</html>

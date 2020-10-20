<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
<style>
body{
    margin-top:20px;
}
</style>
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
          <li class="nav-item">			<a href="<c:url value='/'/>" 				class="nav-link">메인 화면</a></li>
          <li class="nav-item">			<a href="<c:url value='/about'/>"  			class="nav-link">이용 방법</a></li>
          <li class="nav-item">			<a href="<c:url value='/tour'/>" 		 	class="nav-link">여행 정보</a></li>
          <li class="nav-item">			<a href="<c:url value='/map/mapmain'/>"		class="nav-link">지도 정보</a></li>
          <li class="nav-item active">	<a href="<c:url value='/board/boardmain'/>"	class="nav-link">게시판</a></li>
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
 
      <div class="hero-wrap js-fullheight" style="background-image: url(https://imgcp.aacdn.jp/img-a/1720/auto/global-aaj-front/article/2018/03/5aaf8edded201_5aaf8b623ce42_344573136.jpg);">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">
            	<span class="mr-2">함께 공유하는 여행정보</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">팁 &amp; 정보 게시판</h1>
          </div>
        </div>
      </div>
    </div>
    
    <section class="ftco-section ftco-degree-bg">
      <div class="container">
        <div class="row">
          <div class="col-md-8 ftco-animate">
            <h2 class="mb-3">${requestScope.vo.board_title}</h2>
            <p>${requestScope.vo.board_content}</p>
            <p>첨부파일 : <a href="<c:url value='/board/download?board_num=${requestScope.vo.board_num}'/>">${requestScope.vo.board_orifile}</a></p>
            
            <div class="about-author d-flex p-5 bg-light">
              <div class="bio align-self-md-center mr-5">
                <img src='<c:url value="/resources/images/person_1.jpg"/>' width="200" height="200" alt="Image placeholder" class="img-fluid mb-4">
              </div>
              <div class="desc align-self-md-center">
                <h3>${requestScope.vo.user_id}</h3>
                <p>작성자 소개 글</p>
              </div>
            </div>


            <div class="pt-5 mt-5">
              <h3 class="mb-5">${requestScope.replyCount}개의 리플</h3>
              <ul class="comment-list">
              	<c:forEach items="${requestScope.replyList}" var="replyList">
	                <li class="comment">
	                  <div class="vcard bio">
	                    <img src='<c:url value="/resources/images/person_1.jpg"/>' alt="Image placeholder">
	                  </div>
	                  <div class="comment-body">
	                    <h3>${replyList.user_id}</h3>
	                    <div class="meta">${replyList.reply_inputdate}</div>
	                    <p>${replyList.reply_content}</p>
	                  </div>
	                </li>
                </c:forEach>
              </ul>
              <!-- END comment-list -->
              
              <div class="comment-form-wrap pt-5">
                <h3 class="mb-5">리플 달기</h3>
                
                <form action="<c:url value='/board/replyWrite?board_num=${requestScope.vo.board_num}' />" class="p-5 bg-light" method="post">
                  <div class="form-group">
                    <label for="name">작성자</label>
                    <input type="text" name="user_id" value="${sessionScope.userid}" readonly="readonly" class="form-control" id="name">
                  </div>
                  <div class="form-group">
                    <label for="email">이메일</label>
                    <input type="email" value="${sessionScope.useremail}" readonly="readonly" class="form-control" id="email">
                  </div>
                  <div class="form-group">
                    <label for="message">리플 내용</label>
                    <textarea name="reply_content" id="message" cols="30" rows="10" class="form-control"></textarea>
                  </div>
                  <div class="form-group">
                    <input type="submit" value="리플 달기" class="btn py-3 px-4 btn-primary">
                  </div>

                </form>
              </div>
            </div>

          </div> <!-- .col-md-8 -->
          <div class="col-md-4 sidebar ftco-animate">
            <div class="sidebar-box">
              
              <form action="#" class="search-form">
                <div class="form-group">
                  <span class="icon fa fa-search"></span>
                  <input type="text" class="form-control" placeholder="키워드 검색">
                </div>
              </form>
           
            </div>
            <div class="sidebar-box ftco-animate">
              <div class="categories">
                <h3>카테고리</h3>
                <li><a href="#">여행 <span>N개</span></a></li>
                <li><a href="#">팁 <span>N개</span></a></li>
                <li><a href="#">관광지 <span>N개</span></a></li>
                <li><a href="#">음식점 <span>N개</span></a></li>
                <li><a href="#">호텔 <span>N개</span></a></li>
                <li><a href="#">항공편 <span>N개</span></a></li>
              </div>
            </div>

            <div class="sidebar-box ftco-animate">
              <h3>최근 게시글</h3>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url('<c:url value='/resources/images/image_1.jpg'/>');"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">게시글 제목</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="icon-calendar"></span>작성일</a></div>
                    <div><a href="#"><span class="icon-person"></span>작성자</a></div>
                    <div><a href="#"><span class="icon-chat"></span>리플 수</a></div>
                  </div>
                </div>
              </div>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url('<c:url value='/resources/images/image_2.jpg'/>');"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">게시글 제목</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="icon-calendar"></span>작성일</a></div>
                    <div><a href="#"><span class="icon-person"></span>작성자</a></div>
                    <div><a href="#"><span class="icon-chat"></span>리플 수</a></div>
                  </div>
                </div>
              </div>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url('<c:url value='/resources/images/image_3.jpg'/>');"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">게시글 제목</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="icon-calendar"></span>작성일</a></div>
                    <div><a href="#"><span class="icon-person"></span>작성자</a></div>
                    <div><a href="#"><span class="icon-chat"></span>리플 수</a></div>
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
    
  </body>
</html>

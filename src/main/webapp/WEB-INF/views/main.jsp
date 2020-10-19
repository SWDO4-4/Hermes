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
          <li class="nav-item active">	<a href="<c:url value='/'/>" 				 class="nav-link">메인 화면</a></li>
          <li class="nav-item">			<a href="<c:url value='/about'/>"			 class="nav-link">이용 방법</a></li>
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
    
    <div class="hero-wrap js-fullheight" style="background-image: url(https://data2.1freewallpapers.com/download/japan-osaka-city.jpg);">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
            <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><strong>헤르메스 <br></strong>일본 여행의 길잡이</h1>
            <p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">관광지 정보부터 주변시설, 지도, 환율, 날씨, 항공편까지!</p>
            <div class="block-17 my-4">
              <form action="" method="post" class="d-block d-flex">
                <div class="fields d-block d-flex">
                  <div class="textfield-search one-third">
                  	<input type="text" class="form-control" placeholder="검색할 내용을 입력하세요">
                  </div>
                  <div class="select-wrap one-third">
                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                    <select name="" id="" class="form-control" placeholder="키워드를 입력하세요">
                      <option value="">도시 검색</option>
                      <option value="">도쿄</option>
                      <option value="">오사카</option>
                      <option value="">고베</option>
                      <option value="">교토</option>
                    </select>
                  </div>
                </div>
                <input type="submit" class="search-submit btn btn-primary" value="Search">  
              </form>
            </div>
            <p>알고싶은 정보를 선택하세요!</p>
            <p class="browse d-md-flex">
            	<span class="d-flex justify-content-md-center align-items-md-center"><a href="#"><i class="flaticon-fork"></i>음식점</a></span>
            	<span class="d-flex justify-content-md-center align-items-md-center"><a href="#"><i class="flaticon-hotel"></i>호텔</a></span> 
            	<span class="d-flex justify-content-md-center align-items-md-center"><a href="#"><i class="flaticon-meeting-point"></i>주변 관광 정보</a></span> 
            	<span class="d-flex justify-content-md-center align-items-md-center"><a href="#"><i class="flaticon-shopping-bag"></i>쇼핑</a></span>
            </p>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section services-section bg-light">
      <div class="container">
        <div class="row d-flex">
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block text-center">
              <div class="d-flex justify-content-center"><div class="icon"><span class="flaticon-guarantee"></span></div></div>
              <div class="media-body p-2 mt-2">
                <h3 class="heading mb-3">합리적인 가격 비교</h3>
                <p>호텔, 항공편, 주변시설을 합리적으로 비교하실 수 있습니다</p>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block text-center">
              <div class="d-flex justify-content-center"><div class="icon"><span class="flaticon-like"></span></div></div>
              <div class="media-body p-2 mt-2">
                <h3 class="heading mb-3">추천 여행 정보</h3>
                <p>다른 사람이 추천한 여행 정보를 보거나, 나도 추천할 수 있습니다</p>
              </div>
            </div>    
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block text-center">
              <div class="d-flex justify-content-center"><div class="icon"><span class="flaticon-detective"></span></div></div>
              <div class="media-body p-2 mt-2">
                <h3 class="heading mb-3">주변의 시설을 한눈에 보기쉽게</h3>
                <p>지도와 함께 언제, 어디서든 빠르게 주변정보를 파악하세요</p>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block text-center">
              <div class="d-flex justify-content-center"><div class="icon"><span class="flaticon-support"></span></div></div>
              <div class="media-body p-2 mt-2">
                <h3 class="heading mb-3">최고의 여행 도우미</h3>
                <p>일본 여행은 Hermes 하나로 모든걸 해결할 수 있습니다</p>
              </div>
            </div>      
          </div>
        </div>
      </div>
    </section>
        <section class="ftco-section testimony-section bg-light">
      <div class="container">
        <div class="row justify-content-start">
          <div class="col-md-5 heading-section ftco-animate">
          	<span class="subheading">최고의 일본여행 사이트</span>
            <h2 class="mb-4 pb-3"><strong>왜</strong> 헤르메스를 사용할까요?</h2>
            <p>단 하나의 사이트로 일본 여행의 A-Z까지 한번에 해결할 수 있습니다.</p>
            <p>헤르메스가 처음이신 분은 이용 방법을 확인해주세요.</p>
            <p><a href="<c:url value='/about'/>" class="btn btn-primary btn-outline-primary mt-4 px-4 py-3">이용 방법 알아보기</a></p>
          </div>
					<div class="col-md-1"></div>
          <div class="col-md-6 heading-section ftco-animate">
          	<span class="subheading">읽을거리</span>
            <h2 class="mb-4 pb-3"><strong>최신</strong> 여행 팁</h2>
          	<div class="row ftco-animate">
		          <div class="col-md-12">
		            <div class="carousel-testimony owl-carousel">
		              <div class="item">
		                <div class="testimony-wrap d-flex">
		                  <div class="user-img mb-5" style="background-image: url('<c:url value="/resources/images/person_1.jpg"/>')">
		                    <span class="quote d-flex align-items-center justify-content-center">
		                      <i class="icon-quote-left"></i>
		                    </span>
		                  </div>
		                  <div class="text ml-md-4">
		                    <p class="mb-5">저는 도쿄 여행을 이렇게 계획했습니다.</p>
		                    <p class="name">양진규</p>
		                    <span class="position">도쿄 여행 팁</span>
		                  </div>
		                </div>
		              </div>
		              <div class="item">
		                <div class="testimony-wrap d-flex">
		                  <div class="user-img mb-5" style="background-image: url('<c:url value="/resources/images/person_2.jpg"/>')">
		                    <span class="quote d-flex align-items-center justify-content-center">
		                      <i class="icon-quote-left"></i>
		                    </span>
		                  </div>
		                  <div class="text ml-md-4">
		                    <p class="mb-5">저는 오사카 여행을 이렇게 계획했습니다.</p>
		                    <p class="name">최낙룡</p>
		                    <span class="position">나의 오사카 여행기</span>
		                  </div>
		                </div>
		              </div>
		              <div class="item">
		                <div class="testimony-wrap d-flex">
		                  <div class="user-img mb-5" style="background-image: url('<c:url value="/resources/images/person_3.jpg"/>')">
		                    <span class="quote d-flex align-items-center justify-content-center">
		                      <i class="icon-quote-left"></i>
		                    </span>
		                  </div>
		                  <div class="text ml-md-4">
		                    <p class="mb-5">고베 여행은 이렇게 하는 겁니다.</p>
		                    <p class="name">송홍규</p>
		                    <span class="position">전문가가 알려주는 고베 여행 가이드.</span>
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
    <section class="ftco-section ftco-destination">
    	<div class="container">
    		<div class="row justify-content-start mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate">
          	<span class="subheading">Best tourist attraction</span>
            <h2 class="mb-4"><strong>추천</strong> 주요 관광지</h2>
          </div>
        </div>
    		<div class="row">
    			<div class="col-md-12">
    				<div class="destination-slider owl-carousel ftco-animate">
    					<div class="item">
		    				<div class="destination">
		    					<a href="#" class="img d-flex justify-content-center align-items-center" 
		    						style="background-image: url('https://www.visakorea.com/dam/VCOM/regional/ap/Marquees/marquee-destinations-tokyo-1600x900.jpg');">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-search2"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<h3><a href="#">도쿄</a></h3>
		    					</div>
		    				</div>
	    				</div>
	    				<div class="item">
		    				<div class="destination">
		    					<a href="#" class="img d-flex justify-content-center align-items-center" 
		    					style="background-image: url(https://res.klook.com/images/fl_lossy.progressive,q_65/c_fill,w_1200,h_630,f_auto/w_80,x_15,y_15,g_south_west,l_klook_water/activities/mmgbxbfet2m7unj3yf4c/%EC%98%A4%EC%82%AC%EC%B9%B4%20%EC%95%84%ED%82%A4%EB%B0%94%20%EC%8A%A4%ED%8A%B8%EB%A6%AC%ED%8A%B8%20%EA%B3%A0%EC%B9%B4%ED%8A%B8.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-search2"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<h3><a href="#">오사카</a></h3>
		    					</div>
		    				</div>
	    				</div>
	    				<div class="item">
		    				<div class="destination">
		    					<a href="#" class="img d-flex justify-content-center align-items-center" 
		    					style="background-image: url('https://t1.daumcdn.net/cfile/tistory/2202BA345864C85D03');">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-search2"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<h3><a href="#">고베</a></h3>
		    					</div>
		    				</div>
	    				</div>
	    				<div class="item">
		    				<div class="destination">
		    					<a href="#" class="img d-flex justify-content-center align-items-center" 
		    					style="background-image: url('https://cdn.osaka-info.jp/fixtures/around-kansai-kyoto_ko_008.jpg');">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-search2"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<h3><a href="#">교토</a></h3>
		    					</div>
		    				</div>
	    				</div>
	    				<div class="item">
		    				<div class="destination">
		    					<a href="#" class="img d-flex justify-content-center align-items-center" 
		    					style="background-image: url('https://resources.matcha-jp.com/archive_files/jp/2015/01/-2015-01-07-16.26.17.png');">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-search2"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<h3><a href="#">나라</a></h3>
		    					</div>
		    				</div>
	    				</div>
	    				<div class="item">
		    				<div class="destination">
		    					<a href="#" class="img d-flex justify-content-center align-items-center" 
		    					style="background-image: url('https://www.gotokyo.org/kr/destinations/beyond-tokyo/images/main_pc_yokohama.jpg');">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-search2"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<h3><a href="#">요코하마</a></h3>
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
          	<span class="subheading">Special choice</span>
            <h2 class="mb-4"><strong>추천</strong>&nbsp;여행 정보</h2>
          </div>
        </div>    		
    	</div>
    	<div class="container-fluid">
    		<div class="row">
    			<div class="col-sm col-md-6 col-lg ftco-animate">
    				<div class="destination">
    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" 
    					style="background-image: url('https://www.visakorea.com/dam/VCOM/regional/ap/Marquees/marquee-destinations-tokyo-1600x900.jpg');">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
    					<div class="text p-3">
    						<div class="d-flex">
    							<div class="one">
		    						<h3><a href="#">도쿄</a></h3>
	    						</div>
	    						<div class="two">
	    							<span class="price">금액</span>
    							</div>
    						</div>
    						<p>일본의 최대 도시이자 수도 도쿄. 
    						일본의 과거부터 현재까지 모두 볼 수 있는 도쿄는 일본의 모든 것을 압축해놓은 도시다. 
    						아사쿠사에서 일본의 옛 에도시대 모습을 볼 수 있고, 
    						하라주쿠에서 일본의 개성있는 옷과 악세사리를 쇼핑할 수 있다. 
    						밤에는 시부야의 이자카야와 나이트클럽에서 일본의 밤문화를 체험할 수 있다. 
    						도쿄타워와 레인보우브릿지는 일본의 대표 야경 포인트이기도 하다. 
    						도쿄 디즈니랜드도 도쿄여행의 인기 코스다. 덴돈, 잔코나베, 무조림 등 
    						조촐한 맛집이 많아 식도락 여행으로도 제격.</p>
    						<p class="days"><span>N개의 정보</span></p>
    						<hr>
    						<p class="bottom-area d-flex">
    							<span><i class="icon-map-o"></i> 주변 지도 </span> 
    							<span class="ml-auto"><a href="#">보러가기</a></span>
    						</p>
    					</div>
    				</div>
    			</div>
    			<div class="col-sm col-md-6 col-lg ftco-animate">
    				<div class="destination">
    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" 
    					style="background-image: url('https://res.klook.com/images/fl_lossy.progressive,q_65/c_fill,w_1200,h_630,f_auto/w_80,x_15,y_15,g_south_west,l_klook_water/activities/mmgbxbfet2m7unj3yf4c/%EC%98%A4%EC%82%AC%EC%B9%B4%20%EC%95%84%ED%82%A4%EB%B0%94%20%EC%8A%A4%ED%8A%B8%EB%A6%AC%ED%8A%B8%20%EA%B3%A0%EC%B9%B4%ED%8A%B8.jpg');">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
    					<div class="text p-3">
    						<div class="d-flex">
    							<div class="one">
		    						<h3><a href="#">오사카</a></h3>
	    						</div>
	    						<div class="two">
	    							<span class="price">금액</span>
    							</div>
    						</div>
    						<p>일본 제2의 도시로 불릴 만큼 볼거리가 많은 오사카. 
    						오사카성이 대표적인 랜드마크이며, 특히 봄에 벚꽃이 폈을 때와 8월 등불축제 때 멋진 경관을 자랑한다. 
    						도톤보리에서의 맛집탐방과 신사이바시에서의 쇼핑코스는 대표적인 오사카 관광코스이다. 
    						숙소는 주로 번화가와 가까운 난바와 도톤보리 주변이 인기가 좋다.</p>
    						<p class="days"><span>N개의 정보</span></p>
    						<hr>
    						<p class="bottom-area d-flex">
    							<span><i class="icon-map-o"></i> 주변 지도</span> 
    							<span class="ml-auto"><a href="#">보러가기</a></span>
    						</p>
    					</div>
    				</div>
    			</div>
    			<div class="col-sm col-md-6 col-lg ftco-animate">
    				<div class="destination">
    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" 
    					style="background-image: url('https://t1.daumcdn.net/cfile/tistory/2202BA345864C85D03');">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
    					<div class="text p-3">
    						<div class="d-flex">
    							<div class="one">
		    						<h3><a href="#">고베</a></h3>
	    						</div>
	    						<div class="two">
	    							<span class="price">금액</span>
    							</div>
    						</div>
    						<p>일본에서 6번째로 큰 도시인 고베는 맛과 멋의 도시이다. 
    						유럽풍의 세련된 건물들이 즐비해 있어 마치 작은 유럽을 연상시킨다. 
    						철인 28호 동상과 함께 동심으로 돌아갈 수 있고, 모토마치는 대표적인 고베의 상점가로 쇼핑을 즐길 수 있다. 
    						일본 3대 와규중 하나인 고베소, 고베에만 있는 고베스위츠 등 다양한 먹거리가 있다. 
    						스타벅스 기타노이진칸점은 유형문화재로 등재되어 있어 한번 쯤 커피를 마실만 하다.</p>
    						<p class="days"><span>N개의 정보</span></p>
    						<hr>
    						<p class="bottom-area d-flex">
    							<span><i class="icon-map-o"></i> 주변 지도</span> 
    							<span class="ml-auto"><a href="#">보러가기</a></span>
    						</p>
    					</div>
    				</div>
    			</div>
    			<div class="col-sm col-md-6 col-lg ftco-animate">
    				<div class="destination">
    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" 
    					style="background-image: url('https://cdn.osaka-info.jp/fixtures/around-kansai-kyoto_ko_008.jpg');">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
    					<div class="text p-3">
    						<div class="d-flex">
    							<div class="one">
		    						<h3><a href="#">교토</a></h3>
	    						</div>
	    						<div class="two">
	    							<span class="price">금액</span>
    							</div>
    						</div>
    						<p>일본의 역사와 전통을 가장 잘 접할 수 있는 도시 교토. 
    						일본의 옛 수도답게 헤이안 시대의 문화가 남아있는 절, 신사, 역사 유적지가 대표적인 관광지이다. 
    						벚꽃, 단풍 명소로도 유명하다. 
    						교토는 가장 유명한 건출물인 금각사를 포함해 세계 문화 유산만 17가지를 가지고 있어, 
    						천천히 각 관광지를 둘러보며 여행하기에 좋은 도시다. 생선 정식 요리인 교카이세키가 유명하고, 
    						영화 게이샤의 추억 촬영지로 유명한 후시미이나리 신사가 인기 여행지다. 
    						교토의 사찰과 사원, 정원들은 사진을 찍는 여행객들의 출사지로도 유명하다</p>
    						<p class="days"><span>N개의 정보</span></p>
    						<hr>
    						<p class="bottom-area d-flex">
    							<span><i class="icon-map-o"></i> 여행 정보</span> 
    							<span class="ml-auto"><a href="#">보러가기</a></span>
    						</p>
    					</div>
    				</div>
    			</div>
    			<div class="col-sm col-md-6 col-lg ftco-animate">
    				<div class="destination">
    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" 
    					style="background-image: url('https://resources.matcha-jp.com/archive_files/jp/2015/01/-2015-01-07-16.26.17.png');">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
    					<div class="text p-3">
    						<div class="d-flex">
    							<div class="one">
		    						<h3><a href="#">나라</a></h3>
	    						</div>
	    						<div class="two">
	    							<span class="price">금액</span>
    							</div>
    						</div>
    						<p>커여운 사슴들이 돌아다니는 나라. 
    						오사카와 교토 근교에 위치하고 있어 잠깐 반나절 정도들리기 좋은 관광지이다. 
    						사슴공원에서 초록의 자연과 함께 사슴에게 먹이를 주던가 함께 운치있는 산책을 즐길 수 있다. 
    						사슴뿐만 아니라 일본에서 두번째로 높은 탑과 세계최대 목조 건물이라는 도다이지와 많은 일본의 국보를 볼 수 있는 관광지이다.</p>
    						<p class="days"><span>N개의 정보</span></p>
    						<hr>
    						<p class="bottom-area d-flex">
    							<span><i class="icon-map-o"></i> 주변 지도</span> 
    							<span class="ml-auto"><a href="#">보러가기</a></span>
    						</p>
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

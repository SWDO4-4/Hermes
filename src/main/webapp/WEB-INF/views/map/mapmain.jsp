<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
  <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <title>헤르메스 - 일본 여행의 길잡이</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
     <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
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

<style type="text/css">
      
       .controls {
        margin-top: 10px;
        border: 1px solid transparent;
        border-radius: 2px 0 0 2px;
        box-sizing: border-box;
        -moz-box-sizing: border-box;
        height: 32px;
        outline: none;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
      }
        
      #mode-selector {
        color: #fff;
        background-color: #f85959;
        margin-left: 0px;
        padding: 5px 11px 0px 11px;
        text-align: center;
        align-content: left;
      }

      #mode-selector label {
        font-family: Roboto;
        font-size: 13px;
        font-weight: 300;
      }
     
      @media print {
        #map {
          height: 1000px;
          margin: 0;
        }    
      }
      
</style>



<script>
      "use strict";

      // This example requires the Places library. Include the libraries=places
      // parameter when you first load the API. For example:
      // <script
      // src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">
     let map;
      function initMap() {
    	  var center={
  	            lat: 35.6894875,
  	            lng: 139.6917064
  	          }
    	  const localContextMapView = new google.maps.localContext.LocalContextMapView({
    	        element: document.getElementById('map'),
    	        placeTypePreferences: ['restaurant', 'tourist_attraction','cafe','department_store','hospital'],
    	        maxPlaceCount: 24,
    	        
    	        directionsOptions: { origin: center },
    	      });

    	      map = localContextMapView.map;
    	     
    	      map.setOptions({
    	    	  mapTypeControl: true,
    	          center: {
    	            lat: 35.6894875,
    	            lng: 139.6917064
    	          },
    	          zoom: 13
    	        });
    	    
        new AutocompleteDirectionsHandler(map);
  
      }

      class AutocompleteDirectionsHandler {
        constructor(map) {
          this.map = map;
          this.originPlaceId = "";
          this.destinationPlaceId = "";
          this.waypointsPlaceId = "";
          this.waypoints1PlaceId = "";
          this.waypoints2PlaceId = "";
          this.waypoints3PlaceId = "";
          this.waypoints4PlaceId = "";
        
         
          
          this.travelMode = google.maps.TravelMode.WALKING;
          this.directionsService = new google.maps.DirectionsService();
          this.directionsRenderer = new google.maps.DirectionsRenderer();

           this.directionsRenderer.setMap(map);
          this.directionsRenderer.setPanel(document.getElementById("right-panel"));
          const control = document.getElementById("mode-selector");
	
      
    
          const originInput = document.getElementById("origin-input");
          const  way1= [];
          
         
         const waypointsInput = document.getElementById("waypoints-input");
         const waypointsInput1 = document.getElementById("waypoints-input1");
         const waypointsInput2 = document.getElementById("waypoints-input2");
         const waypointsInput3 = document.getElementById("waypoints-input3");
         const waypointsInput4 = document.getElementById("waypoints-input4");
        
     
			
         
      
         const destinationInput = document.getElementById("destination-input");
          const modeSelector = document.getElementById("mode-selector");
        
          const originAutocomplete = new google.maps.places.Autocomplete(
            originInput
          ); // Specify just the place data fields that you need.

          originAutocomplete.setFields(["place_id"]);
			
        const waypointsAutocomplete = new google.maps.places.Autocomplete(
                  waypointsInput
                ); // Specify just the place data fields that you need.

                waypointsAutocomplete.setFields(["place_id"]);
        		
                const waypoints1Autocomplete = new google.maps.places.Autocomplete(
                        waypointsInput1
                      ); // Specify just the place data fields that you need.

                      waypoints1Autocomplete.setFields(["place_id"]);

                        const waypoints2Autocomplete = new google.maps.places.Autocomplete(
                              waypointsInput2
                            ); // Specify just the place data fields that you need.

                            waypoints2Autocomplete.setFields(["place_id"]);

                             const waypoints3Autocomplete = new google.maps.places.Autocomplete(
                                    waypointsInput3
                                  ); // Specify just the place data fields that you need.

                                  waypoints3Autocomplete.setFields(["place_id"]);
                                  const waypoints4Autocomplete = new google.maps.places.Autocomplete(
                                          waypointsInput4
                                        ); // Specify just the place data fields that you need.

                                        waypoints4Autocomplete.setFields(["place_id"]);

            
       
          const destinationAutocomplete = new google.maps.places.Autocomplete(
            destinationInput
          ); // Specify just the place data fields that you need.

          destinationAutocomplete.setFields(["place_id"]);
          this.setupClickListener(
            "changemode-walking",
            google.maps.TravelMode.WALKING
          );
          this.setupClickListener(
            "changemode-driving",
            google.maps.TravelMode.DRIVING
          );

         
          
          this.setupPlaceChangedListener(originAutocomplete, "ORIG");
          this.setupPlaceChangedListener(waypointsAutocomplete, "WAY");
          this.setupPlaceChangedListener(waypoints1Autocomplete, "WAY1");
          this.setupPlaceChangedListener(waypoints2Autocomplete, "WAY2");
          this.setupPlaceChangedListener(waypoints3Autocomplete, "WAY3");
          this.setupPlaceChangedListener(waypoints4Autocomplete, "WAY4");
         
        this.setupPlaceChangedListener(destinationAutocomplete, "DEST");
         
        } // Sets a listener on a radio button to change the filter type on Places
        // Autocomplete.

        setupClickListener(id, mode) {
          const radioButton = document.getElementById(id);
          radioButton.addEventListener("click", () => {
            this.travelMode = mode;
            this.route();
          });
        }

        setupPlaceChangedListener(autocomplete, mode) {
          autocomplete.bindTo("bounds", this.map);
          autocomplete.addListener("place_changed", () => {
            const place = autocomplete.getPlace();

            if (!place.place_id) {
              window.alert("값을 다 입력해주세요.");
              return;
            }

            if (mode === "ORIG") {
              this.originPlaceId = place.place_id;
              this.waypointsPlaceId = place.place_id;
              this.waypoints1PlaceId = place.place_id;
              this.waypoints2PlaceId = place.place_id;
              this.waypoints3PlaceId = place.place_id;
              this.waypoints4PlaceId = place.place_id;
             
            } 
             else {
                this.destinationPlaceId = place.place_id;
            
               
               
               
               
            }

            this.route();
          });
        }
			
        route() {
          if (!this.originPlaceId || !this.destinationPlaceId  || !this.waypointsPlaceId) {
            return;
          }
          const  way= [];
          const waypointsInput = document.getElementById("waypoints-input");
          const checkboxArray = document.getElementsByName("waypoints-input");
        
          var a=0;
        	 for (let i = 0; i < checkboxArray.length; i++) {
           	if(checkboxArray[a].value !=""){
             	way.push({
                	 location: checkboxArray[a].value,
                	 stopover: true
              	 });
             	 a=a+1;
               }
           }console.log(way);
           
          const me = this;
     
          this.directionsService.route(
            {
              origin: {
                placeId: this.originPlaceId
              },
               waypoints: 
                   way,
              destination: {
                placeId:  this.destinationPlaceId
              },
              optimizeWaypoints: false,
              travelMode: this.travelMode
            },
            (response, status) => {
              if (status === "OK") {
                me.directionsRenderer.setDirections(response);
              } else {
                window.alert("모든 값을 입력해주세요." + status);
              }
            }
          );
        }
      }
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
          <li class="nav-item ">		<a href="<c:url value='/'/>" 			 	class="nav-link">메인 화면</a></li>
          <li class="nav-item">			<a href="<c:url value='/about'/>"			class="nav-link">이용 방법</a></li>
          <li class="nav-item">			<a href="<c:url value='/tour'/>"			class="nav-link">여행 정보</a></li>
          <li class="nav-item active">	<a href="<c:url value='/map/mapmain'/>"		class="nav-link">지도 정보</a></li>
          <li class="nav-item">			<a href="<c:url value='/board/boardmain'/>" class="nav-link">게시판</a></li>
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
    
    
     <div class="hero-wrap js-fullheight" style="background-image: url(https://holidaygolf.co.kr/wp-content/uploads/2017/04/dvwbivi5.jpg);">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span>지도와 함께 하는 일본여행</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">지도 정보</h1>
          </div>
        </div>
      </div>
    </div>

	 <section class="ftco-section ftco-degree-bg">
      <div class="container">
        <div class="row">
			<div class="col-lg-3 sidebar">
        		<div class="sidebar-wrap bg-light ftco-animate">
        			<h3 class="heading mb-4">경유지 검색</h3>
        				<div class="fields">
		              <div class="form-group">
		                <input type="text" id="origin-input" class="form-control" placeholder="출발지">
		              </div>
		                 <input id="waypoints-input" name="waypoints-input" class="controls" type="text" placeholder="경유지">
				       	 <input id="waypoints-input1" name="waypoints-input" class="controls" type="text" placeholder="경유지">
				      	 <input id="waypoints-input2" name="waypoints-input" class="controls" type="text" placeholder="경유지">
				         <input id="waypoints-input3" name="waypoints-input" class="controls" type="text" placeholder="경유지">
				         <input id="waypoints-input4" name="waypoints-input" class="controls" type="text" placeholder="경유지">
		              
		              <br><br>
		           
					  <br>
		              <input id="destination-input" class="form-control" type="text" placeholder="목적지">
		              <br>
		              <div class="form-group">
		                <input type="submit" value="검색" class="btn btn-primary py-3 px-5">
		              </div>
		            </div>
        		</div>
        	 </div>
        	 
        	<div class="col-lg-9">
          	<div class="row">
          		<div class="col-md-12 ftco-animate">
          				<div class="com-md-6" id="map" style="height: 600px; width: 100% "></div>	
          			</div>
          		</div>         		
          	</div>
	          	
		     <div id="right-panel" style="margin-left: 30px">
		      	<div>
			      	<div id="mode-selector" class="controls">
				        <input type="radio"name="type" id="changemode-walking" checked="checked">
				        <label for="changemode-walking">도보</label>
				        &nbsp;&nbsp;&nbsp;
				        <input type="radio" name="type" id="changemode-driving">
				        <label for="changemode-driving">운전</label>
			   		</div>
		 	   </div>     
			</div>
          	
          	
			</div>
       </div>
      </section>



<!-- start footer -->

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
                <li><a href="<c:url value='/map/mapmain'/>"		class="py-2 d-block">지도 정보</a></li>
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

  <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
  <script src="https://maps.googleapis.com/maps/api/js?libraries=localContext,places&v=beta&weekly&key=AIzaSyDtPfXJlAmrQo3VE2gaHIkejYe0urbhoO0&callback=initMap"defer></script>
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
  <script src="<c:url value='/resources/js/main.js'/>"></script>
    
  </body>
</html>

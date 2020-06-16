<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/includes/header.jsp" flush="false" />
<section id="features" class="container services">
   <div id = "content-body" >
        <section id="title" style="background-image: url('assets/img/sansam02.jpg'); background-size: cover; justify-content: center; display: flex; height: auto; min-height: 270px; background-position: center;">

  <section class="page-section" id="about">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8 text-center">
                        <h2 style="text-shadow:1px 1px 3px #000; color: #ffffff">귀여운 반려동물들의 건강을 관리하세요!</h2>
                        <hr class="divider light my-4" />
                        <a class="btn btn-light btn-xl js-scroll-trigger" href="/PETMILYPROJECT/choi/health/healthManagement.jsp">건강다이어리</a>
                    </div>
                </div>
            </div>
        </section>
   </section>
        <!-- Services section-->
        <section class="page-section" id="services">
            <div class="container">
                <h2 class="text-center mt-0">PETMILY! 무슨 기능이 있나요?</h2>
                <hr class="divider my-4" />
                <div class="row">
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <i class="fa fa-4x fa-paw text-primary mb-4"></i>
                            <h3 class="h4 mb-2">마이펫</h3>
                            <p class="text-muted mb-0">귀여운 반려동물을 등록하세요!</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <i class="fa fa-4x fa-calendar-plus-o text-primary mb-4"></i>
                            <h3 class="h4 mb-2">건강다이어리</h3>
                            <p class="text-muted mb-0">매일매일 PET의 건강을 기록하고 관리해보세요!</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <i class="fa fa-4x fa-thermometer-3 text-primary mb-4"></i>
                            <h3 class="h4 mb-2">병원예약</h3>
                            <p class="text-muted mb-0"> 아기가 아파하나요? 근처 병원을 찾아드려요.</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <i class="fa fa-4x fa-comments-o text-primary mb-4"></i>
                            <h3 class="h4 mb-2">펫Talk</h3>
                            <p class="text-muted mb-0">반려동물 대신 우리가 소통해요!</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Call to action section-->
        <div id="content" class="container">
        <div class="content-body">
            <div id="demo" class="carousel slide" data-ride="carousel">
            	<div class="carousel-inner">
            		<!-- 슬라이드 쇼 -->
            		<div class="carousel-item active">
            			<!--가로-->
            			<img class="d-block w-100" src="assets/img/sansam01.jpg" alt="First slide">
             			<div class="carousel-caption d-none d-md-block"></div>
            		</div>
           		<div class="carousel-item">
           			<img class="d-block w-100" src="assets/img/sansam02.jpg" alt="Third slide">
           		</div>
           		<div class="carousel-item">
           			<img class="d-block w-100" src="assets/img/sansam03.jpg" alt="Third slide">
           		</div>
           		<!-- / 슬라이드 쇼 끝 -->

           		<!-- 왼쪽 오른쪽 화살표 버튼 -->
           		<a class="carousel-control-prev" href="#demo" data-slide="prev">
           		<span class="carousel-control-prev-icon" aria-hidden="true"></span>
           		<!-- <span>Previous</span> -->
           		</a>
           		<a class="carousel-control-next" href="#demo" data-slide="next">
           		<span class="carousel-control-next-icon" aria-hidden="true">
           		</span>
           		<!-- <span>Next</span> -->
           		</a>
           		<!-- / 화살표 버튼 끝 -->

           		<!-- 인디케이터 -->
           		<ul class="carousel-indicators">
           			<li data-target="#demo" data-slide-to="0" class="active"></li>
           			<!--0번부터시작-->
           			<li data-target="#demo" data-slide-to="1"></li>
           			<li data-target="#demo" data-slide-to="2"></li>
           		</ul>
           		<!-- 인디케이터 끝 -->
           	</div>
        </div>
	</div>
        </div>
</div>
<footer>
<jsp:include page="/WEB-INF/views/includes/footer.jsp" flush="false" />

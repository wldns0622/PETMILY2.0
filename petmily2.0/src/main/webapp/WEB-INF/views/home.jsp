<%@page import="com.petmily.member.domain.HospitalMemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>INSPINIA - Landing Page</title>

    <!-- Bootstrap core CSS -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Animation CSS -->
    <link href="/resources/css/animate.css" rel="stylesheet">
    <link href="/resources/font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/resources/css/style.css" rel="stylesheet">

    <style type="text/css">
    #contact{
	margin-top: 0px;

    }
      .dropdown-item div{
    color: black;
    box-sizing:
    }

    .dropdown-menu .dropdown-item .link-block{
    background-color: gray;
    }
    .landing-page .navbar-default .nav li a strong{
      color: black;
    }
    </style>

</head>
<body id="page-top" class="landing-page no-skin-config">
<div class="navbar-wrapper">
    <nav class="navbar navbar-default navbar-fixed-top navbar-expand-md" role="navigation">
        <div class="container">
            <a class="navbar-brand" href="#"><i class="fa fa-paw "></i>&nbsp;PETMILY</a>
            <div class="navbar-header page-scroll">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
                    <i class="fa fa-bars"></i>
                </button>
            </div>
            <div class="collapse navbar-collapse justify-content-end" id="navbar">
                <ul class="nav navbar-nav navbar-right">
                <c:if test="${member.code eq 3003}">
                    <li><a class="nav-link page-scroll" href="/admin/main.admin">관리자페이지</a></li>
                </c:if>
                <c:if test="${hospitalMember != null }">
                    <li><a class="nav-link page-scroll" href="/hospitalAdmin/main">병원 페이지</a></li>
                </c:if>
                    <li><a class="nav-link page-scroll" href="/">Home</a></li>
                    <li><a class="nav-link page-scroll" href="/hospital/hospital">동물병원 찾기</a></li>
                    <li><a class="nav-link page-scroll" href="/reservation/reservationList">예약 현황</a></li>
                    <li><a class="nav-link" href="/mypet/list">마이펫 건강관리</a></li>
                    <li><a class="nav-link" href="/pettalk/list">펫 톡</a></li>
                    <li><a class="nav-link page-scroll" href="#contact">Contact</a></li>
                    <li><a class="dropdown-toggle count-info" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-bell"></i><span style="position:relative;" class="label label-primary">0</span>
                    </a><ul style="left: auto;"class="dropdown-menu dropdown-alerts">
                    </ul>
                    </li>
                    <li>
                    	<a class="nav-link page-scroll" href="/member/login"><span class="glyphicon glyphicon-user" aria-hidden="true">
                    	<c:choose>
	                    	<c:when test="${not empty member}">
	                    		<span>${member.id}님 환영합니다</span>
	                    	</c:when>
	                    	<c:when test="${not empty hospitalMember}">
	                    		<span>${hospitalMember.hsptId}님 환영합니다</span>
	                    	</c:when>
	                    	<c:otherwise>
	                    		<span>로그인을 해주세요</span>
	                    	</c:otherwise>
	                    </c:choose>
                    	</span></a>
                    </li>
                    <c:if test="${not empty member && not empty hospitalMember}">
						<li><a class="nav-link page-scroll" href="/member/login">로그인</a></li>
                    </c:if>

                </ul>

            </div>
        </div>
    </nav>
</div>

<div id="inSlider" class="carousel slide" data-ride="carousel" >
    <ol class="carousel-indicators">
        <li data-target="#inSlider" data-slide-to="0" class="active"></li>
        <li data-target="#inSlider" data-slide-to="1"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="carousel-item active">
            <div class="container">
                <div class="carousel-caption">
                    <h1 style="text-shadow:1px 1px 3px #000; color: #ffffff">
                        귀여운 반려동물들을 기록하고,<br> 관리하세요!<br/>
                        <br/>
                        </h1>
                </div>
                <div style="margin-top: 50px; margin-right: 700px" class="carousel-image wow zoomIn">
                    <img src="/resources/img/49.png" alt="dog"/>
                </div>
            </div>
            <!-- Set background for slide in css -->
            <div class="header-back one"></div>

        </div>
        <div class="carousel-item">
            <div class="container">
                <div class="carousel-caption blank">
                    <h1>강아지들 대신 우리가 소통해요! <br/> 팻톡에서.</h1>
                    <p></p>
                    <p><a class="btn btn-lg btn-primary" href="/pettalk/list" role="button">팻톡 바로가기</a></p>
                </div>
            </div>
            <!-- Set background for slide in css -->
            <div class="header-back two"></div>
        </div>
    </div>
    <a class="carousel-control-prev" href="#inSlider" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#inSlider" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>



<section  class="container features m-t">
    <div class="row m-b-xl">
        <div class="col-lg-12 text-center">
            <div class="navy-line"></div>
            <h1>팻밀리 프로젝트입니다.<br/> <span class="navy">회원가입 후 더 많은 기능을 체험해보세요!</span> </h1>
            <p></p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3 text-center wow fadeInLeft">
            <div>
                <i class="fa fa-mobile features-icon"></i>
                <h2>마이펫</h2>
                <p>귀여운 반려동물을 등록하세요!</p>
                <p><a class="navy-link" href="#" role="button">바로가기 &raquo;</a></p>
            </div>
            <div class="m-t-lg">
                <i class="fa fa-bar-chart features-icon"></i>
                <h2>건강다이어리</h2>
                <p>매일매일 PET의 건강을 기록하고 관리해보세요!</p>
                <p><a class="navy-link" href="#" role="button">바로가기 &raquo;</a></p>
            </div>
        </div>
        <div style="box-shadow:5px 3px 13px 4px"class="col-md-6 text-center  wow zoomIn">
            <img src="/resources/img/dashimg.png" alt="dashboard" class="img-fluid">
        </div>
        <div class="col-md-3 text-center wow fadeInRight">
            <div>
                <i class="fa fa-plus-square features-icon"></i>
                <h2>병원예약</h2>
                <p>아기가 아파하나요? 근처 병원을 찾아드려요.</p>
                <p><a class="navy-link" href="#" role="button">바로가기 &raquo;</a></p>
            </div>
            <div class="m-t-lg">
                <i class="fa fa-paw  features-icon"></i>
                <h2>PetTalk</h2>
                <p>반려동물 대신 우리가 소통해요!</p>
                <p><a class="navy-link" href="/pettalk/list" role="button">바로가기 &raquo;</a></p>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12 text-center">
            <div class="navy-line"></div>
            <h1>관리자 기능</h1>
            <p>위 관리자 화면 접근은 권한이 필요합니다. </p>
        </div>
    </div>
</section>

<section id="team" class="gray-section team">
    <div class="container">
        <div class="row m-b-lg">
            <div class="col-lg-12 text-center">
                <div class="navy-line"></div>
                <h1>Our Team</h1>
                <p>KOSTA 197기 팻밀리프로젝트의 개발자들을 소개합니다.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-3 wow fadeInLeft">
                <div class="team-member">
                    <img src="img/landing/avatar3.jpg" class="img-fluid rounded-circle img-small" alt="">
                    <h4><span class="navy">조장</span> 정지운</h4>
                    <p>병원페이지,예약시스템 개발 </p>
                    <ul class="list-inline social-icon">
                        <li class="list-inline-item"><a href="#"><i class="fa fa-linkedin"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="team-member wow zoomIn">
                    <img src="img/landing/avatar1.jpg" class="img-fluid rounded-circle" alt="">
                    <h4>은행운</h4>
                    <p>펫톡,알림,관리자페이지 개발</p>
                    <ul class="list-inline social-icon">
                        <li class="list-inline-item"><a href="#"><i class="fa fa-linkedin"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-3 wow fadeInRight">
                <div class="team-member">
                    <img src="img/landing/avatar2.jpg" class="img-fluid rounded-circle img-small" alt="">
                    <h4>최서영</h4>
                    <p>마이펫 건강관리,다이어리 개발</p>
                    <ul class="list-inline social-icon">
                        <li class="list-inline-item"><a href="#"><i class="fa fa-linkedin"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-3 wow fadeInRight">
                <div class="team-member">
                    <img src="img/landing/avatar2.jpg" class="img-fluid rounded-circle img-small" alt="">
                    <h4>유지예</h4>
                    <p>시큐리티 적용, 회원시스템, 동물병원찾기 개발</p>
                    <ul class="list-inline social-icon">
                        <li class="list-inline-item"><a href="#"><i class="fa fa-linkedin"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="/WEB-INF/views/includes/footer.jsp" flush="false" />



<!-- Mainly scripts -->
<script src="/resources/js/jquery-3.1.1.min.js"></script>
<script src="/resources/js/popper.min.js"></script>
<script src="/resources/js/bootstrap.js"></script>
<script src="/resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="/resources/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="/resources/js/inspinia.js"></script>
<script src="/resources/js/plugins/pace/pace.min.js"></script>
<script src="/resources/js/plugins/wow/wow.min.js"></script>


<script>

$('.dropdown-toggle').on('click',function(){
	noTiList();
})

function noTiList(deleteYn) {


	var parameterTmp = deleteYn;

	console.log(parameterTmp)

	if(!parameterTmp){
		parameterTmp = 'N';
		}
	console.log(parameterTmp)


	$.ajax({
		url : "/noti/notiList",
		type : "POST",
		data : {"deleteYn":parameterTmp},
		dataType:"json",
		success : function(data) {

			$('.dropdown-alerts').children().remove();


			for (var i = 0; i < data.length; i++) {
				if(data[i].memToId == null){
					data[i].memToId = "(이름없음)"
				}
				if(data[i].alertCode == 2001){
					data[i].msg= "'"+data[i].memToId+"' 님에게 " + data[i].boardNo+"번 게시물이 '좋아요'를 받았습니다."
				}else if(data[i].alertCode == 2003){
					data[i].msg= "'"+data[i].memToId+"' 님이 "+data[i].boardNo+"번 게시물에 '댓글'을 달았습니다."
				}
			}

			for (var i = 0; i < data.length; i++) {
				$('.dropdown-alerts').append('<li><a href="/pettalk/detail?seq='+ data[i].boardNo +'" class="dropdown-item"><div><i class="fa fa-envelope fa-fw"></i>'+data[i].msg+'<br><span class="float-right text-muted small">'+data[i].alertCreateDt+'</span></div></a></li>')
			}
			$('.dropdown-alerts').append('<br><br><div class="text-center link-block"><a href="/noti/notiList" class="btn btn-primary btn-rounded btn-block"><strong style="color:white">See All Alerts</strong><i class="fa fa-angle-right"></i></a></div>')

			len = data.length;

			if(len=='0'){

				$('.dropdown-alerts').children().remove();

				$('.dropdown-alerts').append('<div class="text-center link-block"><strong>알림이 없습니다.</strong><i class="fa fa-angle-right"></i></div>')

			}

			$('.label-primary').text(len);
		},
		error : function(){
			//세션이 없을때

			$('.dropdown-alerts').children().remove();
			$('.dropdown-alerts').append('<div class="text-center link-block"><a href="/member/login" class="btn btn-primary btn-rounded btn-block"><strong style="color:white">로그인 해주세요.</strong><i class="fa fa-angle-right"></i></a></div>')

		}
	})
};

    $(document).ready(function () {
    	noTiList();

        $('body').scrollspy({
            target: '#navbar',
            offset: 80
        });

        // Page scrolling feature
        $('a.page-scroll').bind('click', function(event) {
            var link = $(this);
            $('html, body').stop().animate({
                scrollTop: $(link.attr('href')).offset().top - 50
            }, 500);
            event.preventDefault();
            $("#navbar").collapse('hide');
        });
    });

    var cbpAnimatedHeader = (function() {
        var docElem = document.documentElement,
                header = document.querySelector( '.navbar-default' ),
                didScroll = false,
                changeHeaderOn = 200;
        function init() {
            window.addEventListener( 'scroll', function( event ) {
                if( !didScroll ) {
                    didScroll = true;
                    setTimeout( scrollPage, 250 );
                }
            }, false );
        }
        function scrollPage() {
            var sy = scrollY();
            if ( sy >= changeHeaderOn ) {
                $(header).addClass('navbar-scroll')
            }
            else {
                $(header).removeClass('navbar-scroll')
            }
            didScroll = false;
        }
        function scrollY() {
            return window.pageYOffset || docElem.scrollTop;
        }
        init();

    })();

    // Activate WOW.js plugin for animation on scrol
    new WOW().init();

</script>

</body>
</html>

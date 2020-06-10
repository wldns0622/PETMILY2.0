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
     <link rel="shortcut icon" href="data:image/x-icon;" type="image/x-icon">
    <!-- Add Your favicon here -->
    <!--<link rel="icon" href="img/favicon.ico">-->

    <title>INSPINIA - Landing Page</title>

    <!-- Bootstrap core CSS -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
	<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote-bs4.min.css"
	rel="stylesheet">
    <!-- Animation CSS -->
    <link href="/resources/css/animate.css" rel="stylesheet">

    <link href="/resources/font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
    <link href="/resources/css/style.css" rel="stylesheet">
    <script src="/resources/js/jquery-3.3.1.min.js"></script>
     <link href="/resources/css/plugins/ladda/ladda-themeless.min.css" rel="stylesheet">
    
    <style type="text/css">
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

<body id="page-top" class="landing-page">
<div class="navbar-wrapper">
    <nav class="navbar navbar-default navbar-fixed-top navbar-expand-md" role="navigation">
        <div class="container">
            <a class="navbar-brand" href="#">PETMILY</a>
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
                    <li><a class="nav-link page-scroll" href="#page-top">Home</a></li>
                    <li><a class="nav-link page-scroll" href="#features">Features</a></li>
                    <li><a class="nav-link page-scroll" href="/hospital/hospital">동물병원 찾기</a></li>
                    <li><a class="nav-link" href="/mypet/list">마이펫 건강관리</a></li>
                    <li><a class="nav-link" href="/pettalk/list">펫 톡</a></li>
                    <li><a class="nav-link page-scroll" href="#contact">Contact</a></li>
                    <li><a class="dropdown-toggle count-info" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-bell"></i><span style="position:relative;" class="label label-primary">0</span>
                    </a><ul style="left: auto;"class="dropdown-menu dropdown-alerts">
                    </ul>
                    </li>
                    <li>
                    	<a class="nav-link page-scroll" href="/member/login"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
                    </li>
                </ul>
                
            </div>
        </div>
    </nav>
</div>



<section id="title" style="background-image: url('/resources/img/sansam02.jpg'); background-size: cover; justify-content: center; display: flex; height: auto; min-height: 270px; background-position: center;"></section>

<script type="text/javascript">
$(document).ready(function() {
	noTiList();
	
})


$('.dropdown-toggle').on('click',function(){
	noTiList();
})

function noTiList() {
	$.ajax({
		url : "/noti/notiList",
		type : "POST",
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

</script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
	<link rel="icon" type="image/png" href="/resources/member/images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="/resources/member/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/resources/member/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="/resources/member/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="/resources/member/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="/resources/member/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="/resources/member/vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="/resources/member/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="/resources/member/vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="/resources/member/css/util.css">
	<link rel="stylesheet" type="text/css" href="/resources/member/css/main.css">

<style type="text/css">
	.login-select {
		padding-left: 40px;
	}
	
	.member-login {
		padding-right: 30px;
	}
	
</style>
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('/resources/member/images/samoyed1.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					PETMILY Login
				</span>
				<div class="login-add">
				<form class="login100-form validate-form p-b-33 p-t-5" method="POST" action="/member/login">

					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" type="text" name="id" placeholder="ID">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>
					<div class="wrap-input100 login-select">
						<input class="input10 member-login" type="radio" id="" name="member" value="member">일반회원 로그인
						<input class="input10" type="radio" name="member" value="hospitalMember">병원회원 로그인
						<span class="focus-input100"></span>
					</div>
					<div class="container-login100-form-btn m-t-32">
						<input type="submit" class="login100-form-btn" value="Login"/>
					</div>
				</form>
				<a href="/member/memberSignUp" class="signUp btn btn-info" id="member-sign-up">일반 회원 가입하기</a>
				<a href="/member/hospitalSignUp" class="signUp btn btn-info" id="hospital-sign-up">병원 회원 가입하기</a>
				</div>
			</div>
		</div>
	</div>

	<div id="dropDownSelect1"></div>
	
	<script src="/resources/member/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="/resources/member/vendor/animsition/js/animsition.min.js"></script>
	<script src="/resources/member/vendor/bootstrap/js/popper.js"></script>
	<script src="/resources/member/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="/resources/member/vendor/select2/select2.min.js"></script>
	<script src="/resources/member/vendor/daterangepicker/moment.min.js"></script>
	<script src="/resources/member/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="/resources/member/vendor/countdowntime/countdowntime.js"></script>
	<script src="/resources/member/js/main.js"></script>

</body>
</html>
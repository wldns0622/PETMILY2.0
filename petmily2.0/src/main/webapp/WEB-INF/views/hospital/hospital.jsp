<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="Fashi Template">
<meta name="keywords" content="Fashi, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Hospital Information</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="jquery.js" type="text/javascript"></script>
<script type="text/javascript" src="/resources/js/hospital.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3faf7a6914d9ce206655c6300e9c7478"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>

<style type="text/css">
	* {
		font-family: 함초롬돋움;
	}
	
	.map-location {
		margin: 150px 50px 200px 200px;
		display: inline-block;
	}
	
	#map {
		 width: 800px; 
		 height: 600px;
	}
	.hospital-search h2 {
		margin: 150px 50px 0px 200px;
		text-align: center;
		font-family: 함초롬돋움;
	}
	
	.hospital-detail  {
		display: inline-block;
		
	}
	
	.entry {
		margin: -600px 0px 5px 0px;
		position: absolute;
	}
	
	.entry name {
		font-size: 25px;
		font-weight: bold;
	}
</style>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="/PETMILYPROJECT/assets/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="/PETMILYPROJECT/assets/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="/PETMILYPROJECT/assets/css/themify-icons.css" type="text/css">
<link rel="stylesheet" href="/PETMILYPROJECT/assets/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="/PETMILYPROJECT/assets/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="/PETMILYPROJECT/assets/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="/PETMILYPROJECT/assets/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="/PETMILYPROJECT/assets/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="/PETMILYPROJECT/assets/css/style.css" type="text/css">

</head>

<body>
	<%-- ${ requestScope.hospitals } --%>
	<%--     <input id="result" type="hidden" value="${ requestScope.hospitals }"> --%>
	<header>
		<jsp:include page="/WEB-INF/views/includes/header.jsp" flush="false" />
	</header>
	<div>
		<div class="hospital-search">
			<div>
				<h2>병원 찾기</h2>
			</div>
		</div>

		<div class="map-location">
			<div id="map"></div>

		</div>
		<div class="hospital-detail">
			<div class="entry">
				<!-- <tr>
					<td class="name"></td>
					<td class="tel"></td>
					<td class="address"></td>
					<td class="roadAddress"></td>
					<td class="nightCare"></td>
				</tr> -->
			</div>
		</div>

	</div>
	<footer>
		<jsp:include page="/WEB-INF/views/includes/footer.jsp" flush="false" />
	</footer>
	<!-- Js Plugins -->
	<script src="/PETMILYPROJECT/assets/js/bootstrap.min.js"></script>
	<script src="/PETMILYPROJECT/assets/js/jquery-ui.min.js"></script>
	<script src="/PETMILYPROJECT/assets/js/jquery.countdown.min.js"></script>
	<script src="/PETMILYPROJECT/assets/js/jquery.nice-select.min.js"></script>
	<script src="/PETMILYPROJECT/assets/js/jquery.zoom.min.js"></script>
	<script src="/PETMILYPROJECT/assets/js/jquery.dd.min.js"></script>
	<script src="/PETMILYPROJECT/assets/js/jquery.slicknav.js"></script>
	<script src="/PETMILYPROJECT/assets/js/owl.carousel.min.js"></script>
	<script src="/PETMILYPROJECT/assets/js/main.js"></script>
</body>
</html>

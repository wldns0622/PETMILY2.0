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
</head>

<body>
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
					<td class="hosptName"></td>
					<td class="hosptTel"></td>
					<td class="hosptAddress"></td>
					<td class="hosptRoadAddress"></td>
					<td class="hosptBusinessHours"></td>
				</tr> -->
			</div>
		</div>

	</div>
</body>
</html>

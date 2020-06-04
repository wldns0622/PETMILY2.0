<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/includes/header.jsp"%>

<title>Hospital Information</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="jquery.js" type="text/javascript"></script>
<script type="text/javascript" src="/resources/js/hospital.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3faf7a6914d9ce206655c6300e9c7478"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>

<style type="text/css">
	* {
		font-family: 함초롬돋움;
		margin : 0px;
		padding : 0px;
		box-sizing: border-box;
	}

	.search {
		
	}
	
	.searchbox-hospital {
		margin-left: 200px;
		text-align: center;
		width: 300px;
	}
	
	#map {
		 width: 700px; 
		 height: 500px;
	}
	.hospital-search h2 {
		text-align: center;
		font-family: 함초롬돋움;
	}
	
	.hospital-detail  {
		display: inline-block;
	}
	
	.ibox-title {
		padding: 15px 90px 15px 80px;
	}
	
	.map-wrap {
		padding: 10px 10px 0px 5px;
	}
	
	.map-search {
		padding: 10px 0px 10px 0px;
	}
	
	.hospital-select-search {
		padding: 10px 0px;
	}
	
	.select-search {
		padding-right: 15px;
	}
	
	.detail-info {
		padding-top: 60px;
		font-size: 15px;
	}
	
	.hosptName { 
		font-size: 20px;
		font-weight: bold;
		color: #353535;
		padding-bottom: 20px;
	}
	
	.hosptBusinessHours { 
		padding: 0px 0px 20px 0px;
	}
	
</style>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
</head>

<body>
	<div class="content container">
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="ibox">
					<div class="ibox-title">
						<h1 style="text-align: center;">병원 찾기</h1>
					</div>
					<div class="ibox-content">
						<div class="row">
							<div class="col-sm-8 b-r map-wrap">
								<div class="hospital-map-wrap">
									<div class="hospital-search">
									</div>

									<div class="map-location">
										<div class="col-lg-9 input-group map-search" style="text-align: center;" class="#searchbox-hospital">
											<input class="col-lg-10 .h-300" type="text" class="form-control" placeholder="검색할 병원의 이름을 입력하세요!"> 
											<span class="input-group-btn">
												<button class="btn btn-secondary" type="button">찾기</button>
											</span>
										</div>

										<div id="map"></div>
										<div class="hospital-select-search">
											<input type="checkbox" id="age10" name="age" value="10" onchange="makeFilter(this);"> 
												<label class="select-search" for="age10">진료시간</label>
											</input>
											<input type="checkbox" id="age20" name="age" value="20" onchange="makeFilter(this);">
												<label for="age20">운영일</label>
											</input>
										</div>
									</div>

								</div>
							</div>
							<div class="col-sm-4 detail-info">
								<div id="create-detail-table">
									
								</div>
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
						</div>
					</div>
				</div>
			</div>
	
	
</body>
<%@include file="/WEB-INF/views/includes/footer.jsp"%>
</html>

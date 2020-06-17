<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="jquery.js" type="text/javascript"></script>
<script type="text/javascript" src="/resources/js/hospitalInclude.js"></script>
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


<link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">

<div class="ibox">
					<div class="ibox-content">
						<div class="row">
							<div class="col-sm-8 b-r map-wrap">
								<div class="hospital-map-wrap">
									<div class="hospital-search">
									</div>

									<div class="map-location">
										<div id="map"></div>
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
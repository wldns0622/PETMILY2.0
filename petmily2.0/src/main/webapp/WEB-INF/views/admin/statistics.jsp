<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="/resources/css/plugins/iCheck/custom.css" rel="stylesheet">
<style>
.dropdown-item div {
	color: black;
	box-sizing:
}

.dropdown-menu .dropdown-item .link-block {
	background-color: gray;
}

.landing-page .navbar-default .nav li a strong {
	color: black;
}

#pettalkTb{
width: 960px;
}
</style>
<link href="/resources/css/plugins/c3/c3.css" rel="stylesheet">
<link href="/resources/css/plugins/dataTables/datatables.min.css"
	rel="stylesheet">

<jsp:include page="/WEB-INF/views/includes/header.jsp" flush="false" />
<div id="content" class="container-fluid">
	<div class="row">
		<jsp:include page="/WEB-INF/views/includes/adminnav.jsp" flush="false" />
		<div id="content-body"
			class="col-9 wrapper wrapper-content animated fadeInRight ">
			<div class="row">
			<div class="col-lg-12"> 
				<div class="tabs-container col-12">
					<ul class="nav nav-tabs" role="tablist">
						<li><a class="nav-link active show" data-toggle="tab"
							href="#tab-1">가입자 통계</a></li>
						<li><a class="nav-link" data-toggle="tab" href="#tab-2">펫톡
								통계</a></li>
					</ul>
					<div class="tab-content">
						<div role="tabpanel" id="tab-1" class="tab-pane active show">
							<div class="panel-body">
								<div class="row">
									<div class="container-fluid i-box ">
										<div class="ibox-title">
											<h2>팻밀리 신규/누적 가입자 추이</h2>
										</div>
										<div class="ibox-content">
											<div id="chart" style="width: 100% !important"></div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-12">
										<div class="ibox ">
											<div class="ibox-title">
												<h5>가입자 추이 테이블</h5>
											</div>
											<div class="ibox-content">

												<div class="table-responsive">
													<table id="example" style="width: 100% !important" 
														class="table table-striped table-bordered table-hover dataTables-table">
														<thead>
															<tr>
																<th>구분</th>
																<th>1월</th>
																<th>2월</th>
																<th>3월</th>
																<th>4월</th>
																<th>5월</th>
																<th>6월</th>
														</thead>
														<tbody>
														</tbody>
														<tfoot>
														</tfoot>
													</table>
												</div>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div role="tabpanel" id="tab-2" class="tab-pane">
							<div class="panel-body">
								<div class="row">
									<div class="container-fluid i-box ">
										<div class=" ibox-title">
											<h2>팻톡 신규/누적 작성 글 수</h2>
										</div>
										<div class="ibox-content">
											<div id="pettalkChart" style="width: 100% !important"></div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-12 ">
										<div class="ibox ">
											<div class="ibox-title">
												<h5>팻톡 글작성 통계</h5>
											</div>
											<div class="ibox-content">
												<div class="table-responsive">
													<table id="pettalkTb" style="width: 100% !important"  class="table table-striped table-bordered table-hover dataTables-table">
														<thead>
															<tr>
																<th>구분</th>
																<th>1월</th>
																<th>2월</th>
																<th>3월</th>
																<th>4월</th>
																<th>5월</th>
																<th>6월</th>
														</thead>
														<tbody>
														</tbody>
														<tfoot>
														</tfoot>
													</table>
												</div>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>


				</div>
			</div>

		</div>
		</div>
	</div>
</div>
<script src="/resources/js/plugins/d3/d3.js" charset="utf-8"></script>
<script src="/resources/js/plugins/c3/c3.js"></script>
<script src="/resources/js/plugins/dataTables/datatables.min.js"></script>
<script
	src="/resources/js/plugins/dataTables/dataTables.bootstrap4.min.js"></script>
<script type="text/javascript">
	var tmp = {}
	var tmp2 = {}
	function parse(str) {
		var y = str.substr(0, 4);
		var m = str.substr(5, 2);
		return new Date(y, m);
	}
	


	$(document).ready(function() {
						$.ajax({
									url : "/admin/statisticsData",
									type : "POST",
									dataType : "json",
									contentType : "application/json",
									success : function(data) {

										var registerDate = []
										var regTotal = []
										var regCnt = []

										registerDate[0] = 'x'
										regTotal[0] = '누적가입자'
										regCnt[0] = '신규가입자'

										for (var i = 0; i < data.length; i++) {
											registerDate[i + 1] = parse(data[i].registerDate)
											regTotal[i + 1] = data[i].regTotal
											regCnt[i + 1] = data[i].regCnt
										}

										tmp.x = 'x';
										tmp.columns = [ registerDate, regTotal,
												regCnt ]
										console.log(tmp);
										var chart = c3.generate({
											data : {
												x : 'x',
												xFormat : '%Y%m',
												columns : tmp.columns
											},
											axis : {
												x : {
													type : 'timeseries',
													tick : {
														format : '%Y년 %m월'
													}
												},
												y : {
													label : '가입자'
												}
											}
										});

										tmp.columns.splice(0, 1)

										//테이블 엑셀저장
										$('#example')
												.DataTable(
														{
															data : tmp.columns,
															dom : '<"html5buttons"B>lTfgitp',
															info : false,
															lengthChange : false,
															paging : false,
															buttons : [
																	{
																		extend : 'excel',
																		title : 'ExampleFile'
																	},
																	{
																		extend : 'pdf',
																		title : 'ExampleFile'
																	},
																	{
																		extend : 'print',
																		customize : function(
																				win) {
																			$(
																					win.document.body)
																					.addClass(
																							'white-bg');
																			$(
																					win.document.body)
																					.css(
																							'font-size',
																							'10px');

																			$(
																					win.document.body)
																					.find(
																							'table')
																					.addClass(
																							'compact')
																					.css(
																							'font-size',
																							'inherit');
																		}
																	} ]
														});

									},
									error : function() {
										alert("에러발생")
									}
								})
					});
	
	
		//tap2
	$(document).ready(function() {
		$.ajax({
					url : "/admin/pettalkData",
					type : "POST",
					dataType : "json",
					contentType : "application/json",
					success : function(data) {

						var createDate = []
						var creTotal = []
						var createCnt = []
						var replyCnt = []

						createDate[0] = 'x'
						creTotal[0] = '누적 글 작성수'
						createCnt[0] = '신규 글 작성수'
						replyCnt[0] = '펫톡 리플 작성 수'

						for (var i = 0; i < data.length; i++) {
							createDate[i + 1] = parse(data[i].createDate)
							creTotal[i + 1] = data[i].creTotal
							createCnt[i + 1] = data[i].createCnt
							replyCnt[i + 1]  = data[i].replyCnt
						}

						tmp2.x = 'x';
						tmp2.columns = [createDate, creTotal,createCnt,replyCnt]
						var pettalkChart = c3.generate({
							bindto: '#pettalkChart',
							data : {
								x : 'x',
								xFormat : '%Y%m',
								columns : tmp2.columns
							},
							axis : {
								x : {
									type : 'timeseries',
									tick : {
										format : '%Y년 %m월'
									}
								},
								y : {
									label : '작성갯수'
								}
							}
						});
						
						$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
							pettalkChart.resize();
							setTimeout(function () {
								pettalkChart.load({
							        columns: tmp.columns
							    });
							}, 1000);
							});

						tmp2.columns.splice(0, 1)

						//테이블 엑셀저장
						$('#pettalkTb').DataTable(
										{
											data : tmp2.columns,
											dom : '<"html5buttons"B>lTfgitp',
											info : false,
											lengthChange : false,
											paging : false,
											buttons : [
													{
														extend : 'excel',
														title : 'ExampleFile'
													},
													{
														extend : 'pdf',
														title : 'ExampleFile'
													},
													{
														extend : 'print',
														customize : function(
																win) {
															$(
																	win.document.body)
																	.addClass(
																			'white-bg');
															$(
																	win.document.body)
																	.css(
																			'font-size',
																			'10px');

															$(
																	win.document.body)
																	.find(
																			'table')
																	.addClass(
																			'compact')
																	.css(
																			'font-size',
																			'inherit');
														}
													} ]
										});

					},
					error : function() {
						alert("에러발생")
					}
				})
				
				

	});
	
	
	

</script>
<jsp:include page="/WEB-INF/views/includes/footer.jsp" flush="false" />

</html>
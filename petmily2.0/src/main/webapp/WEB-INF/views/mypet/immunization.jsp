<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<link href="/resources/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
<style>
	.dogdoc-box{
		border: 0.1rem solid #1ab394;
		height: 12rem;
    	padding: 1rem;
	}
	#dogdoc-explain{
		font-size: x-large;
	}

	.immu-t th{
		width: 7rem;
		border: 1px solid #e7eaec;
		border-top: 1px solid #e7eaec !important;
		background-color: #dfe3ee;
	}
	.red-block{
		background-color: #ffb3ba;
	}
	.immu-t td{
		border: 1px solid #e7eaec;
		height: 5rem;
	}
	
	.immu-t td:not([data-month="head"]):HOVER{
		background-color: #a7adba;
	}
	
	.ibox-t{
		padding-right: 0;
	    padding-left: 0;
	}
	.fa-hand-o-right{
		font-size: 7rem;
		color: #f8ac59;
	}
	.dogdoc-h1{
	    font-size: xx-large;
    	font-weight: bold;
    	color: #1ab394;    	
	}
	
	/* 년도 선택 화살표 */
	.fa-angle-left{
		color: #1ab394;
	}
	.fa-angle-left:HOVER{
		color: #676a6c;
	}
	.fa-angle-right{
		color: #1ab394;
	}
	.fa-angle-right:HOVER{
		color: #676a6c;
	}
	.year-select{
		font-size: 2.7rem;
    	font-weight: bold;
    	color: #1ab394; 
	}
</style>
<div>
	<div class="row">
		<div class="col-lg-3">
			<img src="/resources/img/mypet/dogdoc_inj.jpg"
				class="rounded-circle circle-border m-b-md" alt="독닥">
		</div>

		<div class="col-lg-9">
			<div class="row dogdoc-box">
				<div class="col-7">
					<span class="dogdoc-h1">
						독닥의 조언!
					</span>
					<br><br>
					<span id="dogdoc-explain"></span>
				</div>
				<div class="col-2 mt-3">
					<i class="fa fa-hand-o-right"></i>
				</div>
				<div class="col-3">
					<button onclick="location.href='/hospital/hospital'" class="btn btn-warning dim btn-large-dim mt-4" type="button">
						<i class="fa fa-user-md"></i>
					</button>
				</div>
			</div>
		</div>

	</div>
	
	<!-- 기초 예방 접종 기록 -->
	<div class="row">
		<div class="col-lg-12">
			<h2>
				<strong>기초 예방접종 기록</strong>
			</h2>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox-content ibox-t">

				<table class="table table-hover immu-t">
					<thead>
						<tr>
							<th>기록 항목</th>
							<th>DHPPL</th>
							<th>코로나</th>
							<th>켄넬코프</th>
							<th>인플루엔자</th>
							<th>광견병</th>
						</tr>
					</thead>
					<tbody class="basic-tbody">
						<tr>
							<td data-month="head">6주</td>
							<td data-month="6주" data-immu="DHPPL"></td>
							<td data-month="6주" data-immu="코로나"></td>
							<td data-month="6주" data-immu="켄넬코프"></td>
							<td data-month="6주" data-immu="인플루엔자"></td>
							<td data-month="6주" data-immu="광견병"></td>
						</tr>
						<tr>
							<td data-month="head">8주</td>
							<td data-month="8주" data-immu="DHPPL"></td>
							<td data-month="8주" data-immu="코로나"></td>
							<td data-month="8주" data-immu="켄넬코프"></td>
							<td data-month="8주" data-immu="인플루엔자"></td>
							<td data-month="8주" data-immu="광견병"></td>
						</tr>
						<tr>
							<td data-month="head">10주</td>
							<td data-month="10주" data-immu="DHPPL"></td>
							<td data-month="10주" data-immu="코로나"></td>
							<td data-month="10주" data-immu="켄넬코프"></td>
							<td data-month="10주" data-immu="인플루엔자"></td>
							<td data-month="10주" data-immu="광견병"></td>
						</tr>
						<tr>
							<td data-month="head">12주</td>
							<td data-month="12주" data-immu="DHPPL"></td>
							<td data-month="12주" data-immu="코로나"></td>
							<td data-month="12주" data-immu="켄넬코프"></td>
							<td data-month="12주" data-immu="인플루엔자"></td>
							<td data-month="12주" data-immu="광견병"></td>
						</tr>
						<tr>
							<td data-month="head">14주</td>
							<td data-month="14주" data-immu="DHPPL"></td>
							<td data-month="14주" data-immu="코로나"></td>
							<td data-month="14주" data-immu="켄넬코프"></td>
							<td data-month="14주" data-immu="인플루엔자"></td>
							<td data-month="14주" data-immu="광견병"></td>
						</tr>
						<tr>
							<td data-month="head">16주</td>
							<td data-month="16주" data-immu="DHPPL"></td>
							<td data-month="16주" data-immu="코로나"></td>
							<td data-month="16주" data-immu="켄넬코프"></td>
							<td data-month="16주" data-immu="인플루엔자"></td>
							<td data-month="16주" data-immu="광견병"></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- End 기초 예방 접종 기록 -->
	
	<!-- 기초 예방 접종 Modal Start -->

	<div class="modal inmodal" id="insert-basic-immu" tabindex="-1"
		role="dialog" aria-hidden="true" style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content animated fadeIn">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<i class="fa fa-medkit modal-icon ml-4 mb-4"></i>
					<h4 class="modal-title">기초 예방 접종</h4>
				</div>
				<div class="modal-body">
					<form action="" id="insert-basic-form" class="insert-basic-form">
						<div>
							<h3>접종명: <span></span> </h3>
						</div>
						<div>
							<h3>시기: <span></span></h3>
						</div>
						<input type="hidden" value="${pet.petNo }" name="petNo" class="form-control">
						<input type="hidden" value="" name="immuNm" class="form-control">
						<input type="hidden" value="" name="petMonth" class="form-control">
						
						<div class="form-group" id="data_1">
							<label class="font-normal">접종 일자</label>
							<div class="input-group date">
								<span class="input-group-addon"><i class="fa fa-calendar"></i></span><input
									type="date" id="insert-basic-date" name="immuDt" class="form-control" value="">
							</div>
						</div>
						<label>차수 | 숫자만 입력 가능합니다. </label>
						<input type="text" class="form-control" id="insert-basic-series" name="immuSeries" onKeyup="this.value=this.value.replace(/[^1-9]/g,'');"/>
						<label>병원명</label>
						<input type="text" value="" name="hosptNm" class="form-control">
						
						
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-white" data-dismiss="modal">취소</button>

					<input id="pet-no" type="hidden" name="petNo" value="${pet.petNo }">
					<button type="submit" id="insert-basic-immu-Btn" class="btn btn-info"
						data-dismiss="modal">입력</button>

				</div>
			</div>
		</div>
	</div>

	<!-- 기초 예방 접종 Modal End -->

	<!-- 기초 예방 접종 수정  Modal Start -->

	<div class="modal inmodal" id="update-basic-immu" tabindex="-1"
		role="dialog" aria-hidden="true" style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content animated fadeIn">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<i class="fa fa-medkit modal-icon ml-4 mb-4"></i>
					<h4 class="modal-title">기초 예방 접종 수정</h4>
				</div>
				<div class="modal-body">
					<form action="" id="update-basic-form" class="update-basic-form">
						<div>
							<h3>접종명: <span></span> </h3>
						</div>
						<div>
							<h3>시기: <span></span></h3>
						</div>
						<input type="hidden" value="${pet.petNo }" name="petNo" class="form-control">
						<input type="hidden" value="" name="immuNm" class="form-control">
						<input type="hidden" value="" name="petMonth" class="form-control">
						
						<div class="form-group" id="data_1">
							<label class="font-normal">접종 일자</label>
							<div class="input-group date">
								<span class="input-group-addon"><i class="fa fa-calendar"></i></span><input
									type="date" id="update-basic-date" name="immuDt" class="form-control" value="">
							</div>
						</div>
						<label>차수 | 숫자만 입력 가능합니다. </label>
						<input type="text" class="form-control" id="update-basic-series" name="immuSeries" onKeyup="this.value=this.value.replace(/[^1-9]/g,'');"/>
						<label>병원명</label>
						<input type="text" value="" name="hosptNm" class="form-control">
						
						
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-white" data-dismiss="modal">취소</button>

					<button type="submit" id="update-basic-immu-Btn" class="btn btn-info"
						data-dismiss="modal">수정</button>
						
					<button type="submit" id="delete-basic-immu-Btn" class="btn btn-danger"
						data-dismiss="modal">삭제</button>

				</div>
			</div>
		</div>
	</div>

	<!-- 기초 예방 접종 수정 Modal End -->


	<!-- 날짜 -->
	<div class="row">
		<div class="col-lg-12">
			<div class="row">
				<div class="col-4"></div>
				<div class="col-1">
					<a class="year-minus"><i class="fa fa-angle-left fa-5x"></i></a>
				</div>
				<div class="col-2">
					<p class="text-center year-select year-change"></p>
				</div>
				<div class="col-1">
					<a class="year-plus"><i class="fa fa-angle-right float-right fa-5x"></i></a>
				</div>
				<div class="col-4"></div>				
			</div>

		</div>
	</div>
	<!-- 날짜 End -->
	
	<!-- 기초 예방 추가, 심장사상충 접종 기록 -->
	<div class="row">
		<!-- 기초 예방 추가 접종 기록 -->
		<div class="col-lg-5">
			<h2>
				<strong>추가 예방접종 기록</strong>
			</h2>
			
			<!-- 기초 예방 추가 접종 테이블 -->
			<div class="ibox-content ibox-t">

				<table class="table table-hover immu-t">
					<thead>
						<tr>
							<th>기록 항목</th>
							<th>DHPPL</th>
							<th>코로나</th>
							<th>켄넬코프</th>
							<th>인플루엔자</th>
							<th>광견병</th>
						</tr>
					</thead>
					<tbody class="booster-tbody">
						<tr>
							<td class="year-change" id="this-year" data-month="head"></td>
							<td data-immu="DHPPL"></td>
							<td data-immu="코로나"></td>
							<td data-immu="켄넬코프"></td>
							<td data-immu="인플루엔자"></td>
							<td data-immu="광견병"></td>
						</tr>

					</tbody>
				</table>
			</div>
			<!-- 기초 예방 추가 접종 테이블 End-->
		</div>
		<!-- 기초 예방 추가 접종 기록 End -->

		<!-- 기초 예방 추가 접종 Modal Start -->

		<div class="modal inmodal" id="insert-booster-immu" tabindex="-1"
			role="dialog" aria-hidden="true" style="display: none;">
			<div class="modal-dialog">
				<div class="modal-content animated fadeIn">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">×</span><span class="sr-only">Close</span>
						</button>
						<i class="fa fa-plus-square modal-icon ml-4 mb-4"></i>
						<h4 class="modal-title">추가 예방접종</h4>
					</div>
					<div class="modal-body">
						<form action="" id="insert-booster-form" class="insert-booster-form">
							<div>
								<h3>
									접종명: <span></span>
								</h3>
							</div>
							<div>
								<h3>
									년도: <span class="year-change"></span>
								</h3>
							</div>
							<input type="hidden" value="${pet.petNo }" name="petNo"
								class="form-control"> <input type="hidden" value=""
								name="immuNm" class="form-control"><input type="hidden"
								value="" name="petMonth" class="form-control"> <!-- petMonth는 해당 년도로 -->

							<div class="form-group" id="data_1">
								<label class="font-normal">접종 일자</label>
								<div class="input-group date">
									<span class="input-group-addon"><i
										class="fa fa-calendar"></i></span><input type="date"
										id="insert-booster-date" name="immuDt" class="form-control"
										value="">
								</div>
							</div>
							<label>병원명</label>
							<input type="text" value="" name="hosptNm" class="form-control">


						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-white" data-dismiss="modal">취소</button>

						<input id="pet-no" type="hidden" name="petNo"
							value="${pet.petNo }">
						<button type="submit" id="insert-booster-immu-Btn"
							class="btn btn-info" data-dismiss="modal">입력</button>

					</div>
				</div>
			</div>
		</div>

		<!-- 기초 예방 추가 접종 Modal End -->

		<!-- 기초 예방 추가 접종 수정  Modal Start -->

		<div class="modal inmodal" id="update-booster-immu" tabindex="-1"
			role="dialog" aria-hidden="true" style="display: none;">
			<div class="modal-dialog">
				<div class="modal-content animated fadeIn">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">×</span><span class="sr-only">Close</span>
						</button>
						<i class="fa fa-medkit modal-icon ml-4 mb-4"></i>
						<h4 class="modal-title">추가 예방접종 수정</h4>
					</div>
					<div class="modal-body">
						<form action="" id="update-booster-form" class="update-booster-form">
							<div>
								<h3>
									접종명: <span></span>
								</h3>
							</div>
							<div>
								<h3>
									년도: <span class="year-change"></span>
								</h3>
							</div>
							<input type="hidden" value="${pet.petNo }" name="petNo"
								class="form-control"> <input type="hidden" value=""
								name="immuNm" class="form-control"><input type="hidden"
								value="" name="petMonth" class="form-control"> <!-- petMonth는 해당 년도로 -->

							<div class="form-group" id="data_1">
								<label class="font-normal">접종 일자</label>
								<div class="input-group date">
									<span class="input-group-addon"><i
										class="fa fa-calendar"></i></span><input type="date"
										id="update-booster-date" name="immuDt" class="form-control"
										value="">
								</div>
							</div>
							<label>병원명</label>
							<input type="text" value="" name="hosptNm" class="form-control">

						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-white" data-dismiss="modal">취소</button>

						<button type="submit" id="update-booster-immu-Btn"
							class="btn btn-info" data-dismiss="modal">수정</button>

						<button type="submit" id="delete-booster-immu-Btn"
							class="btn btn-danger" data-dismiss="modal">삭제</button>

					</div>
				</div>
			</div>
		</div>

		<!-- 기초 예방 추가 접종 수정 Modal End -->

		<!-- 심장사상충 접종 기록 -->
		<div class="col-lg-7">
			<h2>
				<strong>심장사상충 예방 기록</strong>
			</h2>

			<!-- 심장사상충 테이블 -->
			<div class="ibox-content ibox-t">

				<table class="table table-hover immu-t">
					<thead>
						<tr>
							<th>접종 월</th>
							<th>5월</th>
							<th>6월</th>
							<th>7월</th>
							<th>8월</th>
							<th>9월</th>
							<th>10월</th>
							<th>11월</th>
						</tr>
					</thead>
					<tbody class="di-tbody">
						<tr>
							<td data-month="head">심장사상충 예방</td>
							<td data-month="5월"></td>
							<td data-month="6월"></td>
							<td data-month="7월"></td>
							<td data-month="8월"></td>
							<td data-month="9월"></td>
							<td data-month="10월"></td>
							<td data-month="11월"></td>
						</tr>

					</tbody>
				</table>
			</div>
			<!-- 심장사상충 테이블 End-->
		</div>
		<!-- 심장사상충 접종 기록 End -->
		
		<!-- 심장사상충 Modal Start -->

		<div class="modal inmodal" id="insert-di-immu" tabindex="-1"
			role="dialog" aria-hidden="true" style="display: none;">
			<div class="modal-dialog">
				<div class="modal-content animated fadeIn">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">×</span><span class="sr-only">Close</span>
						</button>
						<i class="fa fa-heart modal-icon ml-4 mb-4"></i>
						<h4 class="modal-title">심장사상충</h4>
					</div>
					<div class="modal-body">
						<form action="" id="insert-di-form" class="insert-di-form">
							<div>
								<h3>
									접종명: <span>심장사상충</span>
								</h3>
							</div>
							<div>
								<h3>
									해당 월 : <span></span>
								</h3>
							</div>
							<input type="hidden" value="${pet.petNo }" name="petNo"
								class="form-control"> <input type="hidden" value=""
								name="immuNm" class="form-control"> <input type="hidden"
								value="" name="petMonth" class="form-control"> <!-- petMonth는 해당 월로 -->

							<div class="form-group" id="data_1">
								<label class="font-normal">접종 일자</label>
								<div class="input-group date">
									<span class="input-group-addon"><i
										class="fa fa-calendar"></i></span><input type="date"
										id="insert-di-date" name="immuDt" class="form-control"
										value="">
								</div>
							</div>
							<label>병원명</label>
							<input type="text" value="" name="hosptNm" class="form-control">


						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-white" data-dismiss="modal">취소</button>

						<input id="pet-no" type="hidden" name="petNo"
							value="${pet.petNo }">
						<button type="submit" id="insert-di-immu-Btn"
							class="btn btn-info" data-dismiss="modal">입력</button>

					</div>
				</div>
			</div>
		</div>

		<!-- 심장사상충 Modal End -->
		
		<!-- 심장사상충 수정  Modal Start -->

		<div class="modal inmodal" id="update-di-immu" tabindex="-1"
			role="dialog" aria-hidden="true" style="display: none;">
			<div class="modal-dialog">
				<div class="modal-content animated fadeIn">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">×</span><span class="sr-only">Close</span>
						</button>
						<i class="fa fa-medkit modal-icon ml-4 mb-4"></i>
						<h4 class="modal-title">심장사상충 수정</h4>
					</div>
					<div class="modal-body">
						<form action="" id="update-di-form" class="update-di-form">
							<div>
								<h3>
									접종명: <span>심장사상충</span>
								</h3>
							</div>
							<div>
								<h3>
									해당 월 : <span></span>
								</h3>
							</div>
							<input type="hidden" value="${pet.petNo }" name="petNo"
								class="form-control"> <input type="hidden" value=""
								name="immuNm" class="form-control"> <input type="hidden"
								value="" name="petMonth" class="form-control"> <!-- petMonth는 해당 월로 -->

							<div class="form-group" id="data_1">
								<label class="font-normal">접종 일자</label>
								<div class="input-group date">
									<span class="input-group-addon"><i
										class="fa fa-calendar"></i></span><input type="date"
										id="update-di-date" name="immuDt" class="form-control"
										value="">
								</div>
							</div>
							<label>병원명</label>
							<input type="text" value="" name="hosptNm" class="form-control">



						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-white" data-dismiss="modal">취소</button>

						<button type="submit" id="update-di-immu-Btn"
							class="btn btn-info" data-dismiss="modal">수정</button>

						<button type="submit" id="delete-di-immu-Btn"
							class="btn btn-danger" data-dismiss="modal">삭제</button>

					</div>
				</div>
			</div>
		</div>

		<!-- 심장사상충 수정 Modal End -->
		
	</div>
	<!-- 기초 예방, 심장사상충 접종 기록 End-->


</div>

<!-- Data picker -->
<script src="/resources/js/plugins/datapicker/bootstrap-datepicker.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		
		
		
		// 날짜 변환
		Date.prototype.yyyymmdd = function() {
		      var yyyy = this.getFullYear().toString();
		      var mm = (this.getMonth() + 1).toString();
		      var dd = this.getDate().toString();
		      return  yyyy + "-" + (mm[1] ? mm : "0" + mm[0]) + "-" + (dd[1] ? dd : "0" + dd[0]);
		}
		
		// D-Day 응용 개월 수 세기
		function dDay() {
		    var now = new Date();
		    var then = new Date('<fmt:formatDate pattern="yyyy/MM /dd" value="${pet.petBirth }" />');
		   	
		    var gap = now.getTime() - then.getTime();
		    
		    gap = Math.floor(gap / (1000 * 60 * 60 * 24) / 7);
		    
		    console.log('주령:' + gap);
		    
		    return gap;
		}
		
		var nowYear = new Date().getFullYear();
		var thisYear = new Date().getFullYear();
		
		function yearSelect(thisYear) {			
			$('.year-change').empty();
			$('.year-change').append(thisYear);
		}
		
		yearSelect(thisYear);
		
		$('.year-minus').click(function() {
			thisYear -= 1;
			yearSelect(thisYear);
			
			reBasicImmu();
		});
		
		$('.year-plus').click(function() {
			thisYear += 1;
			yearSelect(thisYear);
			
			reBasicImmu();
		});
		
		//날짜 비교할 것 https://lynmp.com/ko/article/dm8dab79421fa5f8d1 등 유효성 검사하기
		
		
		//기초 접종 데이터 불러오기
		function reBasicImmu() {
			
			var redCount = 0;
			
			var $basicTd = $('.basic-tbody>tr>td:not([data-month="head"])');
			var $boosterTd = $('.booster-tbody>tr>td:not([data-month="head"])');
			var $diTd = $('.di-tbody>tr>td:not([data-month="head"])');
			
			
			
			$basicTd.empty();
			var petNo = <c:out value="${pet.petNo}"/>;
			
			$boosterTd.empty();
			var boosterImmuVO = {
					petNo: <c:out value="${pet.petNo}"/>,
					petMonth: $('#this-year').html()
			};
			
			$diTd.empty();
			var diImmuVO = {
					petNo: <c:out value="${pet.petNo}"/>,
					diYear: $('#this-year').html()
			};
			
			$.ajax({
				type: 'post',
				url: '/health/selectBasicImmu',
				data: JSON.stringify(petNo),
				dataType: 'json',
				contentType: "application/json; charset=utf-8",
				success: function(result) {
					
					// 빨간 박스, 독닥 함수
					function redBlock() {
						
						for (var j = 0; j < $basicTd.length; j++) {
							//독닥 글 넣기!!!!
							$basicTd.eq(j).removeClass('red-block');
							if($basicTd.eq(j).html() == ""){
								if(monthGap>=6){
									if($basicTd.eq(j).data('month') == '6주' && ($basicTd.eq(j).data('immu') == 'DHPPL' || $basicTd.eq(j).data('immu') == '코로나')){
										$basicTd.eq(j).addClass('red-block');
										redCount++;
									}
									
								}
								if(monthGap>=8){
									if($basicTd.eq(j).data('month') == '8주' && ($basicTd.eq(j).data('immu') == 'DHPPL' || $basicTd.eq(j).data('immu') == '코로나')){
										$basicTd.eq(j).addClass('red-block');
										redCount++;
									}
								}
								if(monthGap>=10){
									if($basicTd.eq(j).data('month') == '10주' && ($basicTd.eq(j).data('immu') == 'DHPPL' || $basicTd.eq(j).data('immu') == '켄넬코프')){
										$basicTd.eq(j).addClass('red-block');
										redCount++;
									}
								}
								if(monthGap>=12){
									if($basicTd.eq(j).data('month') == '12주' && ($basicTd.eq(j).data('immu') == 'DHPPL' || $basicTd.eq(j).data('immu') == '켄넬코프')){
										$basicTd.eq(j).addClass('red-block');
										redCount++;
									}
								}
								
								if(monthGap>=14){
									if($basicTd.eq(j).data('month') == '14주' && ($basicTd.eq(j).data('immu') == 'DHPPL' || $basicTd.eq(j).data('immu') == '인플루엔자')){
										$basicTd.eq(j).addClass('red-block');
										redCount++;
									}
								}
								
								if(monthGap>=16){
									if($basicTd.eq(j).data('month') == '16주' && ($basicTd.eq(j).data('immu') == '인플루엔자' || $basicTd.eq(j).data('immu') == '광견병')){
										$basicTd.eq(j).addClass('red-block');										
										redCount++;
									}
								}
							}
							
						}
						
						return boosterAjax();
					}
					
					var monthGap = dDay();
					
					if(result.length == 0){
						redBlock();
					}
					
					function insertData() {
						for (var i = 0; i < result.length; i++) {
							for (var j = 0; j < $basicTd.length; j++) {
								$basicTd.eq(j).removeClass('red-block');
								if(result[i].petMonth == $basicTd.eq(j).data('month') && result[i].immuNm == $basicTd.eq(j).data('immu')){
									console.log('result: ' + result[0].petMonth);
									var toDay = new Date(result[i].immuDt);
								    var resultDate = toDay.yyyymmdd();
									
									var html = result[i].immuSeries+'차'+'<br>' + resultDate + '<br>'+ result[i].hosptNm;
									$basicTd.eq(j).append(html);
									
								}
							}
						}
						
						return redBlock();
					}
					
					insertData();
					
					//추가 접종 ajax
					function boosterAjax() {
						$.ajax({
							type: 'post',
							url: '/health/selectBoosterImmu',
							data: JSON.stringify(boosterImmuVO),
							dataType: 'json',
							contentType: "application/json; charset=utf-8",
							success: function(result) {
								
								// 빨간 박스, 독닥 함수
								function redBlock() {
									
									for (var j = 0; j < $boosterTd.length; j++) {
										//독닥 글 넣기!!!!
										$boosterTd.eq(j).removeClass('red-block');
										
										if(monthGap>52){
											if($boosterTd.eq(j).html() == ""){
												
												if($('#this-year').html() <= nowYear){
													$boosterTd.eq(j).addClass('red-block');
													redCount++;
												}
											}
										}
										
										
									}
									return diAjax();
								}
								
								
								if(result.length == 0){
									redBlock();
								}
								
								function insertData() {
									for (var i = 0; i < result.length; i++) {
										for (var j = 0; j < $boosterTd.length; j++) {
											$boosterTd.eq(j).removeClass('red-block');
											if(result[i].immuNm == $boosterTd.eq(j).data('immu')){
												//console.log('result: ' + result[0].petMonth);
												var toDay = new Date(result[i].immuDt);
											    var resultDate = toDay.yyyymmdd();
												
												var html = resultDate + '<br>'+ result[i].hosptNm;
												$boosterTd.eq(j).append(html);
												
											}
										}
									}
									
									return redBlock();
								}
								
								insertData();
								
								//심장사상충 ajax
								function diAjax() {
									$.ajax({
										type: 'post',
										url: '/health/selectDiImmu',
										data: JSON.stringify(diImmuVO),
										dataType: 'json',
										contentType: "application/json; charset=utf-8",
										success: function(result) {
											
											// 빨간 박스, 독닥 함수
											function redBlock() {
												
												var thisMonth = new Date().getMonth()+1;
												
												for (var j = 0; j < $diTd.length; j++) {
													//독닥 글 넣기!!!!
													$diTd.eq(j).removeClass('red-block');
													if($diTd.eq(j).html() == ""){
														
														if($('#this-year').html() == nowYear){
															if($diTd.eq(j).data('month').substr(0, $diTd.eq(j).data('month').length-1) <= thisMonth){
																$diTd.eq(j).addClass('red-block');
																redCount++;
															}
														}else if($('#this-year').html() < nowYear){
															$diTd.eq(j).addClass('red-block');
															redCount++;
														}
														
													}
													
													
													
												}
												
												//진료 안내
												$('#dogdoc-explain').empty();
												if(redCount>0){
													$('#dogdoc-explain').append("아직 미접종한 항목이 남아있어요!<br>접종을 위한 건강상담 어떠세요?");
												}else if(redCount == 0){
													$('#dogdoc-explain').append("전부 접종 완료되었어요!<br>더 행복한 우리 아이를 위한 검진 어떠세요?");
												}
												
												//과정 End
												
											}// 심장사상충 redBlock End
											
											
											if(result.length == 0){
												redBlock();
											}
											
											function insertData() {
												for (var i = 0; i < result.length; i++) {
													for (var j = 0; j < $diTd.length; j++) {
														$diTd.eq(j).removeClass('red-block');
														
														if(result[i].petMonth == $diTd.eq(j).data('month')){
															//console.log('result: ' + result[0].petMonth);
															var toDay = new Date(result[i].immuDt);
														    var resultDate = toDay.yyyymmdd();
															
															var html = resultDate + '<br>'+ result[i].hosptNm;
															$diTd.eq(j).append(html);
															
														}
													}
												}
												
												return redBlock();
											}
											
											insertData();
											
										},
										error: function() {
											alert("문제가 발생했습니다.");
										}
									}) //심장사상충 ajax End
								}
								
								
								
							},
							error: function() {
								alert("문제가 발생했습니다.");
							}
						})
					}

				},
				error: function() {
					alert("문제가 발생했습니다.");
				} //reBasicImmu error End
			})//reBasicImmu ajax End
			
			
			

		} // reBasicImmu() End
		
		
		reBasicImmu();

		
		
		
		$('.basic-tbody>tr>td:not([data-month="head"])').click(function(e) {
			var $tdHtml = $(this).html();
			console.log('html: '+ $tdHtml);
			if($tdHtml === ""){
				e.preventDefault();
				$('#insert-basic-immu').modal('show');
				$('.insert-basic-form div h3 span').empty();
				$('.insert-basic-form input:not([name="petNo"])').val("");
				$('.insert-basic-form div h3 span').eq(0).append($(this).data('immu'));
				$('.insert-basic-form div h3 span').eq(1).append($(this).data('month'));
				$('.insert-basic-form input[name="immuNm"]').val($(this).data('immu'));
				$('.insert-basic-form input[name="petMonth"]').val($(this).data('month'));

			}else{
				//수정 및 삭제
				e.preventDefault();
				$('#update-basic-immu').modal('show');
				$('.update-basic-form div h3 span').empty();
				$('.update-basic-form input:not([name="petNo"])').val("");
				$('.update-basic-form div h3 span').eq(0).append($(this).data('immu'));
				$('.update-basic-form div h3 span').eq(1).append($(this).data('month'));
				$('.update-basic-form input[name="immuNm"]').val($(this).data('immu'));
				$('.update-basic-form input[name="petMonth"]').val($(this).data('month'));

			}
			
			
		})
		
		
		// 기초 예방접종 추가 Modal Control
		$('.booster-tbody>tr>td:not([data-month="head"])').click(function(e) {
			var $tdHtml = $(this).html();
			console.log('html: '+ $tdHtml);
			if($tdHtml === ""){
				e.preventDefault();
				$('#insert-booster-immu').modal('show');
				$('.insert-booster-form div h3 span').empty();
				$('.insert-booster-form input:not([name="petNo"])').val("");
				$('.insert-booster-form div h3 span').eq(0).append($(this).data('immu'));
				$('.insert-booster-form div h3 span').eq(1).append($('#this-year').html());
				$('.insert-booster-form input[name="immuNm"]').val($(this).data('immu'));
				$('.insert-booster-form input[name="petMonth"]').val($('#this-year').html());

			}else{
				//수정 및 삭제
				e.preventDefault();
				$('#update-booster-immu').modal('show');
				$('.update-booster-form div h3 span').empty();
				$('.update-booster-form input:not([name="petNo"])').val("");
				$('.update-booster-form div h3 span').eq(0).append($(this).data('immu'));
				$('.update-booster-form div h3 span').eq(1).append($('#this-year').html());
				$('.update-booster-form input[name="immuNm"]').val($(this).data('immu'));
				$('.update-booster-form input[name="petMonth"]').val($('#this-year').html());

			}
			
			
		})
		
		// 심장사상충 Modal Control
		$('.di-tbody>tr>td:not([data-month="head"])').click(function(e) {
			var $tdHtml = $(this).html();
			console.log('html: '+ $tdHtml);
			if($tdHtml === ""){
				e.preventDefault();
				$('#insert-di-immu').modal('show');
				$('.insert-di-form div h3 span').empty();
				$('.insert-di-form input:not([name="petNo"])').val("");
				$('.insert-di-form div h3 span').eq(0).append("심장사상충");
				$('.insert-di-form div h3 span').eq(1).append($(this).data('month'));
				$('.insert-di-form input[name="immuNm"]').val('심장사상충');
				$('.insert-di-form input[name="petMonth"]').val($(this).data('month'));

			}else{
				//수정 및 삭제
				e.preventDefault();
				$('#update-di-immu').modal('show');
				$('.update-di-form div h3 span').empty();
				$('.update-di-form input:not([name="petNo"])').val("");
				$('.update-di-form div h3 span').eq(0).append('심장사상충');
				$('.update-di-form div h3 span').eq(1).append($(this).data('month'));
				$('.update-di-form input[name="immuNm"]').val('심장사상충');
				$('.update-di-form input[name="petMonth"]').val($(this).data('month'));

			}
			
			
		})
		
		//기초 insert
		$('#insert-basic-immu-Btn').click(function () {
			console.log('클릭');
			var basicImmu = {
				petNo: 	$('.insert-basic-form input[name="petNo"]').val(),
				immuNm: $('.insert-basic-form input[name="immuNm"]').val(),
				petMonth: $('.insert-basic-form input[name="petMonth"]').val(),
				immuDt: $('.insert-basic-form input[name="immuDt"]').val(),
				immuSeries: $('.insert-basic-form input[name="immuSeries"]').val(),
				hosptNm: $('.insert-basic-form input[name="hosptNm"]').val()
			}
			
			$.ajax({
				type: 'post',
				url: '/health/insertBasicImmu',
				data: JSON.stringify(basicImmu),
				contentType: "application/json; charset=utf-8",
				success: function(result,status,xhr) {
					reBasicImmu();
				},
				error: function(xhr,status,er) {
					if(error){
						error(er);
					}
				}
			})
			
		})
		
		// 추가 inesrt
		$('#insert-booster-immu-Btn').click(function () {
			console.log('클릭');
			var boosterImmu = {
				petNo: 	$('.insert-booster-form input[name="petNo"]').val(),
				immuNm: $('.insert-booster-form input[name="immuNm"]').val(),
				petMonth: $('.insert-booster-form input[name="petMonth"]').val(),
				immuDt: $('.insert-booster-form input[name="immuDt"]').val(),
				hosptNm: $('.insert-booster-form input[name="hosptNm"]').val()
			}
			
			$.ajax({
				type: 'post',
				url: '/health/insertBoosterImmu',
				data: JSON.stringify(boosterImmu),
				contentType: "application/json; charset=utf-8",
				success: function(result,status,xhr) {
					reBasicImmu();
				},
				error: function(xhr,status,er) {
					if(error){
						error(er);
					}
				}
			})
			
		})
		
		//심장사상충 insert
		$('#insert-di-immu-Btn').click(function () {
			console.log('클릭');
			var diImmu = {
				petNo: 	$('.insert-di-form input[name="petNo"]').val(),
				immuNm: $('.insert-di-form input[name="immuNm"]').val(),
				petMonth: $('.insert-di-form input[name="petMonth"]').val(),
				immuDt: $('.insert-di-form input[name="immuDt"]').val(),
				diYear: $('#this-year').html(),
				hosptNm: $('.insert-di-form input[name="hosptNm"]').val()
			}
			
			$.ajax({
				type: 'post',
				url: '/health/insertDiImmu',
				data: JSON.stringify(diImmu),
				contentType: "application/json; charset=utf-8",
				success: function(result,status,xhr) {
					reBasicImmu();
				},
				error: function(xhr,status,er) {
					if(error){
						error(er);
					}
				}
			})
			
		})
		
		// 기초 삭제
		$('#delete-basic-immu-Btn').click(function () {
			console.log('클릭');
			var basicImmu = {
				petNo: 	$('.update-basic-form input[name="petNo"]').val(),
				immuNm: $('.update-basic-form input[name="immuNm"]').val(),
				petMonth: $('.update-basic-form input[name="petMonth"]').val(),
				immuDt: $('.update-basic-form input[name="immuDt"]').val(),
				immuSeries: $('.update-basic-form input[name="immuSeries"]').val(),
				hosptNm: $('.update-basic-form input[name="hosptNm"]').val()
			}
			
			$.ajax({
				type: 'post',
				url: '/health/deleteBasicImmu',
				data: JSON.stringify(basicImmu),
				contentType: "application/json; charset=utf-8",
				success: function(result,status,xhr) {
					reBasicImmu();
				},
				error: function(xhr,status,er) {
					if(error){
						error(er);
					}
				}
			})
			
		})
		
		// 추가 삭제
		$('#delete-booster-immu-Btn').click(function () {
			console.log('클릭');
			var boosterImmu = {
				petNo: 	$('.update-booster-form input[name="petNo"]').val(),
				immuNm: $('.update-booster-form input[name="immuNm"]').val(),
				petMonth: $('.update-booster-form input[name="petMonth"]').val(),
				immuDt: $('.update-booster-form input[name="immuDt"]').val(),
				hosptNm: $('.update-booster-form input[name="hosptNm"]').val()
			}
			
			$.ajax({
				type: 'post',
				url: '/health/deleteBoosterImmu',
				data: JSON.stringify(boosterImmu),
				contentType: "application/json; charset=utf-8",
				success: function(result,status,xhr) {
					reBasicImmu();
				},
				error: function(xhr,status,er) {
					if(error){
						error(er);
					}
				}
			})
			
		})
		
		// 심장사상충 삭제
		$('#delete-di-immu-Btn').click(function () {
			console.log('클릭');
			var diImmu = {
				petNo: 	$('.update-di-form input[name="petNo"]').val(),
				immuNm: $('.update-di-form input[name="immuNm"]').val(),
				petMonth: $('.update-di-form input[name="petMonth"]').val(),
				immuDt: $('.update-di-form input[name="immuDt"]').val(),
				diYear: $('#this-year').html(),
				hosptNm: $('.update-di-form input[name="hosptNm"]').val()
			}
			
			$.ajax({
				type: 'post',
				url: '/health/deleteDiImmu',
				data: JSON.stringify(diImmu),
				contentType: "application/json; charset=utf-8",
				success: function(result,status,xhr) {
					reBasicImmu();
				},
				error: function(xhr,status,er) {
					if(error){
						error(er);
					}
				}
			})
			
		})
	
		var yearsAgo = new Date();
		yearsAgo.setFullYear(yearsAgo.getFullYear() - 20);
	
		$('#selector').datepicker('setDate', yearsAgo );
	})
</script>
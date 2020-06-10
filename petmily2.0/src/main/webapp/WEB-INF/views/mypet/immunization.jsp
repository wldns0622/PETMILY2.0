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
	.immu-t th{
		width: 5rem;
		border: 1px solid #e7eaec;
		border-top: 1px solid #e7eaec !important;
	}
	.immu-t td{
		border: 1px solid #e7eaec;
	}
	
	.immu-t td:HOVER{
		background-color: #a7adba;
	}
	
	.ibox-t{
		padding-right: 0;
	    padding-left: 0;
	}
</style>
<div>
	<div class="row">
		<div class="col-lg-3">
			<img src="/resources/img/mypet/dogdoc_inj.jpg"
				class="rounded-circle circle-border m-b-md" alt="독닥">
		</div>
		
		<div class="col-lg-9">
			<div class="dogdoc-box">
				<h1 class="logo">접종에 대해 설명할 독닥이에요!</h1>
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
							<td data-month="6주" data-immu="DHPPL">테스트</td>
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
					<form action="" id="basic-form" class="basic-form">
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
									type="date" id="basic-date" name="immuDt" class="form-control" value="">
							</div>
						</div>
						<label>차수 | 숫자만 입력 가능합니다. </label>
						<input type="text" class="form-control" id="basic-series" name="immuSeries" onKeyup="this.value=this.value.replace(/[^1-9]/g,'');"/>
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



	<!-- 날짜 -->
	<div class="row">
		<div class="col-lg-12">
			<h1 class="text-center">2020</h1><!-- select 날짜 바람!! -->
		</div>
	</div>
	<!-- 날짜 End -->
	
	<!-- 기초 예방, 심장사상충 접종 기록 -->
	<div class="row">
		<!-- 기초 예방 접종 기록 -->
		<div class="col-lg-5">
			<h2>
				<strong>추가 예방접종 기록</strong>
			</h2>
			
			<!-- 기초 예방 접종 테이블 -->
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
					<tbody>
						<tr>
							<td>2018</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>

					</tbody>
				</table>
			</div>
			<!-- 기초 예방 접종 테이블 End-->
		</div>
		<!-- 기초 예방 접종 기록 End -->
		
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
					<tbody>
						<tr>
							<td>심장사상충</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>

					</tbody>
				</table>
			</div>
			<!-- 심장사상충 테이블 End-->
		</div>
		<!-- 심장사상충 접종 기록 End -->
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
		
		
		function reBasicImmu() {
			var $basicTd = $('.basic-tbody>tr>td:not([data-month="head"])');
			
			$basicTd.empty();
			var petNo = $('input[name="petNo"]').val();
			
			$.ajax({
				type: 'post',
				url: '/health/selectBasicImmu',
				data: JSON.stringify(petNo),
				dataType: 'json',
				contentType: "application/json; charset=utf-8",
				success: function(result) {
					
					for (var i = 0; i < result.length; i++) {
						for (var j = 0; j < $basicTd.length; j++) {
							if(result[i].petMonth == $basicTd.eq(j).data('month') && result[i].immuNm == $basicTd.eq(j).data('immu')){
								console.log('result: ' + result[0].petMonth);
								var toDay = new Date(result[i].immuDt);
							    var resultDate = toDay.yyyymmdd();
								
								var html = result[i].immuSeries+'차' + resultDate + result[i].hosptNm;
								$basicTd.eq(j).append(html);
							}
						}
					}
					
					
				},
				error: function() {
					alert("문제가 발생했습니다.");
				}
			})
		}
		
		reBasicImmu();
		
		$('.basic-tbody>tr>td:not([data-month="head"])').click(function(e) {
			var $tdHtml = $(this).html();
			console.log('html: '+ $tdHtml);
			if($tdHtml === ""){
				e.preventDefault();
				$('#insert-basic-immu').modal('show');
				$('.basic-form div h3 span').empty();
				$('.basic-form div h3 span').eq(0).append($(this).data('immu'));
				$('.basic-form div h3 span').eq(1).append($(this).data('month'));
				$('input[name="immuNm"]').val($(this).data('immu'));
				$('input[name="petMonth"]').val($(this).data('month'));

			}
			
			
		})
		$('#insert-basic-immu-Btn').click(function () {
			console.log('클릭');
			var basicImmu = {
				petNo: 	$('input[name="petNo"]').val(),
				immuNm: $('input[name="immuNm"]').val(),
				petMonth: $('input[name="petMonth"]').val(),
				immuDt: $('input[name="immuDt"]').val(),
				immuSeries: $('input[name="immuSeries"]').val(),
				hosptNm: $('input[name="hosptNm"]').val()
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
		
	
		var yearsAgo = new Date();
		yearsAgo.setFullYear(yearsAgo.getFullYear() - 20);
	
		$('#selector').datepicker('setDate', yearsAgo );
	})
</script>
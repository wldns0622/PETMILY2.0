<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/resources/css/plugins/clockpicker/clockpicker.css" rel="stylesheet">
<style>
.dogdoc-box{
	border: 0.1rem solid #1ab394;
	height: 12rem;
   	padding: 1rem;
}
#dogdoc-wt-explain{
	font-size: x-large;
}
.clockpicker-popover{
	z-index: 3000;
}
</style>
<div>
	
	<div class="row mt-4">
		<div class="col-lg-2">
		</div>
		<div class="col-lg-8 text-center">
			<div class="form-group" id="data_5">
                <div class="input-daterange input-group wt-page" id="datepicker">
                    <input type="text" class="input-sm form-control-sm form-control med-select-date" name="wtDtStart" value="">
                    <span class="input-group-addon">-</span>
                    <input type="text" class="input-sm form-control-sm form-control med-select-date" name="wtDtEnd" value="">
                </div>
            </div>
		</div>
	</div>
	<div class="row mt-4">
		<div class="col-lg-10">
			<h2>
				<strong>체중 기록</strong>
			</h2>
		</div>
		
	</div>
	
	<!-- 심장사상충 Modal Start -->

		<div class="modal inmodal" id="insert-wt" tabindex="-1"
			role="dialog" aria-hidden="true" style="display: none;">
			<div class="modal-dialog">
				<div class="modal-content animated fadeIn">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">×</span><span class="sr-only">Close</span>
						</button>
						<i class="fa fa-line-chart modal-icon ml-4 mb-4"></i>
						<h4 class="modal-title">체중</h4>
					</div>
					<div class="modal-body">
						<form action="" id="insert-wt-form" class="insert-wt-form">
							
							<input type="hidden" value="${pet.petNo }" name="petNo"
								class="form-control"> 

							<div class="form-group" id="data_1">
								<label class="font-normal">날짜</label>
								<div class="input-group date">
									<span class="input-group-addon"><i
										class="fa fa-calendar"></i></span><input type="text"
										id="insert-wt-date" name="wtDt" class="form-control"
										value="">
								</div>
								
							</div>
							<label class="font-normal">시간</label>
							<div class="input-group clockpicker" data-autoclose="true">
                                <input type="text" class="form-control" name="wtTm" value="">
                                <span class="input-group-addon">
                                    <span class="fa fa-clock-o"></span>
                                </span>
                           	</div>
                           	<br>
							<label>체중</label>
							<input type="number" value="" name="wt" class="form-control">


						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-white" data-dismiss="modal">취소</button>

						<input id="pet-no" type="hidden" name="petNo"
							value="${pet.petNo }">
						<button type="submit" id="insert-wt-btn"
							class="btn btn-info" data-dismiss="modal">입력</button>

					</div>
				</div>
			</div>
		</div>

		<!-- 심장사상충 Modal End -->
		
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox">
				<div class="ibox-title">
					<h5>체중 그래프</h5>
				</div>
				<div class="ibox-content">
					<div>
						<iframe class="chartjs-hidden-iframe"
							style="width: 100%; display: block; border: 0px; height: 0px; margin: 0px; position: absolute; left: 0px; right: 0px; top: 0px; bottom: 0px;"></iframe>
						<canvas id="lineChart" height="325" width="697"
							style="display: block; width: 558px; height: 260px;"></canvas>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>



<!-- Data picker -->
<script src="/resources/js/plugins/datapicker/bootstrap-datepicker.js"></script>

<!-- Clock picker -->
<script src="/resources/js/plugins/clockpicker/clockpicker.js"></script>
<script src="/resources/js/plugins/chartJs/Chart.min.js"></script>

<script type="text/javascript">
$(function () {
	$('.insert-wt-modal-btn').click(function() {
		$('.insert-wt-form input[name="wtDt"]').val('');
		$('.insert-wt-form input[name="wtTm"]').val('');
		$('.insert-wt-form input[name="wt"]').val('');
		$('#insert-wt').modal('show');
	})
	
	
    var mem = $('#data_1 .input-group.date').datepicker({
        todayBtn: "linked",
        keyboardNavigation: false,
        forceParse: false,
        calendarWeeks: true,
        autoclose: true
    });
	
	var yearsAgo = new Date();
	yearsAgo.setFullYear(yearsAgo.getFullYear() - 20);

	$('#selector').datepicker('setDate', yearsAgo );
	
	$('.clockpicker').clockpicker();
	
	$('.input-daterange').datepicker({
    	format: "yyyy-mm-dd",
    	maxViewMode: 2,
        todayBtn: true,
        clearBtn: true,
        language: "ko"
    });
	
	/* 오늘로부터 1주일전 날짜 반환 */
    function lastWeek() {
      var d = new Date()
      var dayOfMonth = d.getDate()
      d.setDate(dayOfMonth - 7)
      return d
    }
    
	
    $('input[name="wtDtStart"]').on("change keyup paste", function() {
    	showWt();
    });
    
    $('input[name="wtDtEnd"]').on("change keyup paste", function() {
    	showWt();
    });
	
	
   	var allWtNow = function (callback) {
		var nowDate = new Date();
		var nowDateCon = nowDate.yyyymmdd();
		$('.wt-page input[name="wtDtEnd"]').val(nowDateCon);		
		
		var preDate = lastWeek();
		var preDateCon = preDate.yyyymmdd();
		$('.wt-page input[name="wtDtStart"]').val(preDateCon);	
		
		callback(); 
	}
	
   	allWtNow(showWt);
   	
   

    function showWt() {
    	var weightVO = {
    			petNo: $('.insert-wt-form input[name="petNo"]').val(),
    			wtDtStart: $('input[name="wtDtStart"]').val(),
    			wtDtEnd: $('input[name="wtDtEnd"]').val()
    	}
    	
    	// 체중 비교 ajax
    	$.ajax({
			type: 'GET',
			url: '/health/latelyWt?petNo='+weightVO.petNo,
			dataType: 'json',
			contentType: "application/json; charset=utf-8",
			success: function(result,status,xhr) {
				$('#dogdoc-wt-explain').empty();
				if(result==null){
					$('#dogdoc-wt-explain').append('현재 비교가 어려워요! <br>체중 데이터를 입력해주시면 독닥이 노력해볼게요!');
				}else if(result<0){
					$('#dogdoc-wt-explain').append('최근 체중이 그 이전 체중보다 '+result+'kg 차이나요.<br>식사량을 다시 한번 확인해주세요!');
				}else if(result==0){
					$('#dogdoc-wt-explain').append('최근 체중의 변화가 없어요!<br>앞으로도 더욱 열심히 기록해주세요!');
				}else if(0<result<100){
					$('#dogdoc-wt-explain').append('최근 체중이 그 이전 체중보다 '+result+'kg 차이나요.<br>식사량을 다시 한번 확인해주세요!');
				}
			},
			error: function(xhr,status,er) {
				if(error){
					$('#dogdoc-wt-explain').append('현재 비교가 어려워요! <br>체중 데이터를 입력해주시면 독닥이 노력해볼게요!');
					error(er);
					
				}
			}
		}) // 체중 비교 ajax End
		
    	$.ajax({
			type: 'GET',
			url: '/health/allWt?petNo='+weightVO.petNo+'&wtDtStart='+weightVO.wtDtStart+'&wtDtEnd='+weightVO.wtDtEnd,
			dataType: 'json',
			contentType: "application/json; charset=utf-8",
			success: function(result,status,xhr) {
				var labelList = [];
				var dataList = [];
				for (var i = 0; i < result.length; i++) {
					
					labelList.push(result[i].wtDt+' | '+result[i].wtTm);
					dataList.push(result[i].wt);
				}
				
				var lineData = {
			        labels: labelList,
			        datasets: [

			            {
			                label: "체중 (kg)",
			                backgroundColor: 'rgba(26,179,148,0.5)',
			                borderColor: "rgba(26,179,148,0.7)",
			                pointBackgroundColor: "rgba(26,179,148,1)",
			                pointBorderColor: "#fff",
			                data: dataList
			            }
			        ]
			    }; // lineData End
			    var lineOptions = {
			            responsive: true
			    };

				var ctx = document.getElementById("lineChart").getContext("2d");
			    new Chart(ctx, {type: 'line', data: lineData, options:lineOptions});
			},
			error: function(xhr,status,er) {
				if(error){
					error(er);
					
				}
			}
		})
	} // showWt End
    
	  

    

    
  //체중 insert
	$('#insert-wt-btn').click(function () {
		console.log('클릭');
		var wtVO = {
			petNo: 	$('.insert-wt-form input[name="petNo"]').val(),
			wtDt: $('.insert-wt-form input[name="wtDt"]').val(),
			wtTm: $('.insert-wt-form input[name="wtTm"]').val(),
			wt: $('.insert-wt-form input[name="wt"]').val()
		}
		
		$.ajax({
			type: 'post',
			url: '/health/insertWt',
			data: JSON.stringify(wtVO),
			contentType: "application/json; charset=utf-8",
			success: function(result,status,xhr) {
				showWt();
			},
			error: function(xhr,status,er) {
				if(error){
					error(er);
				}
			}
		})
		
	})

});
</script>


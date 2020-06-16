<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<link href="/resources/css/plugins/dataTables/datatables.min.css"
	rel="stylesheet">

<link href="/resources/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
<style>
	.dataTables{
		width: 100%;
	}
	#datepicker input, #datepicker span{
		border: 0;
	    font-size: xx-large;
	    font-weight: bold;
	    background-color: transparent;
	}
	#datepicker span{
		margin-top: -1rem;
	}
</style>
<div>
	<div class="row">
		<div class="col-lg-10">
			<h2>
				<strong>동물 병원 예약 목록</strong>
			</h2>
		</div>
		
	</div>
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox">
				<div class="ibox-content">
					 <div class="table-responsive">
						<table class="table table-striped table-hover dataTables" style="width: 100%;">
							<thead>
								<tr>
									<th>진료일</th>
									<th>병원명</th>
									<th>진료 종류</th>
									<th>진료 상태</th>
									<!-- <th>예약일</th>-->
									<th>상세 보기</th>
								</tr>
							</thead>
							
						</table>
					</div>

				</div>
			</div>
		</div>
	</div>
</div>

<!-- 진료 상세 보기 Modal Start -->

<div class="modal inmodal" id="rsvn-detail" tabindex="-1"
	role="dialog" aria-hidden="true" style="display: none;">
	<div class="modal-dialog">
		<div class="modal-content animated fadeIn">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">×</span><span class="sr-only">Close</span>
				</button>
				<i class="fa fa-stethoscope modal-icon ml-4 mb-4"></i>
				<h4 class="modal-title">예약 진료 기록 상세</h4>
			</div>
			<div class="r-mbody modal-body">
				
					<div>
						<h3>
							진료일: <span class="rsvn-detail-empty rsvn-date"></span>
						</h3>
					</div>
					<div>
						<h3>
							병원명: <span class="rsvn-detail-empty hspt-nm"></span>
						</h3>
					</div>
					<div>
						<h3>
							진료상태: <span class="rsvn-detail-empty rsvn-status"></span>
						</h3>
					</div>					
					<div>
						<h3>
							진료 종류: <span class="rsvn-detail-empty rsvn-kind"></span>
						</h3>
					</div>
					<div>
						<h3 class="rsvn-sx-h3">
							<!-- 주증상: <span class="rsvn-detail-empty rsvn-sx"></span> / <span class="rsvn-detail-empty rsvn-prd"></span> -->
						</h3>
					</div>
					<div>
						<h3 class="rsvn-ino-h3">
							<!-- 접종명: <span class="rsvn-detail-empty rsvn-ino"></span> -->
						</h3>
					</div>
					<div>
						<h3>
							진료 기록
						</h3>
					</div>
					<div class="contact-box">
						<p class="rsvn-detail-empty rsvn-hospt-tmt-contents"></p>
					</div>
					

				
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-white" data-dismiss="modal">닫기</button>

			</div>
		</div>
	</div>
</div>

<!-- 진료 상세 보기 Modal End -->

<div>
	<div class="row">
		<div class="col-lg-2">
		</div>
		<div class="col-lg-8 text-center">
			<div class="form-group" id="data_5">
                <div class="input-daterange input-group" id="datepicker">
                    <input type="text" class="input-sm form-control-sm form-control med-select-date" name="dtStart" value="">
                    <span class="input-group-addon">-</span>
                    <input type="text" class="input-sm form-control-sm form-control med-select-date" name="dtEnd" value="">
                </div>
            </div>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-10">
			<h2>
				<strong>진료 기록 타임 라인</strong>
			</h2>
		</div>
		
	</div>
	<div class="row">
	<div class="col-lg-12">
		<div class="ibox ">
			<div class="ibox-content" id="ibox-content">

				<div id="vertical-timeline"
					class="vertical-container dark-timeline center-orientation">
					
					<!-- 진료 기록 -->

					
				</div>

			</div>
		</div>
	</div>
</div>
<!-- 타임라인 End -->


</div>
<script src="/resources/js/plugins/dataTables/datatables.min.js"></script>
<script
	src="/resources/js/plugins/dataTables/dataTables.bootstrap4.min.js"></script>

<!-- Data picker -->
<script src="/resources/js/plugins/datapicker/bootstrap-datepicker.js"></script>


<!-- Page-Level Scripts -->
<script>
//날짜 변환
Date.prototype.yyyymmdd = function() {
      var yyyy = this.getFullYear().toString();
      var mm = (this.getMonth() + 1).toString();
      var dd = this.getDate().toString();
      return  yyyy + "-" + (mm[1] ? mm : "0" + mm[0]) + "-" + (dd[1] ? dd : "0" + dd[0]);
}

var lang_kor = {
        "decimal" : "",
        "emptyTable" : "데이터가 없습니다.",
        "info" : "_START_ - _END_ (총 _TOTAL_ 개)",
        "infoEmpty" : "0개",
        "infoFiltered" : "(전체 _MAX_ 개 중 검색결과)",
        "infoPostFix" : "",
        "thousands" : ",",
        "lengthMenu" : "_MENU_ 개씩 보기",
        "loadingRecords" : "로딩중...",
        "processing" : "처리중...",
        "search" : "검색 : ",
        "zeroRecords" : "검색된 데이터가 없습니다.",
        "paginate" : {
            "first" : "첫 페이지",
            "last" : "마지막 페이지",
            "next" : "다음",
            "previous" : "이전"
        },
        "aria" : {
            "sortAscending" : " :  오름차순 정렬",
            "sortDescending" : " :  내림차순 정렬"
        }
    };
    


    $(document).ready(function(){
    
		
        var petNo = <c:out value="${pet.petNo}"/>;
        
        $('.input-daterange').datepicker({
        	format: "yyyy-mm-dd",
        	maxViewMode: 2,
            todayBtn: true,
            clearBtn: true,
            language: "ko"
        });
		
        $('.dataTables').DataTable({
        
        	ajax: {
                'url':'/health/allRSVN/?petNo='+petNo, 
                'type': 'GET'
             },
            columns: [
                {"data": "reservationDate"},
                {"data": "hsptName"},
                {"data": "reservationKind"}, 
                {"data": "reservationStatus"},
                {"data": function() {
                    
					return '<button type="button" class="btn btn-outline btn-primary rsvn-detail">진료 상세 보기</button> ';
					}
                },
                {"data": "reservationNo"}
            ],
            pageLength: 10,
            responsive: true,
            dom: '<"html5buttons"B>lTfgitp',
            language : lang_kor,
            columnDefs : [{
                "targets"   : [ 4 ],
                "orderable" : false,
                "searchable": false
                //"className" : "center", //칼럼에 클래스네임추가
                
            	},{
            		"render": function ( data, type, row ) {
                        return data+'<input type="hidden" value="'+row.reservationNo+'">';
                    }, "targets": 4
            	},{ 
            		
            		"visible": false, 
            		"targets": [ 5 ]
            	}
            	
            ],
            buttons: [
                { extend: 'copy'},
                {extend: 'excel', title: 'excel_file'},

                {extend: 'print',
                 customize: function (win){
                        $(win.document.body).addClass('white-bg');
                        $(win.document.body).css('font-size', '10px');

                        $(win.document.body).find('table')
                                .addClass('compact')
                                .css('font-size', 'inherit');
                }
                }
            ] 

        });
        
        /* 오늘로부터 1주일전 날짜 반환 */
        function lastWeek() {
          var d = new Date()
          var dayOfMonth = d.getDate()
          d.setDate(dayOfMonth - 7)
          return d
        }
        
       	var allMedNow = function (callback) {
			var nowDate = new Date();
			var nowDateCon = nowDate.yyyymmdd();
			$('input[name="dtEnd"]').val(nowDateCon);		
			
			var preDate = lastWeek();
			var preDateCon = preDate.yyyymmdd();
			$('input[name="dtStart"]').val(preDateCon);	
			
			callback(); //allMed 콜백
		}
        
       	//페이지 로딩시 타임라인
       	allMedNow(allMed);
       	
        $('input[name="dtStart"]').on("change keyup paste", function() {
        	allMed();
        });
        
        $('input[name="dtEnd"]').on("propertychange change keyup paste input", function() {
        	allMed();
        });
        
        
      //진료 데이터(전부) ajax
 		function allMed() {
 			var medVO = {
 	        		petNo: petNo,
 	        		dtStart: $('input[name="dtStart"]').val(),
 	        		dtEnd: $('input[name="dtEnd"]').val()
 	        };
 			console.log(medVO.petNo);
 			console.log(medVO.dtStart);
 			console.log(medVO.dtEnd);
			$.ajax({
				type: 'post',
				url: '/health/allMed',
				data: JSON.stringify(medVO),
				dataType: 'json',
				contentType: "application/json; charset=utf-8",
				success: function(result) {
					console.log(result);
					$('#vertical-timeline').empty();
					if(result==null){
						var warningHtml = '<div class="text-center"><i class="fa fa-warning modal-icon ml-4 mb-4"></i>';
						warningHtml += '<h1 >입력된 정보를 찾을 수 없어요!</h1></div>';
						$('#vertical-timeline').append(warningHtml);						
					}
					for (var i = 0; i < result.length; i++) {
						if(result[i].sort=="hospt"){
							var toDay = new Date(result[i].dt);
						    var resultDate = toDay.yyyymmdd();
						    
							var hosptHtml = '<div class="vertical-timeline-block">';
							hosptHtml +='<div class="vertical-timeline-icon lazur-bg">';
							hosptHtml +='	<i class="fa fa-user-md"></i>';
							hosptHtml +='</div>';

							hosptHtml +='<div class="vertical-timeline-content">';
							hosptHtml +='	<h1 class="text-info font-weight-bold">'+result[i].hsptName+' </h1>';
							hosptHtml +='	<h2>진료 일자: '+resultDate+'</h2>';
							hosptHtml +='	<h2>진료 종류: '+result[i].hosptTmtSort+'</h2>';
							hosptHtml +='	<p>'+result[i].hosptTmtContents+'</p>';
							hosptHtml +='	<span class="vertical-date"> 펫밀리 연동 기록 <br> <small>'+resultDate+'</small>';
							hosptHtml +='	</span>';
							hosptHtml +='</div>';
							hosptHtml +='</div>';
							$('#vertical-timeline').append(hosptHtml);
						}else if(result[i].sort=="mem"){
							var toDay = new Date(result[i].dt);
						    var resultDate = toDay.yyyymmdd();
						    
							var memHtml = '<div class="vertical-timeline-block">';
							memHtml +='<div class="vertical-timeline-icon navy-bg">';
							memHtml +='</div>';

							memHtml +='<div class="vertical-timeline-content">';
							memHtml +='	<h1 class="text-primary font-weight-bold">'+result[i].hsptName+' </h1>';
							memHtml +='	<h2>진료 일자: '+resultDate+' </h2>';
							memHtml +='	<h2>진료 종류: '+result[i].hosptTmtSort+'</h2>';
							memHtml +='	<p>'+result[i].hosptTmtContents+'</p>';							
							
							memHtml +='	<input type="hidden" value="'+result[i].hosptMedRecordsNo+'">';
							memHtml +='	<span class="vertical-date"> 직접 입력 기록 <br> <small>'+resultDate+'</small>';
							memHtml +='	</span>';
							memHtml +='</div>';
							memHtml +='</div>';
							$('#vertical-timeline').append(memHtml);
						}
						
						
					}
					
		
					
				},
				error: function() {
				}
			}) 
		} 
 		//진료 데이터(전부) End
        
        $(document).on('click', '.rsvn-detail', function(){
        	$('.rsvn-detail-empty').empty();
        	rsvnDetail($(this));
        	$('#rsvn-detail').modal('show');
        });
        
        function rsvnDetail(btn) {
        	var reservationNo = btn.next().val();
        	console.log('res'+reservationNo);
        	$.ajax({
    			type: 'get',
    			url: '/health/selectRSVN/?reservationPetNo='+petNo+'&reservationNo='+reservationNo,
    			dataType: 'json',
    			contentType: "application/json; charset=utf-8",
    			success: function(result) {
    				
    				$('.rsvn-hospt-tmt-contents').append(result.hosptTmtContents);
    				if(result.hosptTmtContents=null){
    					alert('앗! 진료 기록을 찾을 수 없습니다!');
    					$('#rsvn-detail').modal('hide');
    				}
    				var reData = [
    					result.reservationDate,
    					result.hsptName,
    					result.reservationStatus,
    					result.reservationKind
    					
    				]
    				
    				var $emptyTag = $('.rsvn-detail-empty');
    				
    				$('.rsvn-sx-h3').empty();
    				$('.rsvn-ino-h3').empty();
    				$('.rsvn-sx-h3').append('주증상: <span class="rsvn-detail-empty rsvn-sx"></span> / <span class="rsvn-detail-empty rsvn-prd"></span>');
    				$('.rsvn-ino-h3').append('접종명: <span class="rsvn-detail-empty rsvn-ino"></span>');
    				
    				
    				if(reData[4]==null||reData[5]==null){
						$('.rsvn-sx-h3').empty();
					}else{
						$('.rsvn-sx').append(result.reservationSymptom);
						$('.rsvn-prd').append(result.reservationPeriod);
					}
    				
    				if(reData[6]==null){
    					$('.rsvn-ino-h3').empty();
    				}else{
    					$('.rsvn-ino').append(result.reservationInoculationType);
    				}
    				
    				for (var i = 0; i < reData.length; i++) {
    					
    					
    					$emptyTag.eq(i).append(reData[i]);
					}
    				
    				
    				

    			},
    			error: function() {
					alert('앗! 진료 기록을 찾을 수 없습니다!');
					$('#rsvn-detail').modal('hide');
				}
            }) //예약 목록 ajax End
		}
        
        $('.insert-modal-btn').click(function() {
        	$('#insert-mem').modal('show');
		})
        
		
		
		
    });

</script>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>


<link href="/resources/css/plugins/dataTables/datatables.min.css"
	rel="stylesheet">

<style>
	.dataTables{
		width: 100%;
	}
</style>
<div>
	<div class="row">
		<div class="col-lg-10">
			<h2>
				<strong>동물 병원 예약 목록</strong>
			</h2>
		</div>
		<div class="col-lg-2">
			<button type="button" class="btn btn-outline btn-warning mt-3" onclick = "location.href = '#' ">예약 전체 바로가기</button>
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
							<!-- <tbody class="r-tbody">
															

							</tbody> -->
							<!-- <tfoot>
								<tr>
									<th>진료일</th>
									<th>병원명</th>
									<th>진료 종류</th>
									<th>진료 상태</th>
									<th>예약일</th>
									<th>상세 보기</th>
								</tr>
							</tfoot> -->
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
		<div class="col-lg-10">
			<h2>
				<strong>진료 기록 타임 라인</strong>
			</h2>
		</div>
		<div class="col-lg-2">
			<button type="button" class="btn btn-outline btn-info mt-3 insert-modal-btn">진료 직접 입력하기</button>
		</div>
	</div>
	<div class="row">
	<div class="col-lg-12">
		<div class="ibox ">
			<div class="ibox-content" id="ibox-content">

				<div id="vertical-timeline"
					class="vertical-container dark-timeline center-orientation">
					
					<div class="vertical-timeline-block">
						<div class="vertical-timeline-icon navy-bg">
						
						</div>

						<div class="vertical-timeline-content">
							<h2>Meeting</h2>
							<p>Conference on the sales results for the previous year.
								Monica please examine sales trends in marketing and products.
								Below please find the current status of the sale.</p>
							<a href="#" class="btn btn-sm btn-primary"> More info</a> <span
								class="vertical-date"> Today <br> <small>Dec
									24</small>
							</span>
						</div>
					</div>

					

					<div class="vertical-timeline-block">
						<div class="vertical-timeline-icon lazur-bg">
							<i class="fa fa-user-md"></i>
						</div>

						<div class="vertical-timeline-content">
							<h2>Go to the doctor dr Smith</h2>
							<p>Find some issue and go to doctor. Lorem Ipsum is simply
								dummy text of the printing and typesetting industry. Lorem Ipsum
								has been the industry's standard dummy text ever since the
								1500s.</p>
							<span class="vertical-date">Yesterday <br> <small>Dec
									23</small></span>
						</div>
					</div>

					
				</div>

			</div>
		</div>
	</div>
</div>
<!-- 타임라인 End -->

<!-- 진료 직접 등록 Modal Start -->

<div class="modal inmodal" id="insert-mem" tabindex="-1"
	role="dialog" aria-hidden="true" style="display: none;">
	<div class="modal-dialog">
		<div class="modal-content animated fadeIn">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">×</span><span class="sr-only">Close</span>
				</button>
				<i class="fa fa-hospital-o modal-icon ml-4 mb-4"></i>
				<h4 class="modal-title">진료 기록 직접 등록</h4>
			</div>
			<div class="modal-body">
					<form action="" id="insert-mem-form" class="insert-mem-form">

						<input type="hidden" value="${pet.petNo }" name="petNo"
							class="form-control">
						<!-- petMonth는 해당 년도로 -->


						<label>병원명</label> <input type="text" value="" name="hosptNm"
							class="form-control">

						<div class="form-group" id="data_1">
							<label class="font-normal">진료 일자</label>
							<div class="input-group date">
								<span class="input-group-addon"><i class="fa fa-calendar"></i></span><input
									type="date" id="insert-booster-date" name="memTmtDt"
									class="form-control" value="">
							</div>
						</div>

						<label class="font-normal">진료 종류</label> <select
							class="form-control m-b" name="memTmtSort">
							<option>일반진료</option>
							<option>건강검진</option>
							<option>예방접종</option>
						</select> <label class="font-normal">진료 메모</label> <input type="text"
							name="memTmtContents" class="form-control">

					</form>
				</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-white" data-dismiss="modal">취소</button>

				<input id="pet-no" type="hidden" name="petNo" value="${pet.petNo }">
				<button type="submit" id="insert-mem-btn"
					class="btn btn-info" data-dismiss="modal">입력</button>

			</div>
		</div>
	</div>
</div>

<!-- 기초 예방 추가 접종 Modal End -->

</div>
<script src="/resources/js/plugins/dataTables/datatables.min.js"></script>
<script
	src="/resources/js/plugins/dataTables/dataTables.bootstrap4.min.js"></script>


<!-- Page-Level Scripts -->
<script>
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
        
      //심장사상충 ajax
		function diAjax() {
			$.ajax({
				type: 'post',
				url: '/health/selectRSVN',
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
    				}rsvn-sx-h3
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
        
		
		//심장사상충 insert
		$('#insert-mem-btn').click(function () {
			var memTmt = {
				petNo: 	$('.insert-mem-form input[name="petNo"]').val(),
				hosptNm: $('.insert-mem-form input[name="hosptNm"]').val(),
				memTmtDt: $('.insert-mem-form input[name="memTmtDt"]').val(),
				memTmtSort: $('.insert-mem-form select[name="memTmtSort"]').val(),				
				memTmtContents: $('.insert-mem-form input[name="memTmtContents"]').val()
			}
		
			$.ajax({
				type: 'post',
				url: '/health/insertMemTmt',
				data: JSON.stringify(memTmt),
				contentType: "application/json; charset=utf-8",
				success: function(result,status,xhr) {
					
				},
				error: function(xhr,status,er) {
					if(error){
						error(er);
					}
				}
			})
			
		})
		
        /* function allRSVN() {
        	$.ajax({
    			type: 'get',
    			url: '/health/allRSVN/?petNo='+petNo,
    			dataType: 'json',
    			contentType: "application/json; charset=utf-8",
    			success: function(result) {
    				$('.r-tbody').empty();
    				for (var i = 0; i < result.length; i++) {
    					var rsvnHtml = '<tr>'+'<input type="hidden" values="'+result[i].reservationMemberId+'">'+'<td>'+result[i].reservationDate+'</td>'+'<td>'+result[i].reservationHospitalId+'</td>';
    					rsvnHtml += '<td>'+result[i].reservationKind+'</td>'+'<td>'+result[i].reservationStatus+'</td>';
    					rsvnHtml += '<td>예약 날짜 예정</td>' + '</tr>';		
    					$('.r-tbody').append(rsvnHtml);
    				}
    				

    			}
            }) //예약 목록 ajax End
		}
        
        allRSVN(); */
        
    });

</script>


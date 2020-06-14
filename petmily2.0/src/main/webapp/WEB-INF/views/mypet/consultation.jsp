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
		<div class="col-lg-12">
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
<!-- 							<tbody class="r-tbody">
															

							</tbody>
							<tfoot>
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
<div class="row">
	<div class="col-lg-12">
		<div class="ibox ">
			<div class="ibox-content" id="ibox-content">

				<div id="vertical-timeline"
					class="vertical-container dark-timeline center-orientation">
					<div class="vertical-timeline-block">
						<div class="vertical-timeline-icon navy-bg">
							<i class="fa fa-briefcase"></i>
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
						<div class="vertical-timeline-icon blue-bg">
							<i class="fa fa-file-text"></i>
						</div>

						<div class="vertical-timeline-content">
							<h2>Send documents to Mike</h2>
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem Ipsum has been the industry's
								standard dummy text ever since.</p>
							<a href="#" class="btn btn-sm btn-success"> Download document
							</a> <span class="vertical-date"> Today <br> <small>Dec
									24</small>
							</span>
						</div>
					</div>

					<div class="vertical-timeline-block">
						<div class="vertical-timeline-icon lazur-bg">
							<i class="fa fa-coffee"></i>
						</div>

						<div class="vertical-timeline-content">
							<h2>Coffee Break</h2>
							<p>Go to shop and find some products. Lorem Ipsum is simply
								dummy text of the printing and typesetting industry. Lorem Ipsum
								has been the industry's.</p>
							<a href="#" class="btn btn-sm btn-info">Read more</a> <span
								class="vertical-date"> Yesterday <br> <small>Dec
									23</small></span>
						</div>
					</div>

					<div class="vertical-timeline-block">
						<div class="vertical-timeline-icon yellow-bg">
							<i class="fa fa-phone"></i>
						</div>

						<div class="vertical-timeline-content">
							<h2>Phone with Jeronimo</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Iusto, optio, dolorum provident rerum aut hic quasi placeat iure
								tempora laudantium ipsa ad debitis unde? Iste voluptatibus minus
								veritatis qui ut.</p>
							<span class="vertical-date">Yesterday <br> <small>Dec
									23</small></span>
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

					<div class="vertical-timeline-block">
						<div class="vertical-timeline-icon navy-bg">
							<i class="fa fa-comments"></i>
						</div>

						<div class="vertical-timeline-content">
							<h2>Chat with Monica and Sandra</h2>
							<p>Web sites still in their infancy. Various versions have
								evolved over the years, sometimes by accident, sometimes on
								purpose (injected humour and the like).</p>
							<span class="vertical-date">Yesterday <br> <small>Dec
									23</small></span>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
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
    
var col_kor = [
    { title: "이름" },
    { title: "직위" },
    { title: "오피스" },
    { title: "내선" },
    { title: "입사일" },
    { title: "연봉" }
];

/*     $(document).ready(function() {
        $('#example').DataTable( {
            data: dataSet,
            columns: col_kor, //or col_eng
            language : lang_kor //or lang_eng
        } );
    } ); */

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
					return '<button type="button" class="btn btn-outline btn-primary">진료 상세 보기</button>';
				}}
            ],
            pageLength: 10,
            responsive: true,
            dom: '<"html5buttons"B>lTfgitp',
            language : lang_kor,
           
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


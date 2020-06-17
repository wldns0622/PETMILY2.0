<%@page import="com.petmily.member.domain.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/includes/header.jsp" flush="false" />
<script></script>


<div class="ibox ">
                    <div class="ibox-title">
                        <h2><strong>예약 현황</strong></h2>
                        <div class="ibox-tools">
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">

                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th>예약번호</th>
                                <th>예약자</th>
                                <th>반려견</th>
                                <th>예약일</th>
                                <th>진료종류</th>
                                <th>증상</th>
                                <th>증상 기간</th>
                                <th>예방접종 명</th>
                                <th>예약 상태</th>
                                <th>비교</th>
                            </tr>
                            </thead>
                            <tbody>
                            	<c:forEach var="getList" items="${list}">
                            		<tr>
                            			<td>${getList.reservationNo }</td>
                            			<td>${member.name }</td>
                            			<c:forEach var="getPetList" items="${petList}">
                            				<c:if test="${getList.reservationPetNO eq getPetList.petNo}">
                            					<td>${getPetList.petNm}</td>
                            				</c:if>
                            			</c:forEach>
                            			<td>${getList.reservationDate}</td>

                            			<c:choose>
											<c:when test="${getList.reservationKind eq '일반진료'}">
												<td>일반진료</td>
											</c:when>
											<c:when test="${getList.reservationKind eq '예방접종'}">
												<td>예방접종</td>
											</c:when>
											<c:when test="${getList.reservationKind eq '건강검진'}">
												<td>건강검진</td>
											</c:when>
										</c:choose>

                            			<c:choose>
											<c:when test="${getList.reservationKind eq '일반진료'}">
												<td>${getList.reservationSymptom}</td>
                            					<td>${getList.reservationPeriod}</td>
                            					<td>-</td>
											</c:when>
											<c:when test="${getList.reservationKind eq '예방접종'}">
												<td>-</td>
                            					<td>-</td>
												<td>${getList.reservationInoculationType}</td>
											</c:when>
										</c:choose>

										<c:choose>
											<c:when test="${getList.reservationStatus eq '예약신청'}">
												<td>예약 신청</td>
											</c:when>
											<c:when test="${getList.reservationStatus eq '예약완료'}">
												<td>예약 완료</td>
											</c:when>
											<c:when test="${getList.reservationStatus eq '진료완료'}">
												<td>진료 완료</td>
											</c:when>
										</c:choose>

										<c:choose>
											<c:when test="${getList.reservationStatus eq '예약신청'}">
												<td><a href="/reservation/reservationFail?reservationNo=${getList.reservationNo}" class="btn btn-success" >예약 취소</a></td>
											</c:when>
											<c:when test="${getList.reservationStatus eq '예약완료'}">
												<td> - </td>
											</c:when>
											<c:when test="${getList.reservationStatus eq '진료완료'}">
												<td>
												<button class="btn btn-danger" id="medmedmed" data-toggle="modal" data-target="#pollChart_modal" onclick="checkMedInfo('${getList.reservationNo}')">진료 내역 확인</button>
												</td>
											</c:when>
										</c:choose>

                            		</tr>
                            	</c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="modal fade" id="pollChart_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1">
		            <div class="modal-dialog" role="document">
		               <div class="modal-content">
		                  <div class="modal-body" id="pollChart_body">
		                  <div class="widget style1 lazur-bg">
                        <div class="row vertical-align">
                            <div class="col-1">
                                <i class="fa fa-medkit"></i>
                            </div>
                            <div class="col-11 text-left">
                                <h4 class="font-bold">진료 기록</h4>
                            </div>
                        </div>
                    </div>
		                  	<div class="widget lazur-bg p-xl">

                        <ul class="list-unstyled m-t-md">
                            <li>
                                <i class="fa fa-caret-square-o-right"></i>
                                <label>진료 번호/예약번호:</label>
                                <label id="hosptMedRecordsNo"></label>
                            </li>
                            <li>
                                <i class="fa fa-caret-square-o-right"></i>
                                <label>진료 종류</label>
                                <label id="hosptTmtSort"></label>
                            </li>
                            <li>
                                <i class="fa fa-caret-square-o-right"></i>
                                <label>진료 내용</label><br>
                                <label id="hosptTmtContents"></label>
                            </li>
                        </ul>

                    </div>
		                  	<!-- <label>진료 번호/예약번호</label> <label id="hosptMedRecordsNo"></label> <br>
		                  	<label>진료 종류</label> <label id="hosptTmtSort"></label> <br>
		                  	<label>진료 내용</label> <label id="hosptTmtContents"></label> <br> -->
		                  </div>
		                  <div class="modal-footer">
		                     <button id="pollChartClose" type="button" class="btn btn-outline-danger" data-dismiss="modal">닫기</button>
		                  </div>
		               </div>
		            </div>
		         </div>

<script>
	function checkMedInfo(number){
		console.log(number);
		$.ajax({
		    url: "/reservationAjax/checkMedInfo/" + number,
		    type: "get",
		    dataType: "json",
		    success: function(data){
		    	console.log(data);
				$('#hosptMedRecordsNo').text(data.hosptMedRecordsNo + '번 / ' + data.reservationNo + '번');
				$('#hosptTmtSort').text(data.hosptTmtSort);
				$('#hosptTmtContents').text(data.hosptTmtContents);
		    },
		    error: function (request, status, error){
		    }
		  });
	}
</script>


<jsp:include page="/WEB-INF/views/includes/footer.jsp" flush="false" />
</html>
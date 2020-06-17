<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/views/includes/header.jsp" flush="false" />

		<jsp:include page="nav.jsp" flush="false"/>

<div class="ibox ">
                    <div class="ibox-title">
                        <h5>Basic Table</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="#" class="dropdown-item">Config option 1</a>
                                </li>
                                <li><a href="#" class="dropdown-item">Config option 2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <table class="table">
                            <thead>
	                            <tr>
	                                <th>예약 번호</th>
	                                <th>예약 상태</th>
	                                <th>예약자 아이디</th>
	                                <th>반려견 이름</th>
	                                <th>진료종류</th>
	                                <th>처리</th>
	                                <th>유어펫 건강정보</th>
	                            </tr>
                            </thead>
                            <tbody>
								<c:forEach var="reservation" items="${list }">
									<tr>
										<td>${reservation.reservationNo }</td>
										<td>${reservation.reservationStatus }</td>
										<td>${reservation.reservationMemberId }</td>
										<td>${reservation.reservationPetNO }</td>
										<td>${reservation.reservationKind }</td>
										<td id="btnbtnbtn">
											<c:if test="${reservation.reservationStatus eq '예약신청' }">
												<button class="btn btn-success" name="statusBtn" id="statusBtn" value="승인"
												onclick="success('${reservation.reservationNo}')">승인</button>
											</c:if>
											<c:if test="${reservation.reservationStatus eq '예약완료' }">
												<button class="btn btn-success" name="statusBtn" id="statusBtn" value="진료결과" data-toggle="modal" data-target="#pollChart_modal" onclick="openModal('${reservation.reservationNo}','${reservation.reservationMemberId}', '${reservation.reservationPetNO}', '${reservation.reservationDate}', '${reservation.reservationStatus}', '${reservation.reservationKind}', '${reservation.reservationSymptom}' ,'${reservation.reservationPeriod}' ,'${reservation.reservationInoculationType}' ,'${reservation.reservationHospitalId}')">진료결과 입력</button>
											</c:if>
											<c:if test="${reservation.reservationStatus eq '진료완료' }">
												<h4>완료</h4>
											</c:if>
										</td>
										<td><button class="btn btn-success" id="urpet" onclick="urpet(${reservation.reservationPetNO}, ${reservation.reservationNo})">이동</button></td>
									</tr>
								</c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>

	<div class="modal fade" id="pollChart_modal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel1">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<form action="/hospitalAdmin/reservationInputMedInfo" method="post">
					<div class="modal-body" id="pollChart_body">
						<!-- hidden -->
						<input type="hidden" id="petNo" name="petNo" />
						<input type="hidden" id="memId" name="memId" />
						<input type="hidden" id="hosptTmtSort" name="hosptTmtSort" />
						<input type="hidden" id="reservationNo" name="reservationNo"  />
						<input type="hidden" id="hsptId" name="hsptId" />
						<input type="hidden" id="hsptName" name="hsptName"  />
						<!-- input -->
						<label>[예약 번호] </label><label id="reservationNoValue"></label><br>
						<label>[진료 종류] </label><label id="reservationKindValue"></label><br>
						<label>[진료 결과]</label><br><textarea name="hosptTmtContents" rows="10" cols="20"></textarea>
					</div>
					<div class="modal-footer">
						<input type="submit" value="입력" class="btn btn-success" />
						<button id="pollChartClose" type="button" class="btn btn-success"
							data-dismiss="modal">닫기</button>
					</div>
				</form>
			</div>
		</div>
	</div>

<script type="text/javascript">
	function success(number) {
		console.log("넘어옴 승인")
		console.log(number);
		$.ajax({
			url : "/reservationAdminRest/reservationApprove/" + number,
			type : 'get',
			success : function() {
				location.href = "/hospitalAdmin/reservation"
			},
			error : function(request, status, error) {
			}
		});
	}

	function openModal(reservationNo, reservationMemberId, reservationPetNO, reservationDate, reservationStatus, reservationKind, reservationSymptom, reservationPeriod, reservationInoculationType, reservationHospitalId) {
		console.log(reservationNo, reservationMemberId, reservationPetNO, reservationDate, reservationStatus, reservationKind, reservationSymptom, reservationPeriod, reservationInoculationType, reservationHospitalId);
		$('#petNo').val(reservationPetNO);
		$('#memId').val(reservationMemberId);
		console.log(reservationMemberId)
		$('#hosptTmtSort').val(reservationKind);
		$('#reservationNo').val(reservationNo);
		$('#hsptId').val(reservationHospitalId);
		$('#reservationNoValue').text(reservationNo);
		$('#reservationKindValue').text(reservationKind);
	}

	function urpet(petNo, reservationNo){
		location.href="/hospitalAdmin/yourPetHealth?petNo=" + petNo + "&reservationNo=" + reservationNo;
	}

</script>
<jsp:include page="/WEB-INF/views/includes/footer.jsp" flush="false" />
</html>
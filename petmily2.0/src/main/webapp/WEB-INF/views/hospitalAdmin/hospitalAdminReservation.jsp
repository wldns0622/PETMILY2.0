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
										<td>
											<c:if test="${reservation.reservationStatus eq '예약신청' }">
												<button class="btn btn-success" id="statusBtn" value="승인">승인</button>
											</c:if>
											<c:if test="${reservation.reservationStatus eq '예약완료' }">
												<button class="btn btn-success" id="statusBtn" value="승인">진료결과 입력</button>
											</c:if>
											<c:if test="${reservation.reservationStatus eq '진료완료' }">
												<button class="btn btn-success" id="statusBtn" value="승인">완료</button>
											</c:if>
										</td>
									</tr>
								</c:forEach>
                            </tbody>
                        </table>

                    </div>
                </div>

<link>
<jsp:include page="/WEB-INF/views/includes/footer.jsp" flush="false" />
</html>
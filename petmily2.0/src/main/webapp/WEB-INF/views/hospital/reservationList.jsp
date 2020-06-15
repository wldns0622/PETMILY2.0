<%@page import="com.petmily.member.domain.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/includes/header.jsp" flush="false" />
<script></script>

<%
	MemberVO member = (MemberVO)session.getAttribute("member");
%>

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
												<td><a href="" class="btn btn-success">예약 취소</a></td>
											</c:when>
											<c:when test="${getList.reservationStatus eq '예약완료'}">
												<td> - </td>
											</c:when>
											<c:when test="${getList.reservationStatus eq '진료완료'}">
												<td><a href="" class="btn btn-success">진료 내역 확인</a></td>
											</c:when>
										</c:choose>
										
                            		</tr>
                            	</c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>

<jsp:include page="/WEB-INF/views/includes/footer.jsp" flush="false" />
</html>
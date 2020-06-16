<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<jsp:include page="/WEB-INF/views/includes/header.jsp" flush="false" />



<style>
.row{
	margin-left: 2rem;
	margin-right: 2rem;
}
#pet-info-box {
	border-radius: 2px;
	box-shadow: rgba(0, 0, 0, 0.227451) 3px 3px 8px 0px;
	background-color: rgb(250, 250, 250);
}
.pet-info-btn{
	width: 7rem;
    height: 5rem;
    font-size: x-large;
}
.profile-image img {
    width: 6.8rem;
    height: 6.8rem;
    position: relative;
}
.profile-image a{
	position: absolute;
	top: 135px;
    left: 55px;
    color: gray;
}
.nav-li-a-list{
	width: 10rem;
    text-align: center;
    font-size: x-large;
}
</style>

<div class="wrapper wrapper-content animated fadeInRight">
	<div class="row">
		<div class="col-3"><jsp:include page="/WEB-INF/views/hospitalAdmin/nav.jsp" flush="false"/></div>
		<div class="col-9">
		<div class="row m-b-lg m-t-lg" id="pet-info-box">
		
			<div class="col-md-4 ml-2">


				<div class="profile-image mt-4">
					<img id=""
						src="
					<c:choose>
						<c:when test="${pet.fileNo == 0}">/resources/img/mypet/default_dog.jpg</c:when>
						<c:otherwise>${pet.fileStoredNm }</c:otherwise>
						<%-- <c:when test="${pet.fileNo != 0}">${pet.fileStoredNm }</c:when> --%>

					</c:choose>
						"
						class="rounded-circle circle-border m-b-md" alt="프로필 사진">

				</div>



				<div class="profile-info mt-5">
					<div class="">
						<div>
							<h2 class="font-bold no-margins">
								<span>${pet.petNm }</span> <small><c:choose>

										<c:when test="${pet.petSex eq 'F'.charAt(0)}">여아</c:when>

										<c:when test="${pet.petSex ne 'M'.charAt(0)}">남아</c:when>

									</c:choose></small>
							</h2>
							<h4>
								<span>${pet.breedNm }</span> / <span><c:choose>

										<c:when test="${pet.code eq 4001}">강아지</c:when>

										<c:when test="${pet.code eq 4002}">고양이</c:when>

									</c:choose></span>
							</h4>
							<small> <fmt:formatDate pattern="yyyy / MM / dd"
									value="${pet.petBirth }" />
							</small>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3 mt-4">
				<table class="table m-b-xs">
					<tbody>
						<tr>
							<td>상태</td>
							<td><strong>${pet.petSt }</strong></td>

						</tr>
						<tr>
							<td>중성화</td>
							<td><strong><c:choose>

										<c:when test="${pet.petNeutral eq 'Y'.charAt(0)}">후</c:when>

										<c:when test="${pet.petNeutral ne 'N'.charAt(0)}">전</c:when>

									</c:choose></strong></td>
						</tr>
						<tr>
							<td>기본예방접종</td>
							<td><strong>${pet.petBasicVaccination }</strong></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-md-2">
				<div class="widget red-bg text-center">
					<div class="m-b-md">
						<i class="fa fa-warning fa-3x"></i>
						<h3 class="font-bold mt-2">증상</h3>
						<h3 class="font-bold mt-2">
							<span>${rsvn.reservationSymptom } / ${rsvn.reservationPeriod}</span>
						</h3>
					</div>
				</div>

			</div>

			<div class="col-md-2 ">
				<div class="widget yellow-bg text-center">
					<div class="m-b-md">
						<i class="fa fa-medkit fa-3x"></i>
						<h3 class="font-bold mt-2">방문 목적</h3>
						<h3 class="font-bold mt-2">
							${rsvn.reservationKind}
						</h3>
					</div>
				</div>
			</div>

			

			<!-- Delete Modal Start -->

			<div class="modal inmodal" id="deleteModal" tabindex="-1"
				role="dialog" aria-hidden="true" style="display: none;">
				<div class="modal-dialog">
					<div class="modal-content animated rubberBand">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">×</span><span class="sr-only">Close</span>
							</button>
							<i class="fa fa-warning modal-icon ml-4 mb-4"></i>
							<h4 class="modal-title">정말 삭제하시겠어요?</h4>
							삭제한 데이터는 복구가 불가능해요!
						</div>

						<div class="modal-footer">
							<button type="button" class="btn btn-white" data-dismiss="modal">취소</button>
							<form action="/mypet/deletePet" method="post">
								<input id="delete-pet" type="hidden" name="petNo" value="">
								<button type="submit" class="btn btn-danger" data-oper="delete"
									data-dismiss="modal">삭제</button>
							</form>

						</div>
					</div>
				</div>
			</div>


			<!-- Delete Modal End -->

		</div>

		<div class="row">
			<h1>유어펫 페이지</h1>
		</div>


		<div class="row">
			<div class="col-lg-12">
				<div class="tabs-container">
					<ul class="nav nav-tabs" role="tablist">
						<li><a class="nav-link a nav-li-a-list" id="tablist-1"
							data-toggle="tab" href="#tab-1"> 진료</a></li>
						<li><a class="nav-link nav-li-a-list" id="tablist-2"
							data-toggle="tab" href="#tab-2"> 접종</a></li>
						<li><a class="nav-link nav-li-a-list" id="tablist-3" data-toggle="tab" href="#tab-3">
							체중</a></li>
					</ul>
					<div class="tab-content">
						<!-- Tab 1 -->
						<div role="tabpanel" id="tab-1" class="tab-pane">
							<div class="panel-body animated fadeInDown">

								<%@include file="/WEB-INF/views/hospitalAdmin/consultation.jsp"%>

							</div>
						</div>
						<!-- Tab 2 -->
						<div role="tabpanel" id="tab-2" class="tab-pane">
							<div class="panel-body animated fadeInDown">

								<%@include file="/WEB-INF/views/hospitalAdmin/immunization.jsp"%>

							</div>
						</div>
						
						<!-- Tab 3 -->
						<div role="tabpanel" id="tab-3" class="tab-pane">
							<div class="panel-body animated fadeInDown">
	
								<%@include file="/WEB-INF/views/hospitalAdmin/weight.jsp"%>
	
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>
		</div>
	</div>
</div>

<!-- Mainly scripts -->

<script type="text/javascript">



$(document).ready(function () {
	
})
</script>



<jsp:include page="/WEB-INF/views/includes/footer.jsp" flush="false" />
</html>
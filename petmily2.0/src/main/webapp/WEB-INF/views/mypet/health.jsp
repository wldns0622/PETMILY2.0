<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page session="false"%>

<%@include file="/WEB-INF/views/includes/header.jsp"%>

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
</style>

<div class="wrapper wrapper-content animated fadeInRight">
	<div class="row m-b-lg m-t-lg" id="pet-info-box">
		<div class="col-md-3">

			
			<div class="profile-image" data-toggle="modal" data-target="#update-profile">
				<img id="" src="
					<c:choose>
						<c:when test="${pet.fileNo == 0}">/resources/img/mypet/default_dog.jpg</c:when>
						<c:otherwise>${pet.fileStoredNm }</c:otherwise>
						<%-- <c:when test="${pet.fileNo != 0}">${pet.fileStoredNm }</c:when> --%>

					</c:choose>
						"
					class="rounded-circle circle-border m-b-md" alt="프로필 사진">
				<a>EDIT</a>
			</div>
			
			<!-- Image Modal Start -->

			<div class="modal inmodal" id="update-profile" tabindex="-1"
				role="dialog" aria-hidden="true" style="display: none;">
				<div class="modal-dialog">
					<div class="modal-content animated bounceIn">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">×</span><span class="sr-only">Close</span>
							</button>
							<i class="fa fa-picture-o modal-icon ml-4 mb-4"></i>
							<h4 class="modal-title">프로필 사진 수정</h4>
						</div>
						<div class="modal-body">
							<div class="dropzone" id="dropzoneForm">
								<div class="fallback uploadDiv">
									<input name="fileOriginalNm" type="file" multiple />
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-white"
								data-dismiss="modal">취소</button>
							
								<input  id="pet-no" type="hidden" name="petNo" value="${pet.petNo }">
								<button type="submit" id="uploadBtn" class="btn btn-info" data-dismiss="modal">수정</button>
														
						</div>
					</div>
				</div>
			</div>

			<!-- Image Modal End -->
			
			<div class="profile-info">
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
										value="${pet.petBirth }" />  </small>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-3">
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
			<div class="widget red-bg p-lg text-center">
				<div class="m-b-md">
					<i class="fa fa-rocket fa-4x"></i>
					<h3 class="font-bold no-margins">지구별 여행</h3>
					<h1 class="font-bold m-xs">
						D+<span id="d-day-no"></span>
					</h1>
				</div>
			</div>

		</div>

		<div class="col-md-2">
			<div class="widget yellow-bg p-lg text-center">
				<div class="m-b-md">
					<i class="fa fa-paw fa-4x"></i>
					<h3 class="font-bold no-margins">등록 일자</h3>
					<h3 class="font-bold"><fmt:formatDate pattern="yyyy / MM / dd"
										value="${pet.petRegdt }" /></h3>
				</div>
			</div>
		</div>

		<div class="col-md-2">
			<button type="button" class="btn btn-w-m btn-info">수정</button>
			<button type="button" class="delete-btn btn btn-w-m btn-danger" data-toggle="modal" data-petno="${pet.petNo }" data-target="#deleteModal">삭제</button>
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
							<button type="button" class="btn btn-white"
								data-dismiss="modal">취소</button>
								<form action="/mypet/deletePet" method="post">
									<input  id="delete-pet" type="hidden" name="petNo" value="">
									<button type="submit" class="btn btn-danger" data-oper="delete" data-dismiss="modal">삭제</button>
								</form>
							
						</div>
					</div>
				</div>
			</div>


			<!-- Delete Modal End -->

	</div>

	<div class="row">
		<h1>마이 펫페이지</h1>
	</div>


	<div class="row">
		<div class="col-lg-12">
			<div class="tabs-container">
				<ul class="nav nav-tabs" role="tablist">
					<li><a class="nav-link a" id="tablist-1" data-toggle="tab" href="#tab-1" >
							진료</a></li>
					<li><a class="nav-link" id="tablist-2" data-toggle="tab" href="#tab-2">
							접종</a></li>
					<li><a class="nav-link" id="tablist-3" data-toggle="tab" href="#tab-3">
							체중</a></li>
				</ul>
				<div class="tab-content">
					<!-- Tab 1 -->
					<div role="tabpanel" id="tab-1" class="tab-pane">
						<div class="panel-body animated fadeInDown">

							<%@include file="/WEB-INF/views/mypet/consultation.jsp"%>

						</div>
					</div>
					<!-- Tab 2 -->
					<div role="tabpanel" id="tab-2" class="tab-pane" >
						<div class="panel-body animated fadeInDown">

							<%@include file="/WEB-INF/views/mypet/immunization.jsp"%>

						</div>
					</div>
					<!-- Tab 3 -->
					<div role="tabpanel" id="tab-3" class="tab-pane">
						<div class="panel-body animated fadeInDown">

							<%@include file="/WEB-INF/views/mypet/weight.jsp"%>

						</div>
					</div>
				</div>


			</div>
		</div>
	</div>
</div>

<!-- Mainly scripts -->

<script type="text/javascript">
var regex = new RegExp("(.*?)\.(exe|sh|zip|alz|pdf)$");
var maxSize = 5242880; //5MB

function checkExtension(fileName, fileSize) {
	if(fileSize >= maxSize){
		alert("파일 사이즈 초과");
		return false;
	}
	
	if(regex.test(fileName)){
		alert("해당 종류의 파일은 업로드할 수 없습니다.");
		return false;
	}
	return true;
}

function dDay() {
    var now = new Date();
    console.log('now: '+ now);
    var then = new Date('<fmt:formatDate pattern="yyyy/MM /dd" value="${pet.petBirth }" />');
   	console.log('then: '+ then);
    var gap = now.getTime() - then.getTime();
    console.log(gap);
    gap = Math.floor(gap / (1000 * 60 * 60 * 24));
    console.log(gap);
    $('#d-day-no').append(gap);
}

$(document).ready(function () {
	dDay();
	
	$("#uploadBtn").on("click", function (e) {
		var formData = new FormData();
		var inputFile = $("input[name='fileOriginalNm']");
		var files = inputFile[0].files;
		console.log(files);
		
		//add filedata to formdata
		for(var i = 0; i < files.length; i++){
			if(!checkExtension(files[i].name, files[i].size)){
				return false;
			}
			
			formData.append("fileOriginalNm", files[i]);
		}
		formData.append("petNo",$('#pet-no').val());
		
		$.ajax({
			url: '/health/uploadAjaxAction',
			processData: false,
			contentType: false,
			data: formData,
			type: 'POST',
			success: function (result) {
				//워크스페이스 refresh 해줘야 뜹니다
				$('#profile-image-img').attr('src',result);
				alert("프로필 사진 등록이 완료되었습니다.");
			}
		})// end $.ajax
	})
})
</script>

<script type="text/javascript">
$(document).ready(function() {
	//삭제
	$(document).on("click",".delete-btn",function(){
		
		var petNo = $(this).data("petno");
		
		
		//console.log("삭제될 번호: " + petNo);
		
		$("#delete-pet").val(petNo);
		//console.log("바뀐 번호: "+ $("#delete-pet").val());
		
		  
					 
	});
	
});

</script>
<!-- Page-Level Scripts -->
<script>
	$(document).ready(function() {

		$('.footable').footable();
		$('.footable2').footable();

	});
</script>

<%@include file="/WEB-INF/views/includes/footer.jsp"%>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page session="false"%>

<%@include file="/WEB-INF/views/includes/header.jsp"%>
<style>
<!--
.rounded-circle {
	width: 7rem;
	height: 7rem;
}

.modal-backdrop {
	background-color: transparent;
}

-->
</style>
<div id="content" class="container">
	<div id="content-body" class="col-12 mt-5">


		<h1>반려동물 정보</h1>



		<div class="col-lg-12">

			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#myModal">반려동물 등록</button>

			<div class="modal inmodal" id="myModal" tabindex="-1" role="dialog"
				aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content animated bounceInRight">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
							</button>
							<i class="fa fa-paw modal-icon" style="margin-left: 1.5rem;"></i>
							<h4 class="modal-title">반려동물 등록</h4>
							<small class="font-bold">반려동물 등록시 반려동물의 정보가 예약 병원에 연동됩니다.</small>
						</div>
						<div class="modal-body">
							<form action="/mypet/insertPet" method="post">
								
								<div class="form-group">
									<label for="insert-pet-nm" class="col-form-label">애완동물명</label>
									<input type="text" class="form-control" id="insert-pet-nm"
										name="petNm">
								</div>
								<div class="form-group">
									<label for="insert-pet-birth" class="col-form-label">생일</label>
									<div class="md-form">
										<input placeholder="날짜를 선택하세요" type="date"
											id="date-picker-example" class="form-control datepicker"
											name="petBirth">
									</div>
								</div>
								<div class="form-group">
									<label for="insert-pet-sex" class="col-form-label">성별</label>
									<div class="btn-group btn-group-toggle" data-toggle="buttons">
										<label class="btn btn-secondary"> <input type="radio"
											id="insert-pet-sex-m" name="petSex" value="M"> 남아
										</label> <label class="btn btn-secondary"> <input type="radio"
											id="insert-pet-sex-f" name="petSex" value="F"> 여아
										</label>
									</div>
								</div>
								<div class="form-group">
									<div class="input-group mb-3">
										<div class="input-group-prepend">
											<label class="input-group-text" for="insert-pet-species">반려동물
												종류</label>
										</div>
										<select class="custom-select" id="insert-pet-species"
											name="petSpecies">
											<option value="4001">강아지</option>
											<option value="4002">고양이</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<div class="input-group mb-3">
										<div class="input-group-prepend">
											<label class="input-group-text" for="insert-breed-no">품종</label>
										</div>
										<div class="form-group mx-sm-3 mb-2">
											<input type="hidden" id="insert-breed-no" name="breedNo">
											<input class="form-control" type="text" id="insert-breed-nm"
												name="breedNm" placeholder="검색 버튼을 눌러주세요!" readonly>
										</div>
										<input type="button" class="btn btn-secondary"
											id="search-breed" value="검색"><br>

									</div>
								</div>
								<div class="form-group">
									<div class="input-group mb-3">
										<div class="input-group-prepend">
											<label class="input-group-text" for="insert-pet-st">상태</label>
										</div>
										<select class="custom-select" id="input-pet-st" name="petSt">
											<option value="함께 있어요">함께 있어요</option>
											<option value="임시보호">임시보호</option>
											<option value="실종신고">실종신고</option>
											<option value="무지개별">무지개별</option>
										</select>
									</div>
								</div>

								<div class="form-group">
									<label for="insert-pet-basic-vaccination"
										class="col-form-label">기초 예방 접종</label>
									<div class="btn-group" role="group" aria-label="Basic example">
									
										<input type="radio" id="insert-pet-basic-vaccination-dn"
											name="petBasicVaccination" value="모름"> <label
											for="insert-pet-basic-vaccination-dn">모름</label><br>
										
										<input
											type="radio" id="insert-pet-basic-vaccination-before"
											name="petBasicVaccination" value="전"> <label
											for="insert-pet-basic-vaccination-before">접종 전</label><br>
										<input type="radio" id="insert-pet-basic-vaccination-doing"
											name="petBasicVaccination" value="중"> <label
											for="insert-pet-basic-vaccination-doing">접종 중</label> <input
											type="radio" id="insert-pet-basic-vaccination-after"
											name="petBasicVaccination" value="후"> <label
											for="insert-pet-basic-vaccination-after">접종 후</label>
									</div>
								</div>
								<div class="form-group">
									<label for="insert-pet-neutral" class="col-form-label">중성화
										여부</label>
									<div class="btn-group" role="group" aria-label="Basic example">
										<input type="radio" id="insert-pet-neutral-before"
											name="petNeutral" value="N"> <label
											for="insert-pet-neutral-before">중성화 전</label><br> <input
											type="radio" id="insert-pet-neutral-after" name="petNeutral"
											value="Y"> <label for="insert-pet-neutral-after">중성화
											후</label><br>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-white"
										data-dismiss="modal">닫기</button>
									<button type="submit" class="btn btn-success">등록</button>
								</div>
							</form>
						</div>

					</div>
				</div>
			</div>



		</div>
		<!-- Button trigger modal -->

		<!-- Modal -->

		<!-- Modal END -->

		<div class="row animated fadeInDown">
			<!-- Pet detail Start -->
			<c:forEach items="${petList }" var="pet">
				<div class="col-lg-3">
				<a href="/health/home?petNo=<c:out value="${pet.petNo}"/>">	
					<div class="widget-head-color-box navy-bg p-lg text-center">
							
							<div class="m-b-md">
								<h2 class="font-bold no-margins">
									<c:out value="${pet.petNm }" />
								</h2>
								<small><fmt:formatDate pattern="yyyy / MM / dd"
										value="${pet.petBirth }" /> </small>
							</div>
							<img src="
							<c:choose>
	
										<c:when test="${pet.fileNo == 0}">/resources/img/mypet/default_dog.jpg</c:when>
										<c:otherwise>${pet.fileStoredNm }</c:otherwise>
										<%-- <c:when test="${pet.fileNo != 0}">${pet.fileStoredNm }</c:when> --%>
	
							</c:choose>
							"
								class="rounded-circle circle-border m-b-md" alt="프로필 사진">
							<div>
								<span><c:out value="${pet.breedNm }" /></span> | <span><c:choose>
	
										<c:when test="${pet.code eq 4001}">강아지</c:when>
	
										<c:when test="${pet.code eq 4002}">고양이</c:when>
	
									</c:choose> </span> | <span><c:choose>
	
										<c:when test="${pet.petSex eq 'F'.charAt(0)}">여아</c:when>
	
										<c:when test="${pet.petSex ne 'M'.charAt(0)}">남아</c:when>
	
									</c:choose></span>
							</div>
						
					</div>
					</a>
					<div class="widget-text-box">
						<div class="text-right">
							<a href="" class="delete-btn btn btn-xs btn-primary" 
								data-toggle="modal" data-petno="${pet.petNo }" data-target="#deleteModal"> 삭제</a>
							
						</div>
					</div>
				</div>
			</c:forEach>
			<!-- Pet detail End -->
			
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
									<button type="submit" class="btn btn-danger" data-oper="delete">삭제</button>
								</form>
							
						</div>
					</div>
				</div>
			</div>


			<!-- Delete Modal End -->
		</div>
	</div>
</div>






<!-- Mainly scripts -->

<!-- <script src="/resources/js/popper.min.js"></script>
<script src="/resources/js/bootstrap.js"></script>
<script src="/resources/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="/resources/js/plugins/slimscroll/jquery.slimscroll.min.js"></script> -->
    


<!-- Data picker -->
<script src="/resources/js/plugins/datapicker/bootstrap-datepicker.js"></script>

<script type="text/javascript">
$(document).ready(function() {

		/*품종 검색 창으로 value값 넘겨주기*/
		
		/*누수 확인*/
		$('#search-breed').click(function(){
	    	var openWin;


	       	console.log('openChild');
	        // window.name = "부모창 이름"; 
	        window.name = "petManagement";
	        // window.open("open할 window", "자식창 이름", "팝업창 옵션");
	        openWin = window.open("/mypet/petBreedSearch?petSpecies="+$('#insert-pet-species').first().val(), //petBreedSearch.jsp
	        "petBreedSearch", "width=570, height=700, resizable = no, scrollbars = no");    

	       
	        function setChildText(){
	        	console.log('setChild');
	            openWin.document.getElementById("set-pet-species").value = document.getElementById("insert-pet-species").value;
	        }

	        
	    });
		
		// 삭제
		$(document).on("click",".delete-btn",function(){
			
			var petNo = $(this).data("petno");
			
			
			//console.log("삭제될 번호: " + petNo);
			
			$("#delete-pet").val(petNo);
			//console.log("바뀐 번호: "+ $("#delete-pet").val());
			
			
			  
						 
		});
		
		//헬스페이지 이동
		$(document).on("click",".go-health",function(){
			
			var petNo = $(this).data("petno");
			
			
			//console.log("삭제될 번호: " + petNo);
			
			
			
			
			  
						 
		});
		
		$(document).on("click","#search-breed2",function(){
	    	var openWin;


	       	console.log('openChild');
	        // window.name = "부모창 이름"; 
	        window.name = "petManagement";
	        // window.open("open할 window", "자식창 이름", "팝업창 옵션");
	        openWin = window.open("/PETMILYPROJECT/pet/selectBreedByCode.go?pet_species="+$(this).parent().find("#update-pet-species").val()+"&pet_no="+$(this).parent().find("#update-pet-no").val(), //petBreedSearch.jsp
	        "petBreedSearch", "width=570, height=700, resizable = no, scrollbars = no");    

	       
	        function setChildText(){
	        	console.log('setChild');
	            openWin.document.getElementById("set-pet-species").value = $(this).parent().find("#update-pet-species").val();
	            openWin.document.getElementById("set-pet-no").value = $(this).parent().find("#update-pet-no").val();
	        }

	        
	    });
		
		/*순서 update*/
/* 		$(document).on("click","#update-order-by",function(){
			console.log('클릭');
			var $updateInput = $('.update-pet-no-input');
			console.log($updateInput);
			if($updateInput!=null){
				for (var i = 1; i < $updateInput.length+1; i++) {
					console.log($updateInput[i-1]);
					console.log('위치 이동');
					var xhttp;
					  xhttp = new XMLHttpRequest();
					  xhttp.onreadystatechange = function() {
						  console.log('onreadystatechange');
					    if (this.readyState == 4 && this.status == 200) {
					    document.getElementById("accordion").innerHTML = this.responseText;
					    }
					  };
					  xhttp.open("GET", "/PETMILYPROJECT/pet/updatePetOdrNOAcion.go?pet_no="+$updateInput.eq(i-1).val()+"&pet_odr_no="+i, true);
					  xhttp.send(null);
				}
				alert('변경 완료!');
				location.reload();
			}
		}) */
		
		/* $("#accordion").sortable({
			start: function(event, ui) {

	        },
	        change: function(event, ui) {

	        },
	        update: function(event, ui) {
	        	$('#update-order-by-div').empty();
	        	var button = '<button type="button" class="btn btn-primary" id="update-order-by">순서 저장</button>';
	        	$('#update-order-by-div').append(button);
				
				
	        }
		});  */
		
		var formObj = $("form");
		
		
});
</script>



<%@include file="/WEB-INF/views/includes/footer.jsp"%>
</html>

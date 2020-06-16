<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="/resources/css/plugins/iCheck/custom.css" rel="stylesheet">
<style>

#preview{
position:absolute;
border:1px solid #eee;
background:#eee;
padding:2px;
display:none;
color:#fff;
}


input[type=checkbox] {
	zoom: 2;
}
</style>
<jsp:include page="/WEB-INF/views/includes/header.jsp" flush="false" />
<div id="content" class="container-fluid">
	<div class="row">
		<jsp:include page="/WEB-INF/views/includes/adminnav.jsp" flush="false" />
		<div id="content-body"
			class="col-9 wrapper wrapper-content animated fadeInRight ">


			<div class="row">
				<div class="container-fluid i-box border-bottom">
					<div class="ibox-title">
						<h2>병원 계정 승인 관리</h2>
					</div>
						<div class="row">
					<div id="select" class="col-lg-12 col-md-12 m-b border-top">
							<form id="sortingForm" name="area" action="/admin/userManager"
								method="get">
								<div class="row m-t">
						<div class="col-lg-3 ">
									<label class=" col-form-label">사용자 분류</label> 
									<select id="selectCd"
										class="form-control col-sm-10" name="codeSelect"
										onchange="changeSubmit()">
										<option value="" selected disabled hidden>관리자</option>
									<%-- 	<c:forEach var="item" items="${userCodeList}">
											<option value="${item.code}">${item.codeNm}</option>
										</c:forEach> --%>
									</select>
						</div>
						<div class="col-lg-9 ">
									<label class="col-form-label">사용자 검색</label> 
									<input name="keyword" type="text" placeholder="검색어를 입력해주세요." class="form-control col-lg-4">
								</div>
								</div>
							</form>
						</div>
						</div>
					</div>
					<div class="col-lg-12">
						<div>
							<form onsubmit="return confirm('선택된 계정 신청을 승인하시겠습니까?')">
							
								<table
									class="table table-striped table-hover border-bottom border-top">
									<thead>
										<tr>
											<th>이름</th>
											<th>아이디</th>
											<th>주소</th>
											<th>전화번호</th>
											<th>면허번호</th>
											<th>첨부파일</th>
											<th style="width: 8%">승인</th>
										</tr>

									</thead>
									<tbody id="tbodyRow">
										<c:forEach var="list" items="${approveList}" varStatus="status">
											<tr>
												<td>${list.hsptName }</td>
												<td>${list.hsptId }</td>
												<td>${list.hsptAddr }</td>
												<td>${list.hsptTel }</td>
												<td>${list.hsptLicenseNum }</td>
												<td><img  style="width: 14px" src="${list.hsptFilePath}/${list.hsptFile}" align="center" id="100${status.index}" class="preview" alt="" /><input type="hidden" id="pics100${status.index}" value="${list.hsptFilePath}/${list.hsptFile}" /></td>
												<td><input type="checkbox" name="hsptId" value="${list.hsptId }"></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<div class="row">
									<div class="col text-right m-r-lg ">
										<input class="btn btn-w-m btn-warning"  type="submit"
											value="반려" formmethod="post"
											formaction="approveDelete">
										<input class="btn btn-w-m btn-success"  type="submit"
											value="계정 승인" formmethod="post"
											formaction="approveUpdate">
									</div>
								</div>
							</form>

						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<script type="text/javascript">
	var tmpArr = []

	function changeSubmit() {
		$('#sortingForm').submit()
	}

	$(document).ready(
			function() {
				var result = '<c:out value="${ok}"/>';

				if (result != '')
					alert("정상 처리되었습니다.");

				$.urlParam = function(name) {
					var results = new RegExp('[\?&]' + name + '=([^&#]*)')
							.exec(window.location.href);
					if (results == null) {
						return null;
					} else {
						return results[1] || 0;
					}
				};

				$.urlParam('codeSelect');

				var selectCd = $.urlParam('codeSelect');
				if (selectCd) {
					$("#selectCd").val(selectCd).prop("selected", true);
				}

				
				
				
				
				
					/* CONFIG */

					var xOffset = 200;
					var yOffset = -600;

					/* END CONFIG */
					$("img.preview").hover(function(e){
					this.t = this.title;
					this.title = "";
					var c = (this.t != "") ? "<br/>" + this.t : "";
					$("body").append("<p id='preview'><img src='"+ $("#pics"+this.id).val() +"' alt='Image preview' width='499px' />"+ c +"</p>");
					$("#preview")
					.css("top",(e.pageY - xOffset) + "px")
					.css("left",(e.pageX + yOffset) + "px")
					.fadeIn("fast");
					},
					function(){
					this.title = this.t;
					$("#preview").remove();
					});
					$("img.preview").mousemove(function(e){
					$("#preview")
					.css("top",(e.pageY - xOffset) + "px")
					.css("left",(e.pageX + yOffset) + "px");
					});
			})

</script>
<jsp:include page="/WEB-INF/views/includes/footer.jsp" flush="false" />

</html>
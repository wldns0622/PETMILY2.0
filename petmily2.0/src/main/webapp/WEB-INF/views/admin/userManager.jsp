<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="/resources/css/plugins/iCheck/custom.css" rel="stylesheet">
<style>
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
						<h2>사용자 관리</h2>
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
										<c:forEach var="item" items="${userCodeList}">
											<option value="${item.code}">${item.codeNm}</option>
										</c:forEach>
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
							<form>
								<table
									class="table table-striped table-hover border-bottom border-top">
									<thead>
										<tr>
											<th>이름</th>
											<th>아이디</th>
											<th>닉네임</th>
											<th>이메일</th>
											<th style="width: 15%">권한</th>
										</tr>

									</thead>
									<tbody id="tbodyRow">
										<c:forEach var="list" items="${userList}">
											<tr>
												<td>${list.name }</td>
												<td>${list.id }</td>
												<td>${list.nicknm }</td>
												<td>${list.email }</td>
												<td><select class="form-control m-n" name="codeSelect">
														<option value="" selected disabled hidden>${list.codeNm }</option>
														<c:forEach var="item" items="${userCodeList }">
															<option value="${item.code}">${item.codeNm}</option>
														</c:forEach>
												</select></td>
											</tr>
											<input id="code" type="hidden" value="${list.code }">
										</c:forEach>
									</tbody>
								</table>
								<div class="row">
									<div class="col text-right m-r-lg ">
										<input class="btn btn-w-m btn-warning" type="button"
											value="정보 변경" onclick="updateSubmit()" formmethod="post"
											formaction="#">
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

			})
	$('#tbodyRow').find('select').on('change', function() {
		jsonObj = {
			"code" : $(this).val(),
			"id" : $(this).parents('tr').children().eq(1).text()
		}

		tmpArr.push(jsonObj)
	})

	function updateSubmit() {
		console.log(tmpArr);
		if (tmpArr.length != 0) {
			$.ajax({
				url : "/admin/userCodeUpdate",
				type : "POST",
				dataType : "text",
				contentType : "application/json",
				data : JSON.stringify(tmpArr),
				success : function(data) {
					alert("반영되었습니다.")
					location.reload(true);

				},
				error : function() {
					alert("에러발생")
				}
			})

		} else {
			alert("변경 사항이 업습니다.")
		}

	}
</script>
<jsp:include page="/WEB-INF/views/includes/footer.jsp" flush="false" />

</html>
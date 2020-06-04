<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/views/includes/header.jsp" flush="false" />

<body>

	<div class="container wrapper wrapper-content animated fadeInRight">
			<div class="row">
				<div class="col-lg-12">
					<div class="ibox border border-size-xl">
					<div class="form-control ibox-title">
							<h4>글 작성</h4>
					</div>
					<div class="ibox-content ">
					
							<form action="insertform"
								class="comment-form" method="post">
								<div class="form-group col-lg-12 row p-sm">
									<label style="text-align: right;"
										class=" col-form-label col-lg-1" >제목</label>
									<div class="col-lg-7">
										<input class="form-control" type="text" placeholder="제목" name="boardTitle">
									</div>
									<div class="col-lg-3">
										<select class="form-control" name="boardCd">
											<c:forEach var="item" items="${codeList}">
												<option value="${item.code}">${item.codeNm}</option>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="form-group col-lg-12 row">
									<label style="text-align: right;"
										class=" col-form-label col-form-label col-lg-1" >작성자</label>
									<div class="col-lg-3">
										<input class="form-control col-lg-5" type="text" readonly="readonly" name="memNm" value=${member.name }>
										<input type="hidden" name="memId" value="${member.id }">
									</div>
								</div>
								<div class="row">
									<div class="col-lg-12">
										<textarea id="content" name="boardContent" placeholder="내용을 입력해주세요."></textarea>
										<button type="submit" class="btn btn-w-m btn-default float-right m-md">작성</button>
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
	<!-- Blog Details Section End -->

	<script type="text/javascript">

	$(document).ready(function() {
		$('#content').summernote({
			height: 700,
			fontNames : [ '맑은고딕', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', ],
			fontNamesIgnoreCheck : [ '맑은고딕' ],
			focus: true
		});
	});




	</script>
	<jsp:include page="/WEB-INF/views/includes/footer.jsp" flush="false" />
	<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote-bs4.min.js"></script>

	
</html>
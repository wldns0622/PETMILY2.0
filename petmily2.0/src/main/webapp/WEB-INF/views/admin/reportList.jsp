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
<div id = "content" class="container-fluid">
<div class="row">
<jsp:include page="/WEB-INF/views/includes/adminnav.jsp" flush="false" />
	<div id = "content-body" class="col-9 wrapper wrapper-content animated fadeInRight ">
	<div class="row">
	<div class="container-fluid i-box ">
             <div class="ibox-title">
           		  <h2>신고된 글 관리</h2>
             </div>
			<div class="col-lg-12">
				<div>
					<form>
					<table class="table table-hover border-bottom border-top">
						<thead>
							<tr>
								<th scope="col">접수번호</th>
								<th scope="col" >글번호</th>
								<th scope="col">신고자ID</th>
								<th scope="col">신고내용</th>
								<th scope="col">신고일자</th>
								<th scope="col">일괄체크</th>
							</tr>
						</thead>
						<tbody>
						
						<c:forEach var="list" items="${reportList}">
							<tr>
								<td>${list.rptNo}</td>
								<td scope="row"><a href="detailAction.do?seq=${list.boardNo }">${list.boardNo }</a> <span class="card-subtitle mb-2 text-muted"></span></td>
								<td>${list.memId}</td>
								<td>${list.rptContents}</td>
								<td>${list.rptDt }</td>
								<td><input type="checkbox" name="rptNo" value="${list.rptNo }"></td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
					<div class="row">
					<div class="col text-right m-r-lg ">
									<input class="btn btn-w-m btn-danger" type="submit" value="게시물 삭제" formmethod="post" formaction="/admin/reportCommit">
									<input class="btn btn-w-m btn-warning" type="submit" value="신고 반려" formmethod="post" formaction="/admin/reportReject">
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
        $(document).ready(function(){
        	var result = '<c:out value="${ok}"/>';
        	
        	if(result != '')
        	alert("정상 처리되었습니다.");
        })
        

    </script>
<jsp:include page="/WEB-INF/views/includes/footer.jsp" flush="false" />

</html>
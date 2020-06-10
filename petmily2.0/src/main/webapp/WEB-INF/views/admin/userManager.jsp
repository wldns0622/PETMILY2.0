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
<div id = "content" class="container">
<div class="row">
<jsp:include page="/WEB-INF/views/includes/adminnav.jsp" flush="false" />
	<div id = "content-body" class="col-9 wrapper wrapper-content animated fadeInRight ">
	<div class="row">
	<div class="container i-box ">
             <div class="ibox-title">
           		  <h2>사용자 관리</h2>
		<input type="">
             </div>
			<div class="col-lg-12">
				<div>
					<form>
					<table class="table table-hover border-bottom border-top">
						<thead>
							<tr>
								<th scope="col">이름</th>
								<th scope="col">아이디</th>
								<th scope="col">닉네임</th>
								<th scope="col">이메일</th>
								<th scope="col">권한</th>
							</tr>
							
						</thead>
						<tbody>
						<c:forEach var="list" items="${userList}">
							<tr>
								<td>${list.name }</td>
								<td>${list.id }</td>
								<td>${list.nicknm }</td>
								<td>${list.email }</td>
								<td>${list.codeNm }</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
					<div class="row">
					<div class="col text-right m-r-lg ">
									<input class="btn btn-w-m btn-warning" type="button" value="정보 변경" formmethod="post" formaction="#">
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
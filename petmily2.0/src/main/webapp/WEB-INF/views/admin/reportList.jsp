<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/views/includes/header.jsp" flush="false" />

<div id = "content" class="container">
	<div id = "content-body" class="col-12 product-shop">
	<div class="container">
		<div class="row">
	        <div class="col-lg-9 order-1 order-lg-2">
	            <div class="product-show-option">
	                <div class="row">
	                    <div class="col-lg-7 col-md-7">
	                    <h3>신고된 글 목록</h3>
	                    </div>
	                </div>
	            </div>
            </div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div>
					<table class="table table-hover border-bottom">
						<thead>
							<tr>
								<th scope="col">접수번호</th>
								<th scope="col" >글번호</th>
								<th scope="col">신고자ID</th>
								<th scope="col">신고내용</th>
								<th scope="col">신고일자</th>
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
							</tr>
						</c:forEach>
						</tbody>
					</table>

				</div>

			</div>
		</div>
	</div>
</div>
</div>

        <script type="text/javascript">

    </script>
<jsp:include page="/WEB-INF/views/includes/footer.jsp" flush="false" />

</html>
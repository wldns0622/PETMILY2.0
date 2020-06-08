<%@page import="com.petmily.member.domain.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String code = request.getParameter("selectSorting");
	request.setAttribute("selectCd", code);
	
%>
<jsp:include page="/WEB-INF/views/includes/header.jsp" flush="false" />

	<div id="content" class="container animated fadeInRight">
		<div id="content-body" class="col-12 ibox border m-t-xl">
			<div class="content-inner ibox-content">
				<div class="card col">
					<div class="row">
						<div class="card-body">
							<h2 class="card-title col-lg-10">${board.boardTitle }</h2>
							<span class="card-subtitle mb-3 text-muted col-lg-3">${board.memNm }</span>
							<span class="card-subtitle mb-2 text-muted">${board.createDt }</span>
							<span style="text-align: right;" class="likeCount">0</span>
						</div>
					</div>
				</div>
				<p class="card-body">${board.boardContent }</p>
				<div class="card-body text-center">
						<c:choose>
							<c:when test="${!empty loginMember && likeYn eq 'N'}">
								<button type="button" id="likeBtn" data-style="slide-right" class="ladda-button btn btn-outline-info">좋아요</button>
							</c:when>
							<c:when test="${!empty loginMember && likeYn eq 'Y'}">
								<button type="button" id="likeBtn" data-style="slide-right" class="ladda-button btn btn-info">좋아요</button>
							</c:when>
							<c:when test="${empty loginMember}">
								<button hidden="true" type="button" id="likeBtn" class="btn btn-outline-info">좋아요</button>
							</c:when>
						</c:choose>
				
					<button type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal">신고</button>
				</div>

				<div class="form-group">
					<form action="insertReply"
						method="post">
						<input type="hidden" id="boardNo" name="boardNo" value="${board.boardNo}">
						<input type="hidden" name="writerNm" value="${member.name}">
						<input type="hidden" name="writerId" value="${member.id}">
						<div class="card-body row">
						
							<c:choose>
								<c:when test="${!empty loginMember}">
								<textarea class="form-control col-lg-11" name="replyContent"
								placeholder="댓글을 입력해주세요." id="exampleFormControlTextarea1"
								rows="1"></textarea>
							<input class="btn btn-dark col-lg-1" type="submit" value="등록">
								</c:when>
								<c:when test="${empty loginMember}">
								<textarea class="form-control col-lg-11" name="replyContent"
								placeholder="로그인이 필요합니다." readonly="readonly" id="exampleFormControlTextarea1"
								rows="1"></textarea>
								</c:when>
							</c:choose>
						</div>
					</form>
				</div>

				<c:forEach var="item" items="${replys}">
					<div class="reply_area_box">
						<div class="thumb_area">
							<div class="reply_content">

								<strong class="user_name">${item.writerNm }</strong> <span
									class="number">${item.createDt }</span>
								<p class="reply_txt pd_css">${item.replyContent}</p>

							</div>
						</div>
					</div>
				</c:forEach>


			</div>
 			<a style="color: black;"href="list"><button type="button" class="btn btn-w-m btn-default float-right m-md">목록</button></a>
		</div>
	</div>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">게시글 신고</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
     <form action="/pettalk/reportAction" method="post">
      <div class="modal-body">
    	 <table class="table">
					<tr>
						<td>게시글번호</td>
						<td><input class="form-control" readonly="readonly" name="boardNo" id="boardNoModal" type="text"></td>
					</tr><tr>
						<td>신고사유</td>
						<td colspan="5"><textarea class="form-control" name="rptContents" id="workContentCmMd" rows="4" ></textarea></td>
					</tr>
					
					<!-- <tr>
 						<td>작업시간</td>
 						<td><input class="form-control" id="workTimeCmMd" readonly="readonly" type="text"></td>
					</tr> -->
				</table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        <button type="submit" class="btn btn-primary">신고하기</button>
      </div>
					</form>
    </div>
  </div>
</div> 
<jsp:include page="/WEB-INF/views/includes/footer.jsp" flush="false" />
<script src="/resources/js/plugins/ladda/spin.min.js"></script>
<script src="/resources/js/plugins/ladda/ladda.min.js"></script>
<script src="/resources/js/plugins/ladda/ladda.jquery.min.js"></script>
	<!-- Button trigger modal -->
	<script type="text/javascript">
	
	
	$('#myModal').on('shown.bs.modal', function () {
		  $('#myInput').trigger('focus')
		})

		$("#likeBtn").click(function() {
			$.ajax({
				url : "/pettalk/likeUpdate",
				type : "POST",
				data : {
					boardNo : "${board.boardNo}",
					memToId : "${member.name}",
					memId : "${board.memId}"
				},
				success : function(data) {
					if(data==5){
						likeCount();
					}
						likeCount();
				},
			})
		})

		function likeCount() {
			$.ajax({
				url : "/pettalk/likeCount",
				type : "POST",
				data : {
					boardNo : "${board.boardNo}"
				},
				success : function(count) {
					$(".likeCount").text("추천수 "+count);
				},
			})
		};

		$(document).ready(function() {
			var likeYn = '${likeYn}'
			
			if(likeYn=='Y'){
				$("#likeBtn").add('on');
			}else{
				$("#likeBtn").remove('on');
			}
			likeCount();



			$("#boardNoModal").val($("#boardNo").val());


	        // Bind normal buttons
	        Ladda.bind( '.ladda-button',{ timeout: 2000 });

	        // Bind progress buttons and simulate loading progress
	        Ladda.bind( '.progress-demo .ladda-button',{
	            callback: function( instance ){
	                var progress = 0;
	                var interval = setInterval( function(){
	                    progress = Math.min( progress + Math.random() * 0.1, 1 );
	                    instance.setProgress( progress );

	                    if( progress === 1 ){
	                        instance.stop();
	                        clearInterval( interval );
	                    }
	                }, 200 );
	            }
	        });


	        var l = $( '.ladda-button' ).ladda();

	        l.click(function(){
	        	var statusBtn = $(this);
	            // Start loading
	            l.ladda( 'start' );

	            // Timeout example
	            // Do something in backend and then stop ladda
	            setTimeout(function(){
	                l.ladda('stop');
	                if(statusBtn.hasClass('btn-outline-info')) {
						statusBtn.removeClass('btn-outline-info').addClass('btn-info');
					}else {
						statusBtn.removeClass('btn-info').addClass('btn-outline-info');
					}
	                
	            },300)


	        });
			

		});


	</script>
</body>
</html>
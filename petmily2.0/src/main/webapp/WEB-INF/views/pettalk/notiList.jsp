<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String code = request.getParameter("selectSorting");
	request.setAttribute("selectCd", code);
%>



<style type="text/css">
.btn_write_area {
	position: fixed;
	right: 50%;
	bottom: 100px;
	width: 74px;
	height: 74px;
	margin-right: -456px;
	z-index: 20;
	box-shadow: 1px 1px 2px 0 rgba(0, 0, 0, 0.12);
	background-color: #ff5a5c;
	-webkit-border-radius: 100%;
	-moz-border-radius: 100%;
	border-radius: 100%;
}

.best>td {
	background-color: #fef9f7;
	box-shadow: 0 0.5px 0 0 rgba(255, 90, 92, 0.3);
}

body, input, textarea, select, button, table {
	font-family: 'Noto Sans KR', sans-serif, Helvetica;
	margin-bottom: 5px;
	font-size: 15px;
	color: #4e5263;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.bestIcon { -
	-swiper-theme-color: #007aff; -
	-swiper-navigation-size: 44px;
	list-style: none;
	display: inline-block;
	height: 17px;
	margin-right: -1px;
	padding: 0.5px 4px 0;
	border: 1px solid #ff5a5c;
	line-height: 15px;
	font-family: Roboto;
	font-size: 12px;
	font-weight: bold;
	color: #ff5a5c;
	box-sizing: border-box;
	vertical-align: 1px;
}
</style>
<jsp:include page="/WEB-INF/views/includes/header.jsp" flush="false" />

<div id="content" class="container">
	<div class="row">
		<div id="content-body"
			class="col-12 wrapper wrapper-content animated fadeInRight">
			<div class="i-box border m-lg ">
				<div class="ibox-title" style="padding:15px 40px 8px 15px">
					<h1  style="display: inline">알림 목록</h1>
					<span class="float-right m-l m-t m-b m-r"> <a class="m-r" id="N"
						onclick="notiadmin('N')">새로운 알림</a> <a id="Y"
						onclick="notiadmin('Y')">읽은알림</a>
					</span>
				</div>
				<div class="ibox-content">
					<table class="table border-bottom">
						<thead>
							<tr>
								<th scope="col">알람번호</th>
								<th scope="col">보낸사람</th>
								<th scope="col">메시지</th>
								<th scope="col">받는사람</th>
								<th scope="col">발생일자</th>
								<th scope="col">읽음처리</th>
							</tr>
						</thead>
						<tbody class="notiList">
						</tbody>
					</table>
					<div style="text-align: right;">
						<button id="removeAll" class="btn btn-outline-secondary">모두읽음</button>
					</div>

				</div>

			</div>

		</div>
	</div>
</div>
<footer> </footer>
<!-- Js Plugins -->


<script type="text/javascript">
	$(document).ready(function() {
		notiadmin()
	});

	$(document).on("click", "#removeAll", function() {
		$.ajax({
			url : "/PETMILYPROJECT/comunity/NotiDelete.do",
			type : "POST",
			dataType : "json",
			success : function() {
				location.reload()
			},
			complete : function() {
				location.reload()
			}
		})

	});

	$(document).on("click", "#remove", function() {
		var seq = $(this).parent().parent().parent().find('#seq').text();
		$.ajax({
			url : "/noti/NotiDelete",
			type : "POST",
			data : {
				"alertNo" : seq
			},
			dataType : "json",
			success : function() {
				location.reload()
			},
			complete : function() {
				location.reload()
			}
		})

	});

	function notiadmin(deleteYn) {
		var parameterTmp = deleteYn;

		if (!parameterTmp) {
			parameterTmp = 'N';
		}

		$
				.ajax({
					url : "/noti/notiList",
					type : "POST",
					data : {
						"deleteYn" : parameterTmp
					},
					dataType : "json",
					success : function(data) {
						$('.notiList').children().remove();

						if (parameterTmp == 'Y') {
							$('#Y').removeClass("text-muted small").css("font-weight","bold")
							$('#N').addClass("text-muted small").css("font-weight","normal")
							$('#removeAll').hide();
						} else {

							$('#N').removeClass("text-muted small").css("font-weight","bold")
							$('#Y').addClass("text-muted small").css("font-weight","normal")
							$('#removeAll').show();
						}

						for (var i = 0; i < data.length; i++) {
							if (data[i].alertCode == 2001) {
								data[i].msg = data[i].boardNo
										+ "번 게시물이 '좋아요'를 받았습니다."
							} else if (data[i].alertCode == 2003) {
								data[i].msg = data[i].boardNo
										+ "번 게시물에 '댓글'이 달렸습니다."
							}
						}
						for (var i = 0; i < data.length; i++) {
							var deleteIcon="";
							if(parameterTmp=='N'){
								deleteIcon = "<span><svg id='remove' class='bi bi-x-square-fill' width='2em' height='2em' viewBox='0 0 16 16' fill='#ff5a5c' xmlns='http://www.w3.org/2000/svg'><path fill-rule='evenodd' d='M2 0a2 2 0 00-2 2v12a2 2 0 002 2h12a2 2 0 002-2V2a2 2 0 00-2-2H2zm9.854 4.854a.5.5 0 00-.708-.708L8 7.293 4.854 4.146a.5.5 0 10-.708.708L7.293 8l-3.147 3.146a.5.5 0 00.708.708L8 8.707l3.146 3.147a.5.5 0 00.708-.708L8.707 8l3.147-3.146z' clip-rule='evenodd'/></svg></span>";
							}else{
								 deleteIcon = "이미읽음"
							}
							$('.notiList').append(
											'<tr><td id="seq">'
													+ data[i].alertNo
													+ '</td><td>'
													+ data[i].memToId
													+ '</td><td>'
													+ data[i].msg
													+ '</td><td>'
													+ data[i].memId
													+ '</td><td>'
													+ data[i].alertCreateDt
													+ '</td>'+"<td>"+deleteIcon+"</td></tr>")
						}
						var len = data.length;

					}
				})
	};
</script>
<jsp:include page="/WEB-INF/views/includes/footer.jsp" flush="false" />

</html>
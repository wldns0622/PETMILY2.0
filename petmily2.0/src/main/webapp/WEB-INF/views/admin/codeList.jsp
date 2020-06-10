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
<div id="content" class="container">
	<div class="row">
		<jsp:include page="/WEB-INF/views/includes/adminnav.jsp" flush="false" />
		<div id="content-body"
			class="col-9 wrapper wrapper-content animated fadeInRight">

			<div class="ibox">
				<div class="ibox-title">
					<h2>공통 코드 관리</h2>
				</div>

				<div class="ibox-content ">
					<table class="table table-striped text-center">
						<thead>
							<tr>
								<th>상위코드</th>
								<th>상위코드명</th>
								<th>하위코드 건수</th>
								<th>코드영문명</th>
								<th>등록자ID</th>
								<th>등록일시</th>
							</tr>
						</thead>
						<tbody>
							<%-- <td><a href="#none" onclick="workContextDetail('${item.srSeq }','${item.srNo }','${item.workTypeCd }')">${fn:substring(item.workContent,0,30)} ...</a></td> --%>
							<c:forEach var="item" items="${codeList }" varStatus="i">
								<tr>
									<td>${item.code }</td>
									<td><a href="#none" onclick="codeDetail('${item.code }')">${item.codeNm }</a></td>
									<td>${item.childCodeCount }</td>
									<td>${item.codeEng }</td>
									<td>${item.registId }</td>
									<td>${item.registDatetime }</td>
								</tr>
							</c:forEach>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="6" class="footable-visible"></td>
							</tr>
						</tfoot>
					</table>
					<div class="row float-right">
						<a href="insertForm.do?${codeSearchVO.param }"
							class="btn btn-primary btn-sm">상위코드 추가</a>
					</div>
				</div>
			</div>

		</div>

	</div>
</div>
<!--  모달 시작   -->
<form id="codeUpdate" method="post" action="/admin/codeUpdate">
	<div class="modal inmodal fade" id="detailModal" tabindex="-1"
		role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title">코드 상세보기 & 추가</h4>
				</div>
				<div class="modal-body">
					<div class="ibox">
						<div class="ibox-content">
							<table class="table table-striped text-center">
								<thead>
									<tr>
										<th>코드</th>
										<th>코드명</th>
										<th>코드영문명</th>
										<th>등록자ID</th>
										<th>등록일시</th>
									</tr>
								</thead>

								<div class="form-group">
								<tbody id="codeTableRow">
								</tbody>
								<input type="hidden" name="codeType" value="">
								</div>
								<tfoot>
									<tr>
										<td colspan="6" class="footable-visible">
											<button type="button" onclick='addCode()'
												class='btn btn-w-m btn-success'>
												<i style='color: white;' class='fa fa-plus-square '></i>
												하위코드 추가
											</button>
										</td>
									</tr>
								</tfoot>
							</table>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-lg"
						data-dismiss="modal">닫기</button>
					<button type="submit" class="btn btn-primary">변경사항 저장</button>

				</div>
			</div>
		</div>
	</div>
</form>
<script type="text/javascript">
	let
	lastCode = "";
	let codeDtailType ="";
	function codeDetail(codeType) {
		codeDtailType = codeType;
		$.ajax({
			url : "/admin/codeDetailList",
			type : "POST",
			dataType : "json",
			data : {
				"codeType" : codeType
			},
			success : function(data) {
				$('#codeTableRow').children().remove();
				$("#detailModal").modal("show");

				var row = "";

				for (var i = 0; i < data.length; i++) {
					row += "<tr>\n";
					row += "<td>" + data[i].code + "</td>";
					row += "<td>" + data[i].codeNm + "</td>";
					row += "<td>" + data[i].codeEng + "</td>";
					row += "<td>" + data[i].registId + "</td>";
					row += "<td>" + data[i].registDatetime + "</td>";
					row += "</tr>\n";

					if (i == data.length - 1) {
						lastCode = data[i].code
					}
				}
				$('#codeTableRow').append(row);
			}
		})
	}

	function addCode() {
		var add = "";
		add += "<tr>\n";
		add += "<td><input class='form-control' readonly='readonly' value='"
				+ (parseInt(lastCode) + 1) + "' name='code'></td>";
		add += "<td><input placeholder='코드명' class='form-control' name='codeNm'></td>";
		add += "<td><input placeholder='코드영어명' class='form-control' name='codeEng'></td>";
		add += "<td><input class='form-control'  readonly='readonly' name='registId' value='${member.id}'></td>";
		add += "<td><input placeholder='' class='form-control' name='registDatetime' value='2020-06-09 10:28:54'></td>";
		add += "<td><input type='hidden' class='form-control' name='codeType' value='"+codeDtailType+"'></td>";
		add += "</tr>\n";

		$('#codeTableRow').append(add);
		lastCode = (parseInt(lastCode) + 1);
	}
    $(document).ready(function(){
    	var result = '<c:out value="${result}"/>';
    	
    	if(result == 'OK')
    	alert("정상 처리되었습니다.");
    })
    
</script>
<jsp:include page="/WEB-INF/views/includes/footer.jsp" flush="false" />

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/includes/header.jsp" flush="false" />
<div id="content" class="container-fluid">
	<div class="row">
		<jsp:include page="nav.jsp" flush="false"/>

		<div id="content-body" class="col-9 wrapper wrapper-content animated fadeInRight ">
				
			<div class="row">
				<div class="container-fluid i-box border-bottom">
					<div class="ibox-title">
						<h2>사용자 관리</h2>
					</div>
					<div id="select" class="col-lg-12 col-md-12 m-b-xl border-top">
				<label class="col-form-label col m-t" for="select">사용자 분류</label>
					<div class="select-option">
						<form id="sortingForm" name="area" class="col-lg-4" action="/admin/userManager" method="get">
							<select id="selectCd" class="custom-select" name="codeSelect" onchange="changeSubmit()">
								<option value="" selected="" disabled="" hidden="">관리자</option>
								
									<option value="3001">일반</option>
								
									<option value="3002">의사</option>
								
									<option value="3003">관리자</option>
								
									<option value="3004">펫</option>
								
							</select>
							<input name="keyword">
						</form>
					</div>
				</div>
					<div class="col-lg-12">
						<div>
							<form>
								<table class="table table-striped table-hover border-bottom border-top">
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
										
											<tr>
												<td>정지운</td>
												<td>ju</td>
												<td>jiun</td>
												<td>ju@gmail.com</td>
												<td><select class="form-control m-n" name="codeSelect">
														<option value="" selected="" disabled="" hidden="">관리자</option>
														
															<option value="3001">일반</option>
														
															<option value="3002">의사</option>
														
															<option value="3003">관리자</option>
														
															<option value="3004">펫</option>
														
												</select></td>
											</tr>
											<input id="code" type="hidden" value="3003">
										
											<tr>
												<td>최서영</td>
												<td>sy</td>
												<td>seoyeong</td>
												<td>sy@gmail.com</td>
												<td><select class="form-control m-n" name="codeSelect">
														<option value="" selected="" disabled="" hidden="">관리자</option>
														
															<option value="3001">일반</option>
														
															<option value="3002">의사</option>
														
															<option value="3003">관리자</option>
														
															<option value="3004">펫</option>
														
												</select></td>
											</tr>
											<input id="code" type="hidden" value="3003">
										
											<tr>
												<td>은행운</td>
												<td>hu</td>
												<td>lucky</td>
												<td>hu@gmail.com</td>
												<td><select class="form-control m-n" name="codeSelect">
														<option value="" selected="" disabled="" hidden="">관리자</option>
														
															<option value="3001">일반</option>
														
															<option value="3002">의사</option>
														
															<option value="3003">관리자</option>
														
															<option value="3004">펫</option>
														
												</select></td>
											</tr>
											<input id="code" type="hidden" value="3003">
										
											<tr>
												<td>서영</td>
												<td>c</td>
												<td>밍</td>
												<td>c@c.com</td>
												<td><select class="form-control m-n" name="codeSelect">
														<option value="" selected="" disabled="" hidden="">관리자</option>
														
															<option value="3001">일반</option>
														
															<option value="3002">의사</option>
														
															<option value="3003">관리자</option>
														
															<option value="3004">펫</option>
														
												</select></td>
											</tr>
											<input id="code" type="hidden" value="3003">
										
									</tbody>
								</table>
								<div class="row">
									<div class="col text-right m-r-lg ">
										<input class="btn btn-w-m btn-warning" type="button" value="정보 변경" onclick="updateSubmit()" formmethod="post" formaction="#">
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
<jsp:include page="/WEB-INF/views/includes/footer.jsp" flush="false" />
</html>
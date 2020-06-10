<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<!-- meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/ -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>PETMILY Member SiugUp</title>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<script src="http://code.jquery.com/jquery.js"></script> <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요) -->
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script> <!-- 모든 합쳐진 플러그인을 포함하거나 (아래) 필요한 각각의 파일들 포함하기 -->
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script> <!-- Respond.js 으로 IE8 에서 반응형 기능을 활성화 (https://github.com/scottjehl/Respond) -->
	<link href="/resources/css/hospitalKeywordSearch.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="container">
		<div class="modal fade" id="defaultModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
						<h4 class="modal-title">알림</h4>
					</div>
					<div class="modal-body">
						<p class="modal-contents"></p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					</div>
				</div>
			</div>
		</div>
		<hr />
		
		<form class="form-horizontal" role="form" method="post" action="/member/hospitalSignUp">
			<div class="form-group">
				<label for="provision" class="col-lg-2 control-label">회원가입약관</label>
				<div class="col-lg-10" id="provision">
					<textarea class="form-control" rows="8" style="resize: none">약관동의
						<jsp:include page="memberTerms.jsp" flush="false"></jsp:include>
                    </textarea>
					<div class="radio">
						<label> <input type="radio" id="provisionYn" name="provisionYn" value="Y" autofocus="autofocus" checked>
							동의합니다.
						</label>
					</div>
					<div class="radio">
						<label> <input type="radio" id="provisionYn" name="provisionYn" value="N"> 동의하지 않습니다.</label>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="memberInfo" class="col-lg-2 control-label">개인정보취급방침</label>
				<div class="col-lg-10" id="memberInfo">
					<textarea class="form-control" rows="8" style="resize: none">개인정보의 항목 및 수집방법
						<jsp:include page="personalInformationAgreement.jsp" flush="false"></jsp:include>
                    </textarea>
					<div class="radio">
						<label><input type="radio" id="memberInfoYn" name="memberInfoYn" value="Y" checked> 동의합니다. </label>
					</div>
					<div class="radio">
						<label> <input type="radio" id="memberInfoYn"
							name="memberInfoYn" value="N"> 동의하지 않습니다.
						</label>
					</div>
				</div>
			</div>
			
			<!-- 회원가입 -->
			<div class="form-group" id="divId">
				<label for="inputId" class="col-lg-2 control-label">아이디</label>
				<div class="col-lg-10">
					<input type="text" class="form-control onlyAlphabetAndNumber" name="hsptId" id="id" data-rule-required="true" placeholder="30자이내의 알파벳, 언더스코어(_), 숫자만 입력 가능합니다." maxlength="30">
				</div>
			</div>
			<div class="form-group" id="divPassword">
				<label for="inputPassword" class="col-lg-2 control-label">패스워드</label>
				<div class="col-lg-10">
					<input type="password" class="form-control" name="hsptPass" id="password" name="excludeHangul" data-rule-required="true" placeholder="패스워드" maxlength="30">
				</div>
			</div>
			<div class="form-group" id="divPasswordCheck">
				<label for="inputPasswordCheck" class="col-lg-2 control-label">패스워드
					확인</label>
				<div class="col-lg-10">
					<input type="password" class="form-control" id="passwordCheck" data-rule-required="true" placeholder="패스워드 확인" maxlength="30">
				</div>
			</div>
			<div class="hospital-search-dataArea">
				<div class="form-group" id="divName">
					<div class="col-lg-10">
						병원명 검색
						<div class="map_wrap">
							<div id="map" class="col-lg-12" style="width: 100%; height: 100%; position: relative; overflow: hidden;">

							</div>
							<div id="menu_wrap" class="bg_white">
								<div class="option">
									<div>
										키워드 : <input type="text" id="keyword" size="15">
										<button id="keywordSearch">검색하기</button>
									</div>
								</div>
								<hr>
								<ul id="placesList"></ul>
								<div id="pagination"></div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="form-group" id="divName">
					<label for="inputName" class="col-lg-2 control-label">병원이름</label>
					<div class="col-lg-10">
						<input type="text"  class="form-control onlyHangul" name=hsptName id="name" data-rule-required="true" maxlength="15" readonly="readonly">
					</div>
				</div>

				<div class="form-group" id="divAddress">
					<label for="inputAddress" class="col-lg-2 control-label">주소</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" name="hsptAddr" id="address" data-rule-required="true" maxlength="15" readonly="readonly">
					</div>
				</div>

				<div class="form-group" id="divPhoneNumber">
					<label for="inputPhoneNumber" class="col-lg-2 control-label">전화번호</label>
					<div class="col-lg-10">
						<input type="tel" class="form-control onlyNumber" name="hsptTel" id="phoneNumber" data-rule-required="true" maxlength="11" readonly="readonly">
					</div>
				</div>
			</div>
			<div class="form-group" id="divLicenseNum">
				<label for="inputLicenseNum" class="col-lg-2 control-label">병원먼허번호</label>
				<div class="col-lg-10">
					<input type="tel" class="form-control onlyNumber" name="hsptLicenseNum" id="hsptLicense-num" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11">
				</div>
			</div>
			<br>
			<div class="form-group" id="divHospitalOper">
				<label for="inputHospitalOper" class="col-lg-2 control-label">병원 운영시간</label>
				<div class="col-lg-10">
				<table>
					<thead>
						<tr>
							<th></th>
							<th>일요일</th>
							<th>월요일</th>
							<th>화요일</th>
							<th>수요일</th>
							<th>목요일</th>
							<th>금요일</th>
							<th>토요일</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								진료시작 시간
							</td>
							<td>
								<select name="sunOpenOper">
									<jsp:include page="includeOperation.jsp" flush="false"></jsp:include>
								</select>
							</td>
							<td>
								<select name="monOpenOper">
									<jsp:include page="includeOperation.jsp" flush="false"></jsp:include>
								</select>
							</td>
							<td>
								<select name="tueOpenOper">
									<jsp:include page="includeOperation.jsp" flush="false"></jsp:include>
								</select>
							</td>
							<td>
								<select name="wedOpenOper">
									<jsp:include page="includeOperation.jsp" flush="false"></jsp:include>
								</select>
							</td>
							<td>
								<select name="thuOpenOper">
									<jsp:include page="includeOperation.jsp" flush="false"></jsp:include>
								</select>
							</td>
							<td>
								<select name="friOpenOper">
									<jsp:include page="includeOperation.jsp" flush="false"></jsp:include>
								</select>
							</td>
							<td>
								<select name="satOpenOper">
									<jsp:include page="includeOperation.jsp" flush="false"></jsp:include>
								</select>
							</td>
						</tr>
						<tr>
							<td>
								진료마감 시간
							</td>
							<td>
								<select name="sunCloseOper">
									<jsp:include page="includeOperation.jsp" flush="false"></jsp:include>
								</select>
							</td>
							<td>
								<select name="monCloseOper">
									<jsp:include page="includeOperation.jsp" flush="false"></jsp:include>
								</select>
							</td>
							<td>
								<select name="tueCloseOper">
									<jsp:include page="includeOperation.jsp" flush="false"></jsp:include>
								</select>
							</td>
							<td>
								<select name="wedCloseOper">
									<jsp:include page="includeOperation.jsp" flush="false"></jsp:include>
								</select>
							</td>
							<td>
								<select name="thuCloseOper">
									<jsp:include page="includeOperation.jsp" flush="false"></jsp:include>
								</select>
							</td>
							<td>
								<select name="friCloseOper">
									<jsp:include page="includeOperation.jsp" flush="false"></jsp:include>
								</select>
							</td>
							<td>
								<select name="satCloseOper">
									<jsp:include page="includeOperation.jsp" flush="false"></jsp:include>
								</select>
							</td>
						</tr>
					</tbody>
				</table>
				<br>
				</div>
			</div>

			<div class="form-group">
				<div class="col-lg-offset-2 col-lg-10">
					<button type="submit" class="btn btn-primary">Sign in</button>
				</div>
			</div>
		</form>


		<script>
            $(function(){
                //모달을 전역변수로 선언
                var modalContents = $(".modal-contents");
                var modal = $("#defaultModal");
                
                $('.onlyAlphabetAndNumber').keyup(function(event){
                    if (!(event.keyCode >=37 && event.keyCode<=40)) {
                        var inputVal = $(this).val();
                        $(this).val($(this).val().replace(/[^_a-z0-9]/gi,'')); //_(underscore), 영어, 숫자만 가능
                    }
                });
                
                $(".onlyHangul").keyup(function(event){
                    if (!(event.keyCode >=37 && event.keyCode<=40)) {
                        var inputVal = $(this).val();
                        $(this).val(inputVal.replace(/[a-z0-9]/gi,''));
                    }
                });
            
                $(".onlyNumber").keyup(function(event){
                    if (!(event.keyCode >=37 && event.keyCode<=40)) {
                        var inputVal = $(this).val();
                        $(this).val(inputVal.replace(/[^0-9]/gi,''));
                    }
                });
                
                //검사하여 상태를 class에 적용
                $('#id').keyup(function(event){
                    
                    var divId = $('#divId');
                    
                    if($('#id').val()==""){
                        divId.removeClass("has-success");
                        divId.addClass("has-error");
                    }else{
                        divId.removeClass("has-error");
                        divId.addClass("has-success");
                    }
                });
                
 				$('#name').keyup(function(event){
                    
                    var divName = $('#divName');
                    
                    if($('#name').val()==""){
                    	divName.removeClass("has-success");
                    	divName.addClass("has-error");
                    }else{
                    	divName.removeClass("has-error");
                    	divName.addClass("has-success");
                    }
                });
 
                $('#password').keyup(function(event){
                    
                    var divPassword = $('#divPassword');
                    
                    if($('#password').val()==""){
                        divPassword.removeClass("has-success");
                        divPassword.addClass("has-error");
                    }else{
                        divPassword.removeClass("has-error");
                        divPassword.addClass("has-success");
                    }
                });
                
                $('#passwordCheck').keyup(function(event){
                    
                    var passwordCheck = $('#passwordCheck').val();
                    var password = $('#password').val();
                    var divPasswordCheck = $('#divPasswordCheck');
                    
                    if((passwordCheck=="") || (password!=passwordCheck)){
                        divPasswordCheck.removeClass("has-success");
                        divPasswordCheck.addClass("has-error");
                    }else{
                        divPasswordCheck.removeClass("has-error");
                        divPasswordCheck.addClass("has-success");
                    }
                });
                
				$('#phoneNumber').keyup(function(event){
                    
                    var divPhoneNumber = $('#divPhoneNumber');
                    
                    if($.trim($('#phoneNumber').val())==""){
                    	divPhoneNumber.removeClass("has-success");
                    	divPhoneNumber.addClass("has-error");
                    }else{
                    	divPhoneNumber.removeClass("has-error");
                    	divPhoneNumber.addClass("has-success");
                    }
                });
                
				$('#address').keyup(function(event){
                    
                    var divAddress = $('#divAddress');
                    
                    if($.trim($('#address').val())==""){
                    	divAddress.removeClass("has-success");
                    	divAddress.addClass("has-error");
                    }else{
                    	divAddress.removeClass("has-error");
                    	divAddress.addClass("has-success");
                    }
                });
				
				$('#hsptLicense-num').keyup(function(event){
                    
                    var divLicenseNum = $('#hsptLicense-num');
                    
                    if($.trim($('#hsptLicense-num').val())==""){
                    	divLicenseNum.removeClass("has-success");
                    	divLicenseNum.addClass("has-error");
                    }else{
                    	divLicenseNum.removeClass("has-error");
                    	divLicenseNum.addClass("has-success");
                    }
                });
                
                
                //------- validation 검사
                $( "form" ).submit(function( event ) {
                    
                    var provision = $('#provision');
                    var memberInfo = $('#memberInfo');
                    var divId = $('#divId');
                    var divPassword = $('#divPassword');
                    var divPasswordCheck = $('#divPasswordCheck');
                    var divName = $('#divName');
                    var divPhoneNumber = $('#divPhoneNumber');
                    var divAddress = $('#divAddress');
                    var divLicenseNum = $('#divLicenseNum');
                    
                    //회원가입약관
                    if($('#provisionYn:checked').val()=="N"){
                        modalContents.text("회원가입약관에 동의하여 주시기 바랍니다."); //모달 메시지 입력
                        modal.modal('show'); //모달 띄우기
                        
                        provision.removeClass("has-success");
                        provision.addClass("has-error");
                        $('#provisionYn').focus();
                        return false;
                    }else{
                        provision.removeClass("has-error");
                        provision.addClass("has-success");
                    }
                    
                    //개인정보취급방침
                    if($('#memberInfoYn:checked').val()=="N"){
                        modalContents.text("개인정보취급방침에 동의하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        memberInfo.removeClass("has-success");
                        memberInfo.addClass("has-error");
                        $('#memberInfoYn').focus();
                        return false;
                    }else{
                        memberInfo.removeClass("has-error");
                        memberInfo.addClass("has-success");
                    }
                    
                    //아이디 검사
                    if($('#id').val()==""){
                        modalContents.text("아이디를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divId.removeClass("has-success");
                        divId.addClass("has-error");
                        $('#id').focus();
                        return false;
                    }else{
                        divId.removeClass("has-error");
                        divId.addClass("has-success");
                    }
                    
                    //패스워드 검사
                    if($('#password').val()==""){
                        modalContents.text("패스워드를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divPassword.removeClass("has-success");
                        divPassword.addClass("has-error");
                        $('#password').focus();
                        return false;
                    }else{
                        divPassword.removeClass("has-error");
                        divPassword.addClass("has-success");
                    }
                   
                    
                    //패스워드 확인
                    if($('#passwordCheck').val()==""){
                        modalContents.text("패스워드 확인을 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divPasswordCheck.removeClass("has-success");
                        divPasswordCheck.addClass("has-error");
                        $('#passwordCheck').focus();
                        return false;
                    }else{
                        divPasswordCheck.removeClass("has-error");
                        divPasswordCheck.addClass("has-success");
                    }
                    
                    //패스워드 비교
                    if($('#password').val()!=$('#passwordCheck').val() || $('#passwordCheck').val()==""){
                        modalContents.text("패스워드가 일치하지 않습니다.");
                        modal.modal('show');
                        
                        divPasswordCheck.removeClass("has-success");
                        divPasswordCheck.addClass("has-error");
                        $('#passwordCheck').focus();
                        return false;
                    }else{
                        divPasswordCheck.removeClass("has-error");
                        divPasswordCheck.addClass("has-success");
                    }
                    
                    //이름
                    if($('#name').val()==""){
                        modalContents.text("병원이름을 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divName.removeClass("has-success");
                        divName.addClass("has-error");
                        $('#name').focus();
                        return false;
                    }else{
                        divName.removeClass("has-error");
                        divName.addClass("has-success");
                    }
  
                    //주소
                    if($('#address').val()==""){
                        modalContents.text("주소를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divAddress.removeClass("has-success");
                        divAddress.addClass("has-error");
                        $('#address').focus();
                        return false;
                    }else{
                    	divAddress.removeClass("has-error");
                    	divAddress.addClass("has-success");
                    }
                  
                    //휴대폰 번호
                    if($('#phoneNumber').val()==""){
                        modalContents.text("전화번호를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divPhoneNumber.removeClass("has-success");
                        divPhoneNumber.addClass("has-error");
                        $('#phoneNumber').focus();
                        return false;
                    }else{
                        divPhoneNumber.removeClass("has-error");
                        divPhoneNumber.addClass("has-success");
                    }
                    
                    //의사면허번호
                    if($('#hsptLicense-num').val()==""){
                        modalContents.text("면허 번호를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divLicenseNum.removeClass("has-success");
                        divLicenseNum.addClass("has-error");
                        $('#hsptLicense-num').focus();
                        return false;
                    }else{
                    	divLicenseNum.removeClass("has-error");
                    	divLicenseNum.addClass("has-success");
                    }
                });
            });
            
        </script>
		<hr />

		<div>
			<p class="text-center">
				<small><strong>펫밀리 (주)</strong></small><br> <small>대표 :
					PETMILY ㆍ 주소 : 가산동 371-106 KR 서울특별시 금천구 가산디지털1로 181 W센터 3층 ㆍ 사업자등록번호 :
					123-12-12345 ㆍ 전화 : 02-123-1234</small><br> <small>Copyrightⓒ
					petmily.com All rights reserved.</small>
			</p>
		</div>
		<!--// 푸터 들어가는 부분 -->
	</div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3faf7a6914d9ce206655c6300e9c7478&libraries=services,clusterer,drawing"></script>
	<script type="text/javascript" src="/resources/js/hospitalKeywordSearch.js"></script>
</body>
</html>
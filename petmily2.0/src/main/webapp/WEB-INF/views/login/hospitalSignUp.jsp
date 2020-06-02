<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8">
        <!-- meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/ -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>PETMILY Hospital SingUp</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="http://code.jquery.com/jquery.js"></script><!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요) -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script><!-- 모든 합쳐진 플러그인을 포함하거나 (아래) 필요한 각각의 파일들 포함하기 -->
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><!-- Respond.js 으로 IE8 에서 반응형 기능을 활성화 (https://github.com/scottjehl/Respond) -->
    </head>
    <body>
        <div class="container"><!-- 좌우측의 공간 확보 -->
            <!-- 헤더 들어가는 부분 -->
            <!-- 모달창 -->
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
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
            <!--// 모달창 -->
            <hr/>
            
            <!-- 본문 들어가는 부분 -->
            <form class="form-horizontal" role="form" method="post" action="/login/hospitalSignUp">
                <div class="form-group">
                    <label for="provision" class="col-lg-2 control-label">회원가입약관</label>
                    <div class="col-lg-10" id="provision">
                        <textarea class="form-control" rows="8" style="resize:none">약관동의
							
							제24조(관할법원의 합의) 이 약관에 의한 대부거래 계약에 관하여 대부업자와 채무자 사이에 소송의 필요가 생긴 때에는 법이 정하는 관할법원과 아울러 대부업자의 거래영업점 소재지 지방법원을 관할법원으로 하기로 한다. 다만, 채무자의 책임있는 사유로 부실채권이 발생되어 그 채권의 관리를 위하여 대부업자가 본점, 지역본부 또는 다른 영업점으로 그 채권관리업무를 이관한 경우에는 법이 정하는 관할법원과 아울러 이관 받은 본점, 지역본부 또는 다른 영업점 소재지 지방법원을 관할법원으로 하기로 한다.

                        </textarea>
                        <div class="radio">
                            <label>
                                <input type="radio" id="provisionYn" name="provisionYn" value="Y" autofocus="autofocus" checked>
                                동의합니다.
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" id="provisionYn" name="provisionYn" value="N">
                                동의하지 않습니다.
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="memberInfo" class="col-lg-2 control-label">개인정보취급방침</label>
                    <div class="col-lg-10" id="memberInfo">
                        <textarea class="form-control" rows="8" style="resize:none">개인정보의 항목 및 수집방법
							* 각 항목의 구체적인 내용은 수술․시술․검사의 특성에 따라 개별적으로 기재할 수 있습니다.
							
							⑤ 주치의(집도의)의 변경 가능성과 사유에 대한 설명을 이 수술(시술, 검사, 마취, 의식하진정)의 시행 전에 의사로부터 들었음을 확인합니다.
                        </textarea>
                        <div class="radio">
                            <label>
                                <input type="radio" id="memberInfoYn" name="memberInfoYn" value="Y" checked> 동의합니다.
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" id="memberInfoYn" name="memberInfoYn" value="N"> 동의하지 않습니다.
                            </label>
                        </div>
                    </div>
                </div>
                <!-- 회원가입 -->
                <div class="form-group" id="divId">
                    <label for="inputId" class="col-lg-2 control-label">아이디</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control onlyAlphabetAndNumber" name="id" id="id" data-rule-required="true" placeholder="30자이내의 알파벳, 언더스코어(_), 숫자만 입력 가능합니다." maxlength="30">
                    </div>
                </div>
                <div class="form-group" id="divName">
                    <label for="inputName" class="col-lg-2 control-label">이름</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control onlyHangul" name="name" id="name" data-rule-required="true" placeholder="한글만 입력 가능합니다." maxlength="15">
                    </div>
                </div>
                <div class="form-group" id="divPassword">
                    <label for="inputPassword" class="col-lg-2 control-label">패스워드</label>
                    <div class="col-lg-10">
                        <input type="password" class="form-control" name="password" id="password" name="excludeHangul" data-rule-required="true" placeholder="패스워드" maxlength="30">
                    </div>
                </div>
                <div class="form-group" id="divPasswordCheck">
                    <label for="inputPasswordCheck" class="col-lg-2 control-label">패스워드 확인</label>
                    <div class="col-lg-10">
                        <input type="password" class="form-control" id="passwordCheck" data-rule-required="true" placeholder="패스워드 확인" maxlength="30">
                    </div>
                </div>
                <div class="form-group" id="divEmail">
                    <label for="inputEmail" class="col-lg-2 control-label">이메일</label>
                    <div class="col-lg-10">
                        <input type="email" class="form-control" name="email" id="email" data-rule-required="true" placeholder="이메일" maxlength="40">
                    </div>
                </div>
                <div class="form-group" id="divPhoneNumber">
                    <label for="inputPhoneNumber" class="col-lg-2 control-label">휴대폰 번호</label>
                    <div class="col-lg-10">
                        <input type="tel" class="form-control onlyNumber" name="phoneNo" id="phoneNumber" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11">
                    </div>
                </div>
                <div class="form-group" id="divBirth">
                    <label for="inputBirth" class="col-lg-2 control-label">생년월일</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" name="birth" id="birth" data-rule-required="true" placeholder="생년월일" maxlength="15">
                    </div>
                </div>
                <div class="form-group" id="divNickname">
                    <label for="inputNickname" class="col-lg-2 control-label">별명</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" name="nicknm" id="nickname" data-rule-required="true" placeholder="별명" maxlength="15">
                    </div>
                </div>
                <div class="form-group" id="divAddress">
                    <label for="inputAddress" class="col-lg-2 control-label">주소</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" name="address" id="address" data-rule-required="true" placeholder="주소" maxlength="15">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmailReceiveYn" class="col-lg-2 control-label">이메일 수신여부</label>
                    <div class="col-lg-10">
                        <label class="radio-inline">
                            <input type="radio" id="emailReceiveYn" name="emailCheck" value="Y" checked> 동의합니다. <!-- name="emailReceiveYn" -->
                        </label>
                        <label class="radio-inline">
                            <input type="radio" id="emailReceiveYn" name="emailCheck" value="N"> 동의하지 않습니다. <!-- name="emailReceiveYn" -->
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPhoneNumber" class="col-lg-2 control-label">SMS 수신여부</label>
                    <div class="col-lg-10">
                        <label class="radio-inline">
                            <input type="radio" id="smsReceiveYn" name="smsCheck" value="Y" checked> 동의합니다. <!-- name="smsReceiveYn" -->
                        </label>
                        <label class="radio-inline">
                            <input type="radio" id="smsReceiveYn" name="smsCheck" value="N"> 동의하지 않습니다. <!-- name="smsReceiveYn" -->
                        </label>
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
                
                $('#email').keyup(function(event){
                    
                	var divEmail = $('#divEmail');
                    
                    if($.trim($('#email').val())==""){
                    	divEmail.removeClass("has-success");
                    	divEmail.addClass("has-error");
                    }else{
                    	divEmail.removeClass("has-error");
                    	divEmail.addClass("has-success");
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
                
				$('#birth').keyup(function(event){
                    
                    var divBirth = $('#divBirth');
                    
                    if($.trim($('#birth').val())==""){
                    	divBirth.removeClass("has-success");
                    	divBirth.addClass("has-error");
                    }else{
                    	divBirth.removeClass("has-error");
                    	divBirth.addClass("has-success");
                    }
                });
                
                $('#nickname').keyup(function(event){
                    
                    var divNickname = $('#divNickname');
                    
                    if($.trim($('#nickname').val())==""){
                        divNickname.removeClass("has-success");
                        divNickname.addClass("has-error");
                    }else{
                        divNickname.removeClass("has-error");
                        divNickname.addClass("has-success");
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
                
				
                
                //------- validation 검사
                $( "form" ).submit(function( event ) {
                    
                    var provision = $('#provision');
                    var memberInfo = $('#memberInfo');
                    var divId = $('#divId');
                    var divPassword = $('#divPassword');
                    var divPasswordCheck = $('#divPasswordCheck');
                    var divName = $('#divName');
                    var divNickname = $('#divNickname');
                    var divEmail = $('#divEmail');
                    var divPhoneNumber = $('#divPhoneNumber');
                    var divAddress = $('#divAddress');
                    
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
                    
                    //이름
                    if($('#name').val()==""){
                        modalContents.text("이름을 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divName.removeClass("has-success");
                        divName.addClass("has-error");
                        $('#name').focus();
                        return false;
                    }else{
                        divName.removeClass("has-error");
                        divName.addClass("has-success");
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
                    
                    //이메일
                    if($('#email').val()==""){
                        modalContents.text("이메일을 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divEmail.removeClass("has-success");
                        divEmail.addClass("has-error");
                        $('#email').focus();
                        return false;
                    }else{
                        divEmail.removeClass("has-error");
                        divEmail.addClass("has-success");
                    }
                    
                    //휴대폰 번호
                    if($('#phoneNumber').val()==""){
                        modalContents.text("휴대폰 번호를 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divPhoneNumber.removeClass("has-success");
                        divPhoneNumber.addClass("has-error");
                        $('#phoneNumber').focus();
                        return false;
                    }else{
                        divPhoneNumber.removeClass("has-error");
                        divPhoneNumber.addClass("has-success");
                    }
                  
                    //생년월일
                    if($('#birth').val()==""){
                        modalContents.text("생년월일을 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divBirth.removeClass("has-success");
                        divBirth.addClass("has-error");
                        $('#birth').focus();
                        return false;
                    }else{
                    	divBirth.removeClass("has-error");
                    	divBirth.addClass("has-success");
                    }
                  
                    //별명
                    if($('#nickname').val()==""){
                        modalContents.text("별명을 입력하여 주시기 바랍니다.");
                        modal.modal('show');
                        
                        divNickname.removeClass("has-success");
                        divNickname.addClass("has-error");
                        $('#nickname').focus();
                        return false;
                    }else{
                        divNickname.removeClass("has-error");
                        divNickname.addClass("has-success");
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
                    
                    
                    
                
                });
                
            });
            
        </script>
                <!--// 본문 들어가는 부분 -->
            <hr/>
            <!-- 푸터 들어가는 부분 -->
            
            <div>
                <p class="text-center">
                    <small><strong>업체명</strong></small><br>
                    <small>대표 : 정지운 ㆍ 주소 : 가산동 371-106 KR 서울특별시 금천구 가산디지털1로 181 W센터 3층 ㆍ 사업자등록번호 : 123-12-12345 ㆍ 전화 : 02-123-1234</small><br>
                    <small>Copyrightⓒ petmily.com All rights reserved.</small>
                </p>
            </div>
            <!--// 푸터 들어가는 부분 -->
        </div>
    </body>
</html>
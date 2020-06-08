<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="/WEB-INF/views/includes/header.jsp" flush="false" />
    
    <link rel=" shortcut icon" href="image/favicon.ico">
    <link rel="stylesheet" href="/resources/vendor/css/fullcalendar.min.css" />
    <link rel="stylesheet" href="/resources/vendor/css/bootstrap.min.css"/>
    <link rel="stylesheet" href='/resources/vendor/css/select2.min.css' />
    <link rel="stylesheet" href='/resources/vendor/css/bootstrap-datetimepicker.min.css' />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
    <link rel="stylesheet" href="/resources/css/reservation.css"/>




    <div class="container">

        <!-- 일자 클릭시 메뉴오픈 -->
        <div id="contextMenu" class="dropdown clearfix">
            <ul class="dropdown-menu dropNewEvent" role="menu" aria-labelledby="dropdownMenu"
                style="display:block;position:static;margin-bottom:5px;">
                <li><a tabindex="-1" href="#">일반 진료</a></li>
                <li><a tabindex="-1" href="#">건강 검진</a></li>
                <li><a tabindex="-1" href="#">예방 접종</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="#" data-role="close">Close</a></li>
            </ul>
        </div>

        <div id="wrapper">
            <div id="loading"></div>
            <div id="calendar"></div>
        </div>


        <!-- 일정 추가 MODAL -->
        <div class="modal fade" tabindex="-1" role="dialog" id="eventModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title"></h4>
                    </div>
                    <div class="modal-body">

						<div class="row">
							<div class="col-xs-12">
								<label class="col-xs-4" for="edit-allDay">병원명</label>
								<label class="" name=""><b>병원</b></label>
							</div>
						</div>
						
						<div class="row">
							<div class="col-xs-12">
								<label class="col-xs-4" for="edit-reservation-name">예약자</label>
								<label class="" name=""><b>이름</b></label>
							</div>
						</div>
						
						<div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-type">반려견</label>
                                <select class="inputModal" type="text" name="edit-type" id="edit-type">
                                    <!-- 반려견이 1마리 이상 존재한다면 반복문으로 option 만들어 주기 -->
                                    <!-- 반려견이 없다면 '등록된 반려견 정보가 존재하지 않습니다' 띄어주기 -->
                                    <option value="카테고리1">뽀삐</option>
                                    <option value="카테고리2">스켈레톤</option>
                                    <option value="카테고리3">고양이</option>
                                </select>
                            </div>
                        </div>
						
						<!-- 
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-allDay">하루종일</label>
                                <input class='allDayNewEvent' id="edit-allDay" type="checkbox"></label>
                            </div>
                        </div>
						 -->
						
						<div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-start">예약 날짜</label>
                                <input class="inputModal" type="text" name="" id="edit-start" />
                            </div>
                        </div>
                        
                        <!-- 
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-end">끝</label>
                                <input class="inputModal" type="text" name="edit-end" id="edit-end" />
                            </div>
                        </div> 
						 -->
						 
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-desc">진료 종류</label>
                                <input type="radio" name="chk_info" value="0" checked="checked">일반진료
								<input type="radio" name="chk_info" value="1">예방접종
								<input type="radio" name="chk_info" value="2">건강검진
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer modalBtnContainer-addEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        <button type="button" class="btn btn-primary" id="save-event">저장</button>
                    </div>
                    <div class="modal-footer modalBtnContainer-modifyEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        <button type="button" class="btn btn-danger" id="deleteEvent">삭제</button>
                        <button type="button" class="btn btn-primary" id="updateEvent">저장</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
    </div>
	    
	    </div>
	</section>
	<section id="contact" class="gray-section contact">
	    <div class="container">
	        <div class="row m-b-lg">
	            <div class="col-lg-12 text-center">
	                <div class="navy-line"></div>
	                <h1>Contact Us</h1>
	                <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod.</p>
	            </div>
	        </div>
	        <div class="row m-b-lg justify-content-center">
	            <div class="col-lg-3 ">
	                <address>
	                    <strong><span class="navy">Company name, Inc.</span></strong><br/>
	                    795 Folsom Ave, Suite 600<br/>
	                    San Francisco, CA 94107<br/>
	                    <abbr title="Phone">P:</abbr> (123) 456-7890
	                </address>
	            </div>
	            <div class="col-lg-4">
	                <p class="text-color">
	                    Consectetur adipisicing elit. Aut eaque, totam corporis laboriosam veritatis quis ad perspiciatis, totam corporis laboriosam veritatis, consectetur adipisicing elit quos non quis ad perspiciatis, totam corporis ea,
	                </p>
	            </div>
	        </div>
	        <div class="row">
	            <div class="col-lg-12 text-center">
	                <a href="mailto:test@email.com" class="btn btn-primary">Send us mail</a>
	                <p class="m-t-sm">
	                    Or follow us on social platform
	                </p>
	                <ul class="list-inline social-icon">
	                    <li class="list-inline-item"><a href="#"><i class="fa fa-twitter"></i></a>
	                    </li>
	                    <li class="list-inline-item"><a href="#"><i class="fa fa-facebook"></i></a>
	                    </li>
	                    <li class="list-inline-item"><a href="#"><i class="fa fa-linkedin"></i></a>
	                    </li>
	                </ul>
	            </div>
	        </div>
	        <div class="row">
	            <div class="col-lg-12 text-center m-t-lg m-b-lg">
	                <p><strong>&copy; 2015 Company Name</strong><br/> consectetur adipisicing elit. Aut eaque, laboriosam veritatis, quos non quis ad perspiciatis, totam corporis ea, alias ut unde.</p>
	            </div>
	        </div>
	    </div>
	</section>
	<script src="/resources/vendor/js/reservation/moment.min.js"></script>
    <script src="/resources/vendor/js/reservation/jquery.min.js"></script>
    <script src="/resources/vendor/js/reservation/bootstrap.min.js"></script>
    <script src="/resources/vendor/js/reservation/bootstrap-datetimepicker.min.js"></script>
    <script src="/resources/vendor/js/reservation/fullcalendar.min.js"></script>
    <script src="/resources/vendor/js/reservation/ko.js"></script>
    <script src="/resources/vendor/js/reservation/select2.min.js"></script>
    <script src="/resources/js/reservation.js"></script>
    <script src="/resources/js/reservationaddEvent.js"></script>
    <script src="/resources/js/reservationeditEvent.js"></script>
    <script src="/resources/js/reservationetcSetting.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="/resources/js/pace.min.js"></script>
	<script src="/resources/js/classie.js"></script>
	<script src="/resources/js/cbpAnimatedHeader.js"></script>
	<script src="/resources/js/wow.min.js"></script>
	<script src="/resources/js/inspinia.js"></script>

</body>
</html>
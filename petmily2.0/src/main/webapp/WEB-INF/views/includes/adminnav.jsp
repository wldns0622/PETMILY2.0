<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="col-md-3 col-sm-4 col-xl-2 bd-sidebar" style="max-width: 394px;min-width: 256px;">
                <div class="ibox">
                    <div class="ibox-content mailbox-content m-l-xl">
                        <div class="file-manager">
                            <a href="/admin/main.admin"><div class="btn btn-block btn-primary compose-mail">관리자 홈</div></a>
                            <div class="space-25"></div>
                            <h5>관리자메뉴</h5>
                            <ul class="folder-list m-b-md" style="padding: 0">
                                <li><a href="/admin/userManager"> <i class="fa fa-user "></i> 사용자 관리  </a></li>
                                <li><a href="/admin/approveList"> <i class="fa fa-user-md"></i> 승인 관리 <span class="label label-warning float-right">0</span></a></li>
                                <li><a href="/admin/codeList"> <i class="fa fa-magic"></i> 코드 관리 </a></li>
                                <li><a href="/admin/reportList"> <i class="fa fa-scissors"></i> 신고 관리 <span class="label label-danger float-right">0</span></a></li>
                                <li><a href="/admin/statistics"> <i class="fa fa-line-chart"></i> 통계 </a></li>
                            </ul>
                            <h5>개발자 연락처</h5>
                            <ul class="category-list" style="padding: 0">
                                <li class="border-bottom"><a href="#"> <i class="fa fa-circle text-navy"></i>은행운<p class="float-right text-muted small m-n">010-2352-3943</p></a></li>
                                <li class="border-bottom"><a href="#"> <i class="fa fa-circle text-danger"></i>정지운<p class="float-right text-muted small m-n">010-1234-2121</p></a></li>
                                <li class="border-bottom"><a href="#"> <i class="fa fa-circle text-primary"></i>유지예<p class="float-right text-muted small m-n">010-3131-5555</p></a></li>
                                <li class="border-bottom"><a href="#"> <i class="fa fa-circle text-info"></i>최서영<p class="float-right text-muted small m-n">010-6231-4232</p></a></li>
                            </ul>

                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
            <script type="text/javascript">

        	$.ajax({
        		url : "/admin/adminCount",
        		type : "POST",
        		dataType:"json",
        		success : function(data) {
        			console.log(data.approveCnt)
        			console.log(data.reportCnt)
				        			
        			$('.label-warning').text(data.approveCnt)
        			$('.label-danger').text(data.reportCnt)
        			

        		},
        		error : function(){

        		}
        	})
            
            </script>

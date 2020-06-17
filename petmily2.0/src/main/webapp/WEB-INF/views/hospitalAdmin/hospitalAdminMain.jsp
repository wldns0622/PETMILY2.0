<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/views/includes/header.jsp" flush="false" />
<div id="content" class="container-fluid">
	<div class="row">
		<jsp:include page="nav.jsp" flush="false"/>

		<div id="content-body" class="col-9 wrapper wrapper-content animated fadeInRight ">
			<div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-9">
                    <h2>HOME</h2>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
							병원
                        </li>
                        <li class="breadcrumb-item active">
                            <strong>Widgets</strong>
                        </li>
                    </ol>
                </div>
            </div>

			<div class="widget style1 navy-bg">
				<div class="row">
					<div style="padding-left: 10px;">
						<i class="fa fa-bell"></i>
					</div>
					<div class="col-8 text-left">
						<span> [공지] 병원페이지를 새롭게 오픈하였습니다 !!! </span>
					</div>
				</div>
			</div>

			<div class="widget navy-bg no-padding">
                    <div class="p-m" style="color:black;">
						<h1 style="color: white;">운영 시간</h1>
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th>Sun</th>
                                    <th>Mon</th>
                                    <th>Tue</th>
                                    <th>Wed</th>
                                    <th>Thu</th>
                                    <th>Fri</th>
                                    <th>Sat</th>
                                </tr>
                                </thead>
                                <tbody>
                                	<tr>
                                		<td>${oper.sunOper}</td>
                                		<td>${oper.monOper}</td>
                                		<td>${oper.tueOper}</td>
                                		<td>${oper.wedOper}</td>
                                		<td>${oper.thuOper}</td>
                                		<td>${oper.friOper}</td>
                                		<td>${oper.satOper}</td>
                                	</tr>

                                </tbody>
                            </table>
                        </div>
                    <div class="flot-chart">
                        <div class="flot-chart-content" id="flot-chart1" style="padding: 0px; position: relative;"><canvas class="flot-base" width="344" height="100" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 344px; height: 100px;"></canvas><canvas class="flot-overlay" width="344" height="100" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 344px; height: 100px;"></canvas></div>
                    </div>
                </div>
					<div class="ibox ">
                        <div class="ibox-title">
                            <h5>Profile Detail</h5>
                        </div>
                        <div>
                            <div class="ibox-content no-padding border-left-right col-md-5">
                                <jsp:include page="includeKakao.jsp"></jsp:include>
                            </div>
                            <div class="ibox-content profile-content col-md-4">
                                <h4><strong>${hospitalMember.hsptName}</strong></h4>
                                <p><i class="fa fa-map-marker"></i> ${hospitalMember.hsptAddr }</p>
                                <h5>
                                    	PETMILY 협약 병원
                                </h5>
                                <p>
                                    TEL : ${hospitalMember.hsptTel }
                                </p>
                                <div class="row m-t-lg">
                                    <div class="col-md-4">
                                        <span class="bar" style="display: none;">5,3,9,6,5,9,7,3,5,2</span><svg class="peity" height="16" width="32"><rect fill="#1ab394" x="0" y="7.111111111111111" width="2.3" height="8.88888888888889"></rect><rect fill="#d7d7d7" x="3.3" y="10.666666666666668" width="2.3" height="5.333333333333333"></rect><rect fill="#1ab394" x="6.6" y="0" width="2.3" height="16"></rect><rect fill="#d7d7d7" x="9.899999999999999" y="5.333333333333334" width="2.3" height="10.666666666666666"></rect><rect fill="#1ab394" x="13.2" y="7.111111111111111" width="2.3" height="8.88888888888889"></rect><rect fill="#d7d7d7" x="16.5" y="0" width="2.3" height="16"></rect><rect fill="#1ab394" x="19.799999999999997" y="3.555555555555557" width="2.3" height="12.444444444444443"></rect><rect fill="#d7d7d7" x="23.099999999999998" y="10.666666666666668" width="2.3" height="5.333333333333333"></rect><rect fill="#1ab394" x="26.4" y="7.111111111111111" width="2.3" height="8.88888888888889"></rect><rect fill="#d7d7d7" x="29.7" y="12.444444444444445" width="2.3" height="3.5555555555555554"></rect></svg>
                                        <h5><strong>169</strong> Posts</h5>
                                    </div>
                                    <div class="col-md-4">
                                        <span class="line" style="display: none;">5,3,9,6,5,9,7,3,5,2</span><svg class="peity" height="16" width="32"><polygon fill="#1ab394" points="0 15 0 7.166666666666666 3.5555555555555554 10.5 7.111111111111111 0.5 10.666666666666666 5.5 14.222222222222221 7.166666666666666 17.77777777777778 0.5 21.333333333333332 3.833333333333332 24.888888888888886 10.5 28.444444444444443 7.166666666666666 32 12.166666666666666 32 15"></polygon><polyline fill="transparent" points="0 7.166666666666666 3.5555555555555554 10.5 7.111111111111111 0.5 10.666666666666666 5.5 14.222222222222221 7.166666666666666 17.77777777777778 0.5 21.333333333333332 3.833333333333332 24.888888888888886 10.5 28.444444444444443 7.166666666666666 32 12.166666666666666" stroke="#169c81" stroke-width="1" stroke-linecap="square"></polyline></svg>
                                        <h5><strong>28</strong> Following</h5>
                                    </div>
                                    <div class="col-md-4">
                                        <span class="bar" style="display: none;">5,3,2,-1,-3,-2,2,3,5,2</span><svg class="peity" height="16" width="32"><rect fill="#1ab394" x="0" y="0" width="2.3" height="10"></rect><rect fill="#d7d7d7" x="3.3" y="4" width="2.3" height="6"></rect><rect fill="#1ab394" x="6.6" y="6" width="2.3" height="4"></rect><rect fill="#d7d7d7" x="9.899999999999999" y="10" width="2.3" height="2"></rect><rect fill="#1ab394" x="13.2" y="10" width="2.3" height="6"></rect><rect fill="#d7d7d7" x="16.5" y="10" width="2.3" height="4"></rect><rect fill="#1ab394" x="19.799999999999997" y="6" width="2.3" height="4"></rect><rect fill="#d7d7d7" x="23.099999999999998" y="4" width="2.3" height="6"></rect><rect fill="#1ab394" x="26.4" y="0" width="2.3" height="10"></rect><rect fill="#d7d7d7" x="29.7" y="6" width="2.3" height="4"></rect></svg>
                                        <h5><strong>240</strong> Followers</h5>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>

		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/views/includes/footer.jsp" flush="false" />
</html>
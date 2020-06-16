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
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/views/includes/footer.jsp" flush="false" />
</html>
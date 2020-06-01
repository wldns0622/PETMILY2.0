<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<%@include file="/WEB-INF/views/includes/header.jsp"%>
<div class="wrapper wrapper-content animated fadeInRight">
	<div class="row m-b-lg m-t-lg">
		<div class="col-md-3">

			<div class="profile-image">
				<img src="/petmily2.0/src/main/webapp/WEB-INF/views/mypet/img/cute_bori.jpg"
					class="rounded-circle circle-border m-b-md" alt="profile">
			</div>
			<div class="profile-info">
				<div class="">
					<div>
						<h2 class="font-bold no-margins">
							<span>보리</span> <small>여아</small>
						</h2>
						<h4>
							<span>푸들</span> / <span>강아지</span>
						</h4>
						<small> 2020.05.29 </small>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<table class="table m-b-xs">
				<tbody>
					<tr>
						<td>상태</td>
						<td><strong>함께 있어요</strong></td>

					</tr>
					<tr>
						<td>중성화</td>
						<td><strong>후</strong></td>
					</tr>
					<tr>
						<td>기본예방접종</td>
						<td><strong>완료</strong></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="col-md-2">
			<div class="widget red-bg p-lg text-center">
				<div class="m-b-md">
					<i class="fa fa-rocket fa-4x"></i>
					<h3 class="font-bold no-margins">지구별 여행</h3>
					<h1 class="font-bold m-xs">
						D+<span>1</span>
					</h1>
				</div>
			</div>

		</div>

		<div class="col-md-2">
			<div class="widget yellow-bg p-lg text-center">
				<div class="m-b-md">
					<i class="fa fa-paw fa-4x"></i>
					<h3 class="font-bold no-margins">등록 일자</h3>
					<h1 class="font-bold m-xs">2020.05.28</h1>
				</div>
			</div>
		</div>

		<div class="col-md-2">
			<button type="button" class="btn btn-w-m btn-info">수정</button>
			<button type="button" class="btn btn-w-m btn-danger">삭제</button>
		</div>


	</div>

	<div class="row">
		<h1>마이 펫페이지</h1>
	</div>


	<div class="row">
		<div class="col-lg-12">
			<div class="tabs-container">
				<ul class="nav nav-tabs" role="tablist">
					<li><a class="nav-link active" data-toggle="tab" href="#tab-1">
							진료</a></li>
					<li><a class="nav-link" data-toggle="tab" href="#tab-2">
							접종</a></li>
					<li><a class="nav-link" data-toggle="tab" href="#tab-3">
							체중</a></li>
				</ul>
				<div class="tab-content">
					<!-- Tab 1 -->
					<div role="tabpanel" id="tab-1" class="tab-pane active">
						<div class="panel-body">

							<%@include file="/WEB-INF/views/mypet/consultation.jsp"%>

						</div>
					</div>
					<!-- Tab 2 -->
					<div role="tabpanel" id="tab-2" class="tab-pane">
						<div class="panel-body">

							<%@include file="/WEB-INF/views/mypet/immunization.jsp"%>

						</div>
					</div>
					<!-- Tab 3 -->
					<div role="tabpanel" id="tab-3" class="tab-pane">
						<div class="panel-body">

							<%@include file="/WEB-INF/views/mypet/weight.jsp"%>

						</div>
					</div>
				</div>


			</div>
		</div>
	</div>
</div>

<!-- Mainly scripts -->
<!-- Page-Level Scripts -->
<script>
	$(document).ready(function() {

		$('.footable').footable();
		$('.footable2').footable();

	});
</script>

<%@include file="/WEB-INF/views/includes/footer.jsp"%>
</html>
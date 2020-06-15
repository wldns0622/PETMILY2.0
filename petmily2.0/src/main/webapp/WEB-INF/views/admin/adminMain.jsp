<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">
</style>
<jsp:include page="/WEB-INF/views/includes/header.jsp" flush="false" />

<div id="content" class="container">
	<div class="row">
		<div id="content-body"
			class="col-12 wrapper wrapper-content animated fadeInRight">
			<div class="i-box border m-lg ">
				<div class="ibox-title">
					<h1>관리자 기능</h1>
				</div>
				<div class="ibox-content">
					<div class="row">
						<div class="col-lg-4">
						<a href="/admin/userManager">
							<div class="widget yellow-bg p-lg text-center">
								<div class="m-b-md">
									<i class="fa fa-user fa-4x"></i>
									<h1 class="m-xs font-bold">사용자관리</h1>
									<small>사용자를 검색하고 권한을 변경할 수 있습니다.</small>
								</div>
							</div>
							</a>
						</div>
						<div class="col-lg-4">
						<a href="/admin/codeList">
							<div class="widget lazur-bg p-lg text-center">
								<div class="m-b-md">
									<i class="fa fa-magic fa-4x"></i>
									<h1 class="m-xs font-bold">코드관리</h1>
									<small>홈페이지에서 사용되는 코드를 관리합니다.</small>
								</div>
							</div>
						</a>
						</div>
						<div class="col-lg-4">
						<a href="#">
							<div class="widget red-bg p-lg text-center">
								<div class="m-b-md">
									<i class="fa fa-user-md fa-4x"></i>
									<h1 class="m-xs font-bold">승인관리</h1>
									<small>병원 권한으로 신청한 계정들을 관리합니다.</small>
								</div>
							</div>
						</a>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6">
						<a href="/admin/reportList">
							<div class="widget navy-bg p-lg text-center">
								<div class="m-b-md">
									<i class="fa fa-scissors fa-4x"></i>
									<h1 class="m-xs font-bold">신고관리</h1>
									<small>'펫톡'에 신고된 게시물을 관리합니다.</small>
								</div>
							</div>
						</a>
						</div>
						<div class="col-lg-6">
						<a href="/admin/reportList">
							<div class="widget blue-bg p-lg text-center">
								<div class="m-b-md">
									<i class="fa fa-line-chart fa-4x"></i>
									<h1 class="m-xs font-bold">통계</h1>
									<small>팻밀리의 각종 통계를 열람합니다.</small>
								</div>
							</div>
						</div>
						</a>
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
	});
</script>
<jsp:include page="/WEB-INF/views/includes/footer.jsp" flush="false" />

</html>
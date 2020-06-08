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
					<h1>알림 목록</h1>
				</div>
				<div class="ibox-content">
					<div class="row">
						<div class="col-lg-4">
							<div class="widget red-bg p-lg text-center">
								<div class="m-b-md">
									<i class="fa fa-bell fa-4x"></i>
									<h1 class="m-xs">47</h1>
									<h3 class="font-bold no-margins">Notification</h3>
									<small>We detect the error.</small>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="widget red-bg p-lg text-center">
								<div class="m-b-md">
									<i class="fa fa-bell fa-4x"></i>
									<h1 class="m-xs">47</h1>
									<h3 class="font-bold no-margins">Notification</h3>
									<small>We detect the error.</small>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="widget red-bg p-lg text-center">
								<div class="m-b-md">
									<i class="fa fa-bell fa-4x"></i>
									<h1 class="m-xs">47</h1>
									<h3 class="font-bold no-margins">Notification</h3>
									<small>We detect the error.</small>
								</div>
							</div>
						</div>
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
		notiadmin()
	});
</script>
<jsp:include page="/WEB-INF/views/includes/footer.jsp" flush="false" />

</html>
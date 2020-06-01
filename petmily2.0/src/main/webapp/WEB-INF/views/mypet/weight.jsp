<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<div>
	<div class="row">
		<div class="col-lg-12">
			<img src="/resources/img/mypet/dogdoc_smile.jpg"
				class="rounded-circle circle-border m-b-md" alt="독닥">
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<h2>
				<strong>체중 기록</strong>
			</h2>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox">
				<div class="ibox-title">
					<h5>체중 그래프</h5>
				</div>
				<div class="ibox-content">
					<div>
						<iframe class="chartjs-hidden-iframe"
							style="width: 100%; display: block; border: 0px; height: 0px; margin: 0px; position: absolute; left: 0px; right: 0px; top: 0px; bottom: 0px;"></iframe>
						<canvas id="lineChart" height="325" width="697"
							style="display: block; width: 558px; height: 260px;"></canvas>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="/resources/js/plugins/chartJs/Chart.min.js"></script>
<script src="/resources/js/demo/chartjs-demo.js"></script>
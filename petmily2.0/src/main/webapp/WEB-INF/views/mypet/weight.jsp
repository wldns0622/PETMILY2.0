<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<div class="row">
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox">
				<div class="ibox-title">
					<h5>
						Line Chart Example <small>With custom colors.</small>
					</h5>
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
		<div class="col-lg-6">
			<div class="ibox ">
				<div class="ibox-title">
					<h5>Bar Chart Example</h5>
				</div>
				<div class="ibox-content">
					<div>
						<iframe class="chartjs-hidden-iframe"
							style="width: 100%; display: block; border: 0px; height: 0px; margin: 0px; position: absolute; left: 0px; right: 0px; top: 0px; bottom: 0px;"></iframe>
						<canvas id="barChart" height="323" width="696"
							style="display: block; width: 557px; height: 259px;"></canvas>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
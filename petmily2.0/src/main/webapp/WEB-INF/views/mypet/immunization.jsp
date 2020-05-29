<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<div>
	<div class="row">
		<div class="col-lg-12">접종 기록</div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<img src="img/dogdoc_inj.jpg"
				class="rounded-circle circle-border m-b-md" alt="독닥">
		</div>
	</div>
	<div class="row">
		<div class="ibox-content">

			<table class="table table-hover">
				<thead>
					<tr>
						<th>#</th>
						<th>Data</th>
						<th>User</th>
						<th>Value</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td><span class="pie" style="display: none;">0.52,1.041</span>
							<svg class="peity" height="16" width="16">
							<path
									d="M 8 8 L 8 0 A 8 8 0 0 1 14.933563796318165 11.990700825968545 Z"
									fill="#1ab394"></path>
							<path
									d="M 8 8 L 14.933563796318165 11.990700825968545 A 8 8 0 1 1 7.999999999999998 0 Z"
									fill="#d7d7d7"></path></svg></td>
						<td>Samantha</td>
						<td class="text-navy"><i class="fa fa-level-up"></i> 40%</td>
					</tr>
					<tr>
						<td>2</td>
						<td><span class="pie" style="display: none;">226,134</span> <svg
								class="peity" height="16" width="16">
							<path
									d="M 8 8 L 8 0 A 8 8 0 1 1 2.2452815972907922 13.55726696367198 Z"
									fill="#1ab394"></path>
							<path
									d="M 8 8 L 2.2452815972907922 13.55726696367198 A 8 8 0 0 1 7.999999999999998 0 Z"
									fill="#d7d7d7"></path></svg></td>
						<td>Jacob</td>
						<td class="text-warning"><i class="fa fa-level-down"></i>
							-20%</td>
					</tr>
					<tr>
						<td>3</td>
						<td><span class="pie" style="display: none;">0.52/1.561</span>
							<svg class="peity" height="16" width="16">
							<path
									d="M 8 8 L 8 0 A 8 8 0 0 1 14.933563796318165 11.990700825968545 Z"
									fill="#1ab394"></path>
							<path
									d="M 8 8 L 14.933563796318165 11.990700825968545 A 8 8 0 1 1 7.999999999999998 0 Z"
									fill="#d7d7d7"></path></svg></td>
						<td>Damien</td>
						<td class="text-navy"><i class="fa fa-level-up"></i> 26%</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
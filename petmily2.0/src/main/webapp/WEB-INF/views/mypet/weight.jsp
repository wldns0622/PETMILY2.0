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

<div>
	<div class="row">
		<div class="col-lg-12">
			<h2><strong>동물 병원 예약 목록</strong></h2>
		</div>
	</div>
	<div class="row">

		<div class="col-lg-12">
			<div class="ibox">
				<div class="ibox-content">

					<table
						class="footable table table-stripped toggle-arrow-tiny tablet breakpoint footable-loaded"
						data-page-size="15">
						<thead>
							<tr>

								<th
									class="footable-visible footable-first-column footable-sortable footable-sorted">Order
									ID<span class="footable-sort-indicator"></span>
								</th>
								<th data-hide="phone" class="footable-visible footable-sortable">Customer<span
									class="footable-sort-indicator"></span></th>
								<th data-hide="phone" class="footable-visible footable-sortable">Amount<span
									class="footable-sort-indicator"></span></th>
								<th data-hide="phone" class="footable-visible footable-sortable">Date
									added<span class="footable-sort-indicator"></span>
								</th>
								<th data-hide="phone,tablet" class="footable-sortable"
									style="display: none;">Date modified<span
									class="footable-sort-indicator"></span></th>
								<th data-hide="phone" class="footable-visible footable-sortable">Status<span
									class="footable-sort-indicator"></span></th>
								<th
									class="text-right footable-visible footable-last-column footable-sortable">Action<span
									class="footable-sort-indicator"></span></th>

							</tr>
						</thead>
						<tbody>

							<tr class="footable-even" style="">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 3214</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$500.00</td>
								<td class="footable-visible">03/04/2015</td>
								<td style="display: none;">03/05/2015</td>
								<td class="footable-visible"><span
									class="label label-primary">Pending</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-row-detail" style="display: none;">
								<td class="footable-row-detail-cell" colspan="6"><div
										class="footable-row-detail-inner">
										<div class="footable-row-detail-row">
											<div class="footable-row-detail-name">Date modified:</div>
											<div class="footable-row-detail-value">03/05/2015</div>
										</div>
									</div></td>
							</tr>
							<tr class="footable-odd" style="">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 3214</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$500.00</td>
								<td class="footable-visible">03/04/2015</td>
								<td style="display: none;">03/05/2015</td>
								<td class="footable-visible"><span
									class="label label-primary">Pending</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-even" style="">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 3214</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$500.00</td>
								<td class="footable-visible">03/04/2015</td>
								<td style="display: none;">03/05/2015</td>
								<td class="footable-visible"><span
									class="label label-primary">Pending</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-odd" style="">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 3214</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$500.00</td>
								<td class="footable-visible">03/04/2015</td>
								<td style="display: none;">03/05/2015</td>
								<td class="footable-visible"><span
									class="label label-primary">Pending</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-even" style="">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 324</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$320.00</td>
								<td class="footable-visible">12/04/2015</td>
								<td style="display: none;">21/07/2015</td>
								<td class="footable-visible"><span
									class="label label-primary">Pending</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-odd" style="">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 324</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$320.00</td>
								<td class="footable-visible">12/04/2015</td>
								<td style="display: none;">21/07/2015</td>
								<td class="footable-visible"><span
									class="label label-primary">Pending</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-even" style="">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 324</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$320.00</td>
								<td class="footable-visible">12/04/2015</td>
								<td style="display: none;">21/07/2015</td>
								<td class="footable-visible"><span
									class="label label-primary">Pending</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-odd" style="">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 324</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$320.00</td>
								<td class="footable-visible">12/04/2015</td>
								<td style="display: none;">21/07/2015</td>
								<td class="footable-visible"><span
									class="label label-primary">Pending</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-even" style="">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 324</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$320.00</td>
								<td class="footable-visible">12/04/2015</td>
								<td style="display: none;">21/07/2015</td>
								<td class="footable-visible"><span
									class="label label-primary">Pending</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-odd" style="">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 324</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$320.00</td>
								<td class="footable-visible">12/04/2015</td>
								<td style="display: none;">21/07/2015</td>
								<td class="footable-visible"><span
									class="label label-warning">Expired</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-even" style="">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 546</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$2770.00</td>
								<td class="footable-visible">06/07/2015</td>
								<td style="display: none;">04/08/2015</td>
								<td class="footable-visible"><span
									class="label label-primary">Pending</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-odd" style="">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 546</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$2770.00</td>
								<td class="footable-visible">06/07/2015</td>
								<td style="display: none;">04/08/2015</td>
								<td class="footable-visible"><span
									class="label label-primary">Pending</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-even" style="">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 546</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$2770.00</td>
								<td class="footable-visible">06/07/2015</td>
								<td style="display: none;">04/08/2015</td>
								<td class="footable-visible"><span
									class="label label-primary">Pending</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-odd" style="">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 546</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$2770.00</td>
								<td class="footable-visible">06/07/2015</td>
								<td style="display: none;">04/08/2015</td>
								<td class="footable-visible"><span
									class="label label-primary">Pending</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-even" style="">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 546</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$2770.00</td>
								<td class="footable-visible">06/07/2015</td>
								<td style="display: none;">04/08/2015</td>
								<td class="footable-visible"><span
									class="label label-primary">Pending</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-odd" style="display: none;">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 546</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$2770.00</td>
								<td class="footable-visible">06/07/2015</td>
								<td style="display: none;">04/08/2015</td>
								<td class="footable-visible"><span
									class="label label-danger">Canceled</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-even" style="display: none;">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 6327</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$8560.00</td>
								<td class="footable-visible">01/12/2015</td>
								<td style="display: none;">05/12/2015</td>
								<td class="footable-visible"><span
									class="label label-primary">Pending</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-odd" style="display: none;">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 6327</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$8560.00</td>
								<td class="footable-visible">01/12/2015</td>
								<td style="display: none;">05/12/2015</td>
								<td class="footable-visible"><span
									class="label label-primary">Pending</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-even" style="display: none;">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 6327</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$8560.00</td>
								<td class="footable-visible">01/12/2015</td>
								<td style="display: none;">05/12/2015</td>
								<td class="footable-visible"><span
									class="label label-primary">Pending</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-odd" style="display: none;">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 6327</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$8560.00</td>
								<td class="footable-visible">01/12/2015</td>
								<td style="display: none;">05/12/2015</td>
								<td class="footable-visible"><span
									class="label label-primary">Pending</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-even" style="display: none;">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 6327</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$8560.00</td>
								<td class="footable-visible">01/12/2015</td>
								<td style="display: none;">05/12/2015</td>
								<td class="footable-visible"><span
									class="label label-primary">Pending</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-odd" style="display: none;">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 6327</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$8560.00</td>
								<td class="footable-visible">01/12/2015</td>
								<td style="display: none;">05/12/2015</td>
								<td class="footable-visible"><span
									class="label label-primary">Pending</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-even" style="display: none;">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 642</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$6843.00</td>
								<td class="footable-visible">10/04/2015</td>
								<td style="display: none;">13/07/2015</td>
								<td class="footable-visible"><span
									class="label label-success">Shipped</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-odd" style="display: none;">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 642</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$6843.00</td>
								<td class="footable-visible">10/04/2015</td>
								<td style="display: none;">13/07/2015</td>
								<td class="footable-visible"><span
									class="label label-success">Shipped</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-even" style="display: none;">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 642</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$6843.00</td>
								<td class="footable-visible">10/04/2015</td>
								<td style="display: none;">13/07/2015</td>
								<td class="footable-visible"><span
									class="label label-success">Shipped</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-odd" style="display: none;">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 642</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$6843.00</td>
								<td class="footable-visible">10/04/2015</td>
								<td style="display: none;">13/07/2015</td>
								<td class="footable-visible"><span
									class="label label-success">Shipped</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-even" style="display: none;">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 642</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$6843.00</td>
								<td class="footable-visible">10/04/2015</td>
								<td style="display: none;">13/07/2015</td>
								<td class="footable-visible"><span
									class="label label-success">Shipped</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-odd" style="display: none;">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 642</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$6843.00</td>
								<td class="footable-visible">10/04/2015</td>
								<td style="display: none;">13/07/2015</td>
								<td class="footable-visible"><span
									class="label label-success">Shipped</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-even" style="display: none;">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 7435</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$750.00</td>
								<td class="footable-visible">04/04/2015</td>
								<td style="display: none;">14/05/2015</td>
								<td class="footable-visible"><span
									class="label label-success">Shipped</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-odd" style="display: none;">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 7435</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$750.00</td>
								<td class="footable-visible">04/04/2015</td>
								<td style="display: none;">14/05/2015</td>
								<td class="footable-visible"><span
									class="label label-success">Shipped</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-even" style="display: none;">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 7435</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$750.00</td>
								<td class="footable-visible">04/04/2015</td>
								<td style="display: none;">14/05/2015</td>
								<td class="footable-visible"><span
									class="label label-success">Shipped</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-odd" style="display: none;">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 7435</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$750.00</td>
								<td class="footable-visible">04/04/2015</td>
								<td style="display: none;">14/05/2015</td>
								<td class="footable-visible"><span
									class="label label-primary">Pending</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-even" style="display: none;">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 7435</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$750.00</td>
								<td class="footable-visible">04/04/2015</td>
								<td style="display: none;">14/05/2015</td>
								<td class="footable-visible"><span
									class="label label-primary">Pending</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
							<tr class="footable-odd" style="display: none;">
								<td class="footable-visible footable-first-column"><span
									class="footable-toggle"></span> 7435</td>
								<td class="footable-visible">Customer example</td>
								<td class="footable-visible">$750.00</td>
								<td class="footable-visible">04/04/2015</td>
								<td style="display: none;">14/05/2015</td>
								<td class="footable-visible"><span
									class="label label-primary">Pending</span></td>
								<td class="text-right footable-visible footable-last-column">
									<div class="btn-group">
										<button class="btn-white btn btn-xs">View</button>
										<button class="btn-white btn btn-xs">Edit</button>
										<button class="btn-white btn btn-xs">Delete</button>
									</div>
								</td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="7" class="footable-visible">
									<ul class="pagination float-right">
										<li class="footable-page-arrow disabled"><a
											data-page="first" href="#first">«</a></li>
										<li class="footable-page-arrow disabled"><a
											data-page="prev" href="#prev">‹</a></li>
										<li class="footable-page active"><a data-page="0"
											href="#">1</a></li>
										<li class="footable-page"><a data-page="1" href="#">2</a></li>
										<li class="footable-page"><a data-page="2" href="#">3</a></li>
										<li class="footable-page-arrow"><a data-page="next"
											href="#next">›</a></li>
										<li class="footable-page-arrow"><a data-page="last"
											href="#last">»</a></li>
									</ul>
								</td>
							</tr>
						</tfoot>
					</table>

				</div>
			</div>
		</div>
	</div>
</div>

<script src="/resources/js/plugins/chartJs/Chart.min.js"></script>
<script src="/resources/js/demo/chartjs-demo.js"></script>
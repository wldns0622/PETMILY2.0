<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="/resources/css/plugins/iCheck/custom.css" rel="stylesheet">
<style>
  .dropdown-item div{
    color: black;
    box-sizing: 
    }
    
    .dropdown-menu .dropdown-item .link-block{
    background-color: gray;
    }
    .landing-page .navbar-default .nav li a strong{
      color: black;
    }
</style>
<link href="/resources/css/plugins/c3/c3.css" rel="stylesheet">
 <link href="/resources/css/plugins/dataTables/datatables.min.css" rel="stylesheet">

<jsp:include page="/WEB-INF/views/includes/header.jsp" flush="false" />
<div id = "content" class="container-fluid">
<div class="row">
<jsp:include page="/WEB-INF/views/includes/adminnav.jsp" flush="false" />
	<div id = "content-body" class="col-9 wrapper wrapper-content animated fadeInRight ">
	<div class="row">
	<div class="container-fluid i-box ">
             <div class="ibox-title">
           		  <h2>팻밀리 신규/누적 가입자 추이</h2>
             </div>
			<div class="ibox-content">
                   <div id="chart"></div>
           </div>
	</div>
	</div>
	<div class="row">
                <div class="col-lg-12">
                <div class="ibox ">
                    <div class="ibox-title">
                        <h5>가입자 추이 테이블</h5>
                    </div>
                    <div class="ibox-content">

                        <div class="table-responsive">
                    <table id="example" class="table table-striped table-bordered table-hover dataTables-table" >
                    <thead>
                    <tr>
                        <th>구분</th>
                        <th>1월</th>
                        <th>2월</th>
                        <th>3월</th>
                        <th>4월</th>
                        <th>5월</th>
                        <th>6월</th>
                    </thead>
                    <tbody>
                    </tbody>
                    <tfoot>
                    </tfoot>
                    </table>
                        </div>

                    </div>
                </div>
            </div>
            </div>
</div>
</div>
</div>
    <script src="/resources/js/plugins/d3/d3.js" charset="utf-8"></script>
    <script src="/resources/js/plugins/c3/c3.js"></script>
     <script src="/resources/js/plugins/dataTables/datatables.min.js"></script>
    <script src="/resources/js/plugins/dataTables/dataTables.bootstrap4.min.js"></script>
      <script type="text/javascript">
      var tmp = {}
      function parse(str) {
          var y = str.substr(0, 4);
          var m = str.substr(5, 2);
          return new Date(y,m);
      }
      
        $(document).ready(function () {
			$.ajax({
				url : "/admin/statisticsData",
				type : "POST",
				dataType:"json",
				contentType : "application/json",
				success : function(data) {
					
					var registerDate =[]
					var regTotal = []
					var regCnt = []

				
					registerDate[0] = 'x'
						regTotal[0] = '누적가입자'
				          regCnt[0] = '신규가입자'
				          
				          
					for (var i = 0; i < data.length; i++) {
						registerDate[i+1]= parse(data[i].registerDate)
						regTotal[i+1]= data[i].regTotal
						regCnt[i+1]= data[i].regCnt
					}
					
						
				 tmp.x = 'x';
				 tmp.columns = [
						 registerDate,
		                    regTotal,
		                    regCnt
		                ]
					console.log(tmp);
			        var chart = c3.generate({
			            data: {
			                x: 'x',
			                xFormat: '%Y%m', 
			                columns: tmp.columns
			            },
			            axis: {
			                x: {
			                    type: 'timeseries',
			                    tick: {
			                        format: '%Y년 %m월'
			                    }
			                },
			                y: {
			                    label: '가입자'
			                }
			            }
			        });
			        
			    	tmp.columns.splice(0,1)
			    	
									    	
			    	//테이블 엑셀저장
			    	$('#example').DataTable( {
			    	    data:  tmp.columns,
			    	    dom: '<"html5buttons"B>lTfgitp',
			    	    info:false,
			    	    lengthChange:false,
			    	    paging:false,
			    	    buttons: [
		                    {extend: 'excel', title: 'ExampleFile'},
		                    {extend: 'pdf', title: 'ExampleFile'},
		                    {extend: 'print',
		                        customize: function (win){
		                               $(win.document.body).addClass('white-bg');
		                               $(win.document.body).css('font-size', '10px');

		                               $(win.document.body).find('table')
		                                       .addClass('compact')
		                                       .css('font-size', 'inherit');
		                       }
		                       }
		                    ]
			    	} );

				},
				error : function() {
					alert("에러발생")
				}
			})
        });

    </script>
<jsp:include page="/WEB-INF/views/includes/footer.jsp" flush="false" />

</html>
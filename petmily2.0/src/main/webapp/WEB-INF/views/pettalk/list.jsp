<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
    .btn_write_area {
	    position: fixed;
	    right: 50%;
	    bottom: 100px;
	    width: 74px;
	    height: 74px;
	    margin-right: -456px;
	    z-index: 20;
	    box-shadow: 1px 1px 2px 0 rgba(0, 0, 0, 0.12);
	    background-color: #ff5a5c;
	    -webkit-border-radius: 100%;
	    -moz-border-radius: 100%;
	    border-radius: 100%;
	}
	.best > td{
	background-color: #fef9f7;
    	box-shadow: 0 0.5px 0 0 rgba(255, 90, 92, 0.3);

	}
	
		.bestIcon{
	--swiper-theme-color: #007aff;
--swiper-navigation-size: 44px;
list-style: none;
display: inline-block;
height: 17px;
margin-right: -1px;
padding: 0.5px 4px 0;
border: 1px solid #ff5a5c;
line-height: 15px;
font-family: Roboto;
font-size: 12px;
font-weight: bold;
color: #ff5a5c;
box-sizing: border-box;
vertical-align: 1px;
	}
</style>
<jsp:include page="/WEB-INF/views/includes/header.jsp" flush="false" />

<div id = "content" class="container ibox">
	<div id = "content-body" class="col ibox-content border m-t-xl">
	<div class="container">
		<div class="row">
	        <div class="col-lg-9 order-1 order-lg-2">
	            <div class="product-show-option">
	                <div class="row">
	                    <div class="col-lg-7 col-md-7">
	                        <div class="select-option">
	                        <form id="sortingForm" name="area" class="col-lg-8" action="list">
	                            <select id="selectCd" class="custom-select" name="selectSorting" onchange="changeSubmit()">
	       	                        	<option value="">전체</option>
			                  			 <c:forEach var="item" items="${codeList}">
	       	                        	<option value="${item.code}">${item.codeNm}</option>
		                            </c:forEach> 
	                            </select>
                            </form>
	                        </div>
	                    </div>
	                </div>
	            </div>
            </div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div >
					<table class="table table-hover border-bottom">
						<thead>
							<tr>
								<th scope="col" >글번호</th>
								<th scope="col">제목</th>
								<th scope="col">작성자</th>
								<th scope="col">작성일자</th>
								<th scope="col">조회수</th>
								<th scope="col">추천수</th>
							</tr>
						</thead>
						<tbody>
						 <c:forEach var="bestList" end="2" items="${sortList}">
						<tr class="best">
						<td><span class="bestIcon">BEST</span></td>
								<td><a href="detail?seq=${bestList.boardNo }">${bestList.boardTitle }</a> <span class="card-subtitle mb-2 text-muted">(${bestList.replyCnt})</span></td>
								<td>${bestList.memNm}</td>
								<td>${bestList.createDt }</td>
								<td>${bestList.boardHitcount }</td>
								<td>${bestList.likeCnt }</td>
							</tr>
						</c:forEach>
						<c:forEach var="list" items="${list}">
							<tr>
								<td scope="row">${list.boardNo}</td>
								<td><a href="detail?seq=${list.boardNo }">${list.boardTitle }</a> <span class="card-subtitle mb-2 text-muted">(${list.replyCnt})</span></td>
								<td>${list.memNm}</td>
								<td>${list.createDt }</td>
								<td>${list.boardHitcount }</td>
								<td>${list.likeCnt }</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>

				</div>

			</div>
		</div>
	</div>
</div>
</div>
<a href="insertform"><div style="text-align: center; padding-top: 10px;" class="btn_write_area"><svg class="bi bi-pencil" width="3em" height="3em" viewBox="0 0 16 16" fill="white" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M11.293 1.293a1 1 0 011.414 0l2 2a1 1 0 010 1.414l-9 9a1 1 0 01-.39.242l-3 1a1 1 0 01-1.266-1.265l1-3a1 1 0 01.242-.391l9-9zM12 2l2 2-9 9-3 1 1-3 9-9z" clip-rule="evenodd"/>
  <path fill-rule="evenodd" d="M12.146 6.354l-2.5-2.5.708-.708 2.5 2.5-.707.708zM3 10v.5a.5.5 0 00.5.5H4v.5a.5.5 0 00.5.5H5v.5a.5.5 0 00.5.5H6v-1.5a.5.5 0 00-.5-.5H5v-.5a.5.5 0 00-.5-.5H3z" clip-rule="evenodd"/>
</svg></div>
</a>
  <script type="text/javascript">
	var selectCd="";

    function changeSubmit(){
    	/* $("#currentPageNo").val("1"); */
    	$('#sortingForm').submit()
    }

    $(document).ready(function() {
    	$.urlParam = function(name){
    	    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
    	    if (results==null){
    	       return null;
    	    }
    	    else{
    	       return results[1] || 0;
    	    }
   		 };

    	    $.urlParam('selectSorting');

    selectCd = $.urlParam('selectSorting');
    if(selectCd){
    	$("#selectCd").val(selectCd).prop("selected", true);
    }

    });



    </script>

<jsp:include page="/WEB-INF/views/includes/footer.jsp" flush="false" />


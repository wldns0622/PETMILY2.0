<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<%
    // 인코딩
    request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Insert title here</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="/PETMILYPROJECT/assets/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/PETMILYPROJECT/assets/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/PETMILYPROJECT/assets/css/themify-icons.css" type="text/css">
    <link rel="stylesheet" href="/PETMILYPROJECT/assets/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/PETMILYPROJECT/assets/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/PETMILYPROJECT/assets/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/PETMILYPROJECT/assets/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="/PETMILYPROJECT/assets/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/PETMILYPROJECT/assets/css/style.css" type="text/css">


</head>
<body>

<div id = "content" class="container">
	<div id = "content-body" class="col-12">
		<!-- 검색 창 -->
		<br>
	    <b><font size="5" color="gray">품종 검색</font></b>
	    <br><br>
	   	<input type="hidden" id="set-pet-species" name="pet_species" value="${pet_species }">
	   	<input type="hidden" id="set-pet-no" name="pet_no" value="${pet_no}" >
	   	<form action="/PETMILYPROJECT/pet/selectBreedByNM.go?pet_species=${pet_species }<c:if test="${pet_no > 0}"> &pet_no=${pet_no}</c:if>" method="post">
		   	<input type="text" id="search-in-breed-nm" name="s_breed_nm" placeholder="품종명을 입력해주세요."> 
		   	<button type="submit" class="btn btn-primary mb-2" id="search-breed-nm">검색</button>
	   	</form>
	   	
    	<br>
    	<c:forEach var="breedVO" items="${breedVOList}">
				<div class="i-checks">
					<label class="">
						<div class="iradio_square-green" style="position: relative;">
							<input type="radio" id="can-select-breed-nm${breedVO.breed_no }" name="breed_nm" class="custom-control-input" value="${breedVO.breed_no }"
								style="position: absolute; opacity: 0;">
							<ins class="iCheck-helper"
								style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
						</div> 
						<i></i> Option one
					</label>
				</div>


<%-- 			<div class="custom-control custom-radio">
			  <input type="radio" id="can-select-breed-nm${breedVO.breed_no }" name="breed_nm" class="custom-control-input" value="${breedVO.breed_no }">
			  <label class="custom-control-label" for="can-select-breed-nm${breedVO.breed_no }">${breedVO.breed_nm }</label>
			</div> --%>
		</c:forEach>   		
		
    	<br><br>
    	<input type="submit" id="go-petManagement" value="등록">

		<!-- End 검색 창 -->
	</div>
</div>

    <!-- Js Plugins -->
    <script src="/PETMILYPROJECT/assets/js/jquery-3.3.1.min.js"></script>
    <script src="/PETMILYPROJECT/assets/js/bootstrap.min.js"></script>
    <script src="/PETMILYPROJECT/assets/js/jquery-ui.min.js"></script>
    <script src="/PETMILYPROJECT/assets/js/jquery.countdown.min.js"></script>
    <script src="/PETMILYPROJECT/assets/js/jquery.nice-select.min.js"></script>
    <script src="/PETMILYPROJECT/assets/js/jquery.zoom.min.js"></script>
    <script src="/PETMILYPROJECT/assets/js/jquery.dd.min.js"></script>
    <script src="/PETMILYPROJECT/assets/js/jquery.slicknav.js"></script>
    <script src="/PETMILYPROJECT/assets/js/owl.carousel.min.js"></script>
    <script src="/PETMILYPROJECT/assets/js/main.js"></script>
    <script type="text/javascript">
		$(function(){
		  var sBtn = $(".nav-menu ul > li");    //  ul > li 이를 sBtn으로 칭한다. (클릭이벤트는 li에 적용 된다.)
		  	sBtn.find("a").click(function(){   // sBtn에 속해 있는  a 찾아 클릭 하면.
	   		sBtn.removeClass("active");     // sBtn 속에 (active) 클래스를 삭제 한다.
		   	$(this).parent().addClass("active"); // 클릭한 a에 (active)클래스를 넣는다.
		  	})
		
		   	//console.log('도착');
		   	function getParentText(){
		        document.getElementById("set-pet-species").value = opener.document.getElementById("insert-pet-species").value;
		        console.log(document.getElementById("set-pet-species").value);
		   	}
		   	
		   	$('#go-petManagement').click(function(){
				//console.log('클릭');
				
				var breed_no = $(":input:radio[name=breed_nm]:checked").val();
				var radio_id = $(":input:radio[name=breed_nm]:checked").attr('id');
				var breed_nm = $("label[for = "+radio_id+" ]").text();
				
				
		        //opener.document.getElementById("insert-breed-no").value = document.getElementById("insert-breed-no").value
		        
		        
		        console.log(breed_nm);
		        var pet_no = null;
		        if($("#set-pet-no").val()>0){
		        	pet_no = $("#set-pet-no").val();
		        	opener.document.getElementById("update-pet-no").value = pet_no;
		        	console.log("자식에서 넘겨주는 pet_no"+opener.document.getElementById("update-pet-no").value);
		        }
		        //console.log(breed_no);
		        //console.log(radio_id);
		        var update_pet_no = null;
		        
		        var update_pet_no= null;
		        if(document.getElementById("set-pet-no").value>0){
		    		//console.log('자식한테서 넘겨받음!');
		    		update_pet_no = opener.document.getElementById("update-pet-no");
		    		//console.log(update_pet_no);
		    		opener.document.getElementById("update-breed-no"+pet_no).value = breed_no;
		    		opener.document.getElementById("update-breed-nm"+pet_no).value = breed_nm;
		    		
		    	}else{
			        opener.document.getElementById("insert-breed-no").value = breed_no;
			        opener.document.getElementById("insert-breed-nm").value = breed_nm;
		    	}

/* 		        opener.document.getElementById("update-breed-no").value = breed_no;
		        opener.document.getElementById("update-breed-nm").value = breed_nm; */
		        window.close(); // 일반적인 현재 창 닫기
		        window.open('about:blank','_self').close();  // IE에서 묻지 않고 창 닫기
			});
		   	
		
		}); 
    </script>

</body>
</html>
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

 <!-- Bootstrap core CSS -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
	<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote-bs4.min.css"
	rel="stylesheet">
    <!-- Animation CSS -->
    <link href="/resources/css/animate.css" rel="stylesheet">

    <link href="/resources/font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
    <link href="/resources/css/style.css" rel="stylesheet">
    
    <link href="/resources/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
    <link href="/resources/css/plugins/iCheck/custom.css" rel="stylesheet">
    
    <script src="/resources/js/jquery-3.3.1.min.js"></script>
 	

</head>
<body>

<div id = "content" class="container">
	<div id = "content-body" class="col-12">
		<!-- 검색 창 -->
		<br>
	    <b><font size="5" color="gray">품종 검색</font></b>
	    <br><br>
			<div class="row">
				<input type="hidden" id="set-pet-species" name="petSpecies"
					value="${petSpecies }"> <input type="hidden"
					id="set-pet-no" name="petNo" value="${petNo}">
				<form action="/mypet/petBreedName" method="post">
					<input type="hidden" id="set-pet-species" name="petSpecies"
						value="${petSpecies }"> <input type="hidden"
						id="set-pet-no" name="petNo" value="${petNo}">
					<div class="input-group">
						<input type="text" class="form-control" id="search-in-breed-nm"
							name="sBreedNm" placeholder="품종명을 입력해주세요."> <span
							class="input-group-append">
							<button type="submit" class="btn btn-primary"
								id="search-breed-nm">검색</button>
						</span>
					</div>

				</form>
			</div>

			<br>
			
    	<c:forEach var="breedVO" items="${breedVOList}">
				<div class="i-checks">
					<label id=""> <input type="radio"
						id="can-select-breed-nm${breedVO.breedNo }" name="breedNm"
						class="custom-control-input" value="${breedVO.breedNo }">
						<input type="hidden"
						name="can-select-breed-nm${breedVO.breedNo }" value="${breedVO.breedNm }">
						<i></i> ${breedVO.breedNm }
					</label>
				</div>

		</c:forEach>   		
		
    	<br><br>
    	<input type="submit" id="go-petManagement" value="등록">

		<!-- End 검색 창 -->
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="/resources/js/jquery-2.1.1.js"></script>
<script src="/resources/js/pace.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/classie.js"></script>
<script src="/resources/js/cbpAnimatedHeader.js"></script>
<script src="/resources/js/wow.min.js"></script>
<script src="/resources/js/inspinia.js"></script>
<!-- iCheck -->
<script src="/resources/js/plugins/iCheck/icheck.min.js"></script>
    <script>
        $(document).ready(function () {
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });
        });
    </script>
    
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
				
				var breed_no = $(":input:radio[name=breedNm]:checked").val();
				var radio_id = $(":input:radio[name=breedNm]:checked").attr('id');
				var breed_nm = $("input[name = "+radio_id+" ]").val();
				
				
		        //opener.document.getElementById("insert-breed-no").value = document.getElementById("insert-breed-no").value
		        
		        //테스트 코드
		        
		        //console.log(breed_nm);
		        
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
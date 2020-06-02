let hospitals = new Array();
let positions = new Array();
let marker;

$(function() {
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div
	mapOption = {
		center : new kakao.maps.LatLng(37.481285, 126.880066), // 지도의 중심좌표   || 33.450701, 126.570667  37.481285, 126.880066
		level : 6 // 지도 확대 레벨
	};

	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성

	//DB에 있는 병원 위치 정보
	function hospitalMarkers() {
		// 마커 이미지 주소
		var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";

		for (let i = 0; i < positions.length; i++) {

			// 마커 이미지의 이미지 크기
			var imageSize = new kakao.maps.Size(24, 35);

			// 마커 이미지 생성
			var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

			// 마커 생성
			let marker = new kakao.maps.Marker({
				map : map, // 마커를 표시할 지도
				position : positions[i].latlng, // 마커를 표시할 위치
				title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시
				image : markerImage // 마커 이미지
			})

			// 마커에 표시할 인포윈도우를 생성
			var infowindow = new kakao.maps.InfoWindow({
				content : positions[i].title // 인포윈도우에 표시할 내용
			});

			// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록
			// 이벤트 리스너로는 클로저를 만들어 등록
			// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록된다.
			kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
			kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));

			kakao.maps.event.addListener(marker, 'click', function() {
				 var html = '<div class="entry">';
				 html += '<tr>';
				 html += '<td class="hosptName">' + hospitals[i].hosptName + '</td><br>';
				 html += '<td class="hosptTel">' + hospitals[i].hosptTel + '</td><br>';
				 html += '<td class="hosptAddress">' + hospitals[i].hosptAddress + '</td><br>';
				 html += '<td class="hosptRoadAddress">' + hospitals[i].hosptRoadAddress + '</td><br>';
				 html += '<td class="hosptBusinessHours">'+'진료 시간 : ' + hospitals[i].hosptBusinessHours + '</td><br>';
				 html += '<br>';
				 html += '<a href="/PETMILYPROJECT/reservation/reservationForm.go?hosptNo='+ hospitals[i].hosptNo + '"><' + hospitals[i].hosptName + '> 예약하기</a>';
				 html += '</tr>';
				 html += '<br>';
				 html += '</div>';
				 $('.hospital-detail').html(html);
		});
								
		}//반복문 끝

		// 인포윈도우를 표시하는 클로저를 만드는 함수
		function makeOverListener(map, marker, infowindow) {
			return function() {
				infowindow.open(map, marker);
			};
		}
		// 인포윈도우를 닫는 클로저를 만드는 함수
		function makeOutListener(infowindow) {
			return function() {
				infowindow.close();
			};
		}
	}

	//페이지가 실행되면 병원 정보를 읽어오는 ajax
	$.ajax({
		url : '/hospital/hospitalInfos',
		type : 'get',
		dataType: "json",
		success : function(data) {
			//console.log("data" + data)
			//위에 선언된 hospitals배열에 받아온 데이터를 넣기 (데이터는 쿼리문을 날려 읽어온 병원 정보들)
			hospitals = data;
			console.log(hospitals[0])
			// hospitals크기만큼 배열을 돌려서 positions라는 배열에 hospitals에 있는이름과 x,y값만 넣기
			for (var i = 0; i < hospitals.length; i++) {
				positions.push({
					title : hospitals[i].hosptName,
					latlng : new kakao.maps.LatLng(hospitals[i].hosptY, hospitals[i].hosptX)
				})
			}
			hospitalMarkers();
		},
		error:function(request,status,error) {
			 alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
		   
	});

});
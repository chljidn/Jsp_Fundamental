<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3cbb98baa4d3e4a906ae42c7202d0f54&libraries=services"></script>
<script>

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.56529476740355,  126.9786824071927), // 지도의 중심좌표
        level: 4 // 지도의 확대 레벨
    };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption);

var geocoder = new kakao.maps.services.Geocoder(), // 좌표계 변환 객체를 생성합니다
		wtmX = <%=request.getParameter("CODE1")%>, // 변환할 WTM X 좌표 입니다
		wtmY = <%=request.getParameter("CODE2")%>; // 변환할 WTM Y 좌표 입니다

// WTM 좌표를 WGS84 좌표계의 좌표로 변환합니다
geocoder.transCoord(wtmX, wtmY, transCoordCB, {
    input_coord: kakao.maps.services.Coords.WTM, // 변환을 위해 입력한 좌표계 입니다
    output_coord: kakao.maps.services.Coords.WGS84 // 변환 결과로 받을 좌표계 입니다 
});

// 좌표 변환 결과를 받아서 처리할 콜백함수 입니다.
function transCoordCB(result, status) {

    // 정상적으로 검색이 완료됐으면 
    if (status === kakao.maps.services.Status.OK) {

        // 마커를 변환된 위치에 표시합니다
        var marker = new kakao.maps.Marker({
            position: new kakao.maps.LatLng(result[0].y, result[0].x), // 마커를 표시할 위치입니다
            map: map // 마커를 표시할 지도객체입니다
        })
    }
}
</script>
</body>
</html>
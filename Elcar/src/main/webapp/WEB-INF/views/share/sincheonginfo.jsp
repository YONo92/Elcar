<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>ELCAR | Hello :)</title>
    <style>
      section {
        width: 100%;
        height: 2600px;
        display: table;
      }
      div.frame {
        width: 80%;
        height: 100%;
        margin: 0 auto;
        display: table;
      }

      div.top_frame {
        width: 100%;
		height: 850px;
        margin-bottom: 50px;
        text-align: center;
      }
      div.top_title {
        width: 80%;
        height: 150px;
        text-align: center;
        margin: 0 auto;
      }
      div.top_text {
        width: 500px;
        height: 600px;
        text-align: center;
        margin: 0 auto;
      }
      div.top_bottom {
        width: 70%;
        height: 40px;
        margin: 0 auto;
      }
      div.center_frame {
        width: 100%;
        height: 34%;
        margin: 0 auto;
		display: flex;
      }
      div.center_map {
        width: 100%;
        height: 100%;
        
      }
      div.bottom {
        margin-top: 50px;
        width: 100%;
        height: 100px;
        text-align: center;
      }
      input.text {
        margin-top: 15px;
        width: 500px;
        height: 40px;
        font-size: 15px;
        border: 0;
        border-radius: 15px;
        outline: none;
        padding-left: 10px;
        background-color: rgb(233, 233, 233);
      }
      textarea {
        width: 1000px;
        height: 300px;
        font-size: 15px;
        border: 0;
        border-radius: 15px;
        outline: none;
        padding-left: 10px;
        background-color: rgb(233, 233, 233);
        resize: none;
      }
    </style>
  </head>

  <body onload="initTmap();">
    <!-- Breadcrumb End -->

    <div
      class="breadcrumb-option set-bg"
      data-setbg="../resources/img/breadcrumb-bg.jpg"
    >
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <div class="breadcrumb__text">
              <h2>Car sharing</h2>
              <div class="breadcrumb__links">
                <a href="./index.html"><i class="fa fa-home"></i> Home</a>
                <span>카 쉐어링</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Breadcrumb Begin -->
    <form action="sinchenginfo/{num}" method="get">
    <section>
      <div class="frame">
        <div class="top_title" style="margin-top: 30px"><h1>날 태워</h1></div>
        <div class="top_frame">
          <div class="top_text">
            <h4 style="float: left">매칭상태</h4>
            <input
              type="text"
              class="text_custom text"
              name=""
              value="${status}"
              readonly
            >
			<br /><br />
            <h4 style="float: left">닉네임</h4>
            <input
              type="text"
              class="text_custom text"
              name=""
              value="${sincheng.nickname}"
              readonly
            >
			<br /><br />
      <h4 style="float: left">날짜 시간</h4>
            <input
              type="text"
              id="datepicker"
              class="text_custom text"
              value="${date}"
              name="date"
              readonly
            />
			<br /><br />
            <h4 style="float: left">성별</h4>
            <input
              type="text"
              class="text_custom text"
              name=""
              value="${gender}"
              readonly
            />
			<br /><br />
            <h4 style="float: left">인원수</h4>
            <input
              type="text"
              class="text_custom text"
              name="person"
              value="${sincheng.person}"
              readonly
            />
			<br /><br />
            <h4 style="float: left">출발지</h4>
            <input
              type="text"
              class="text_custom text"
              id="searchKeyword1"
              name="start_name"
              value="${sincheng.start_name}"
              readonly
            />
            <input
              type="text"
              id="startlat"
              name="start_lat"
              value="${sincheng.start_lat}"
              style="display: none"
            />
            <input
              type="text"
              id="startlon"
              name="start_long"
              value="${sincheng.start_long}"
              style="display: none"
            />
 
			<br /><br />
            <h4 style="float: left">도착지</h4>
            <input
              type="text"
              class="text_custom text"
              id="searchKeyword2"
              name="goal_name"
              value="${sincheng.goal_name}"
              readonly
            />
            <input
              type="text"
              id="endlat"
              name="goal_lat"
              value="${sincheng.goal_lat}"
              style="display: none"
            />
            <input
              type="text"
              id="endlon"
              name="goal_long"
              value="${sincheng.goal_long}"
              style="display: none"
            />
			<br /><br />
          </div>

          <div class="top_bottom" style="margin-top: 100px">
            <br id="map_wrap" class="map_wrap">
            </div>
          </div>
          <p id="result" style="display: none"></p>
          <p id="resultTotal" style="text-align: center;"></p>
      
        <div class="center_frame">
			<div class="center_addr">
				<div class="map_act_btn_wrap clear_box"></div>
				<div>
				  <div class="rst_wrap">
					<div class="rst mCustomScrollbar">
					  <ul id="searchResult" name="searchResult">
					  </ul>
					</div>
				  </div>
				</div>
			  </div>
          <div class="center_map">
            <div style="float: left">
              <select id="selectLevel" style="margin: 0 auto">
                <option value="0" selected="selected">교통최적+추천</option>
                <option value="1">교통최적+무료우선</option>
                <option value="2">교통최적+최소시간</option>
                <option value="4">교통최적+고속도로우선</option>
                <option value="10">최단거리+유/무료</option>
                <option value="19">교통최적+어린이보호구역 회피</option>
              </select>
            </div>
            <div style="float: left">
              <select id="year" style="margin: 0 auto; display: inline">
                <option value="Y" selected="selected">
                  교통정보 표출 옵션
                </option>
                <option value="Y">Y</option>
                <option value="N">N</option>
              </select>
            </div>
            <button
              type="button"
              id="btn_select"
              class="btn btn-danger"
              style="float: right; width: 100px"
            >
              길찾기
            </button>
            <div class="map_act_btn_wrap clear_box;"></div>
            <div class="clear"></div>
            <div id="map_div"></div>
          </div>
        </div>
        <div class="bottom">
			<h4>요청사항</h4></br>	  
          <textarea
            class="text_custom text"
            name="request"
            readonly
          >${sincheng.request}</textarea
          ><br /><br />
        </form>
          <form action="/sincheng" method="post">
          <input type="hidden" name="num" value="${num }">
          <input type="hidden" name="sincheng_id" value="${sincheng.id }">
          <input
            type="button"
            value="태울래"
            class="btn btn-danger"
            style="width: 100px"
            onclick="click_insert()"
          />
          <input hidden type="submit" id="in_submit"> 
        </form>
 
       
        <form action="/deletesincheng/${num}" method="post">
          <input
          type="button"
          value="삭제"
          class="btn btn-danger"
          style="width: 100px; float:right;"
          onclick="click_delete()"
          id="del"
        />
        <input hidden type="submit" id="del_submit"> 
      </form>
      <a
      href="../sinchengmodi/${num}"    
      type="button"
      class="btn btn-danger"
      style="width: 100px; float: right; margin-right: 10px;"
      id="mod"
      >수정</a>
		  <div class="map_act_btn_wrap clear_box"></div>
        </div>
      </div>
    </section>
    
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="https://apis.openapi.sk.com/tmap/jsv2?version=1&appKey=l7xxdc2cafff3e344431b237973ca1c8c1a2"></script>
    <script type="text/javascript">
      let start_lat = "${sincheng.start_lat}";
      let start_lon = "${sincheng.start_long}";
      let goal_lat = "${sincheng.goal_lat}";
      let goal_lon = "${sincheng.goal_long}";
      let sincheng_id = "${sincheng.id}";
      let sincheng_status = "${sincheng.status}";
      let surak_id = "${id}";
      let license = "${mem.license}";

      let overlapId = "${sinchengOverlap.surak_id}";
      let overlapNum = "${sinchengOverlap.talge_num}";

      var map;
			var markerInfo;
			//출발지,도착지 마커
			var marker_s, marker_e, marker_p;
			//경로그림정보
			var drawInfoArr = [];
			var drawInfoArr2 = [];
		
			var chktraffic = [];
			var resultdrawArr = [];
			var resultMarkerArr = [];
		  
      function click_insert() {
        if(sincheng_id === surak_id) {
          Swal.fire({
            icon:'error',
            title:'태울래 신청',
            text:'자신이 작성한 글에 신청이 불가능 합니다!',
          })
        } else if(overlapId === surak_id & overlapNum ==="${num}" ){
          Swal.fire({
            icon:'error',
            title:'태울래 신청',
            text:'이미 신청 하셨습니다!',
          })
        } else if(sincheng_status != 0){
          Swal.fire({
            icon:'error',
            title:'태울래 신청',
            text:'이미 매칭이 끝난 신청입니다.',
          }).then(function(isOkay){
          })
        }  else if(license != 1){
          Swal.fire({
            icon:'error',
            title:'태울래 신청',
            text:'드라이버 등록이 되어있지 않습니다.',
          }).then(function(isOkay){
            document.getElementById("in_submit").click();
          })
        } 
        else {
          Swal.fire({
            icon:'success',
            title:"태울래 신청",
            text:'신청이 완료 되었습니다.',
          }).then(function(isOkay){
            document.getElementById("in_submit").click();
            })  
        }
      }         
      function click_delete(){
        Swal.fire({
          title: "신청삭제",
          text: "정말 삭제 하시겠습니까?",
          icon: "warning",
          showCancelButton: true,
          confirmButtonColor: '#d33',
          cancelButtonColor: '#3085d6',
          cancelButtonText: '취소',
          confirmButtonText: '삭제',
}).then((result) => {
    if (result.isConfirmed) {
          Swal.fire(
          '삭제가 완료되었습니다.',
          'success'
          ).then(function(isOkay){
            document.getElementById("del_submit").click();       
          })
    }else{
        return false;
    }
});
      }
   
			function initTmap() {
        if (sincheng_id === "${id}"){
          $("#mod").show();
        }else{
          $("#mod").hide();
        }

        if (sincheng_id === "${id}" || "${mem.type}"==1){
          $("#del").show();
        }else{
          $("#del").hide();
        }
				// 1. 지도 띄우기
				map = new Tmapv2.Map("map_div", {
					center : new Tmapv2.LatLng(37.49241689559544, 127.03171389453507),
					width : "100%",
					height : "85%",
					zoom : 11,
					zoomControl : true,
					scrollwheel : true
				});
		
				// 2. 시작, 도착 심볼찍기
				// 시작
				marker_s = new Tmapv2.Marker(
						{
							position : new Tmapv2.LatLng(start_lat,
              start_lon),
							icon : "http://tmapapi.sktelecom.com/upload/tmap/marker/pin_r_m_s.png",
							iconSize : new Tmapv2.Size(24, 38),
							map : map
						});
		
				//도착
				marker_e = new Tmapv2.Marker(
						{
							position : new Tmapv2.LatLng(goal_lat,
              goal_lon),
							icon : "http://tmapapi.sktelecom.com/upload/tmap/marker/pin_r_m_e.png",
							iconSize : new Tmapv2.Size(24, 38),
							map : map
						});		
            
		
    //기존 맵에 있던 정보들 초기화
    resettingMap();

    var searchOption = $("#selectLevel").val();

    var trafficInfochk = $("#year").val();

    var PTbounds = new Tmapv2.LatLngBounds();

    //JSON TYPE EDIT [S]
    $
        .ajax({
          type : "POST",
          url : "https://apis.openapi.sk.com/tmap/routes?version=1&format=json&callback=result",
          async : false,
          data : {
            "appKey" : "l7xxdc2cafff3e344431b237973ca1c8c1a2",
            "startX" : start_lon,
            "startY" : start_lat,
            "endX" : goal_lon,
            "endY" : goal_lat,
            "reqCoordType" : "WGS84GEO",
            "resCoordType" : "EPSG3857",
            "searchOption" : searchOption,
            "trafficInfo" : trafficInfochk
          },
          success : function(response) {

            var resultData = response.features;

            var tDistance =  '총 거리 : ' +
                (resultData[0].properties.totalDistance / 1000).toFixed(1) +
                'km,';
              var tTime =
                ' 총 시간 : ' +
                (resultData[0].properties.totalTime / 60).toFixed(0) +
                '분,';
              var tFare =
                ' 톨게이트 요금 : ' +
                resultData[0].properties.totalFare +
                '원,';
           

            $("#resultTotal").text(
                tDistance + tTime + tFare);

            //교통정보 표출 옵션값을 체크
            if (trafficInfochk == "Y") {
              for ( var i in resultData) { //for문 [S]
                var geometry = resultData[i].geometry;
                var properties = resultData[i].properties;

                if (geometry.type == "LineString") {
                  //교통 정보도 담음
                  chktraffic
                      .push(geometry.traffic);
                  var sectionInfos = [];
                  var trafficArr = geometry.traffic;

                  for ( var j in geometry.coordinates) {
                    // 경로들의 결과값들을 포인트 객체로 변환 
                    var latlng = new Tmapv2.Point(
                        geometry.coordinates[j][0],
                        geometry.coordinates[j][1]);
                    // 포인트 객체를 받아 좌표값으로 변환
                    var convertPoint = new Tmapv2.Projection.convertEPSG3857ToWGS84GEO(
                        latlng);
                    sectionInfos.push(convertPoint);
                    PTbounds.extend(convertPoint);
                  }
                  drawLine(sectionInfos,
                      trafficArr);
                      map.fitBounds(PTbounds);
                } else {

                  var markerImg = "";
                  var pType = "";

                  if (properties.pointType == "S") { //출발지 마커
                    markerImg = "http://tmapapi.sktelecom.com/upload/tmap/marker/pin_r_m_s.png";
                    pType = "S";
                  } else if (properties.pointType == "E") { //도착지 마커
                    markerImg = "http://tmapapi.sktelecom.com/upload/tmap/marker/pin_r_m_e.png";
                    pType = "E";
                  } else { //각 포인트 마커
                    markerImg = "http://topopen.tmap.co.kr/imgs/point.png";
                    pType = "P"
                  }

                  // 경로들의 결과값들을 포인트 객체로 변환 
                  var latlon = new Tmapv2.Point(
                      geometry.coordinates[0],
                      geometry.coordinates[1]);
                  // 포인트 객체를 받아 좌표값으로 다시 변환
                  var convertPoint = new Tmapv2.Projection.convertEPSG3857ToWGS84GEO(
                      latlon);

                  var routeInfoObj = {
                    markerImage : markerImg,
                    lng : convertPoint._lng,
                    lat : convertPoint._lat,
                    pointType : pType
                  };
                  // 마커 추가
                  addMarkers(routeInfoObj);
                }
              }//for문 [E]

            } else {

              for ( var i in resultData) { //for문 [S]
                var geometry = resultData[i].geometry;
                var properties = resultData[i].properties;

                if (geometry.type == "LineString") {
                  for ( var j in geometry.coordinates) {
                    // 경로들의 결과값들을 포인트 객체로 변환 
                    var latlng = new Tmapv2.Point(
                        geometry.coordinates[j][0],
                        geometry.coordinates[j][1]);
                    // 포인트 객체를 받아 좌표값으로 변환
                    var convertPoint = new Tmapv2.Projection.convertEPSG3857ToWGS84GEO(
                        latlng);
                    // 포인트객체의 정보로 좌표값 변환 객체로 저장
                    var convertChange = new Tmapv2.LatLng(
                        convertPoint._lat,
                        convertPoint._lng);
                    // 배열에 담기
                    drawInfoArr
                        .push(convertChange);
                  }
                  drawLine(drawInfoArr,
                      "0");
                } else {

                  var markerImg = "";
                  var pType = "";

                  if (properties.pointType == "S") { //출발지 마커
                    markerImg = "http://tmapapi.sktelecom.com/upload/tmap/marker/pin_r_m_s.png";
                    pType = "S";
                  } else if (properties.pointType == "E") { //도착지 마커
                    markerImg = "http://tmapapi.sktelecom.com/upload/tmap/marker/pin_r_m_e.png";
                    pType = "E";
                  } else { //각 포인트 마커
                    markerImg = "http://topopen.tmap.co.kr/imgs/point.png";
                    pType = "P"
                  }

                  // 경로들의 결과값들을 포인트 객체로 변환 
                  var latlon = new Tmapv2.Point(
                      geometry.coordinates[0],
                      geometry.coordinates[1]);
                  // 포인트 객체를 받아 좌표값으로 다시 변환
                  var convertPoint = new Tmapv2.Projection.convertEPSG3857ToWGS84GEO(
                      latlon);

                  var routeInfoObj = {
                    markerImage : markerImg,
                    lng : convertPoint._lng,
                    lat : convertPoint._lat,
                    pointType : pType
                  };

                  // Marker 추가
                  addMarkers(routeInfoObj);
                }
              }//for문 [E]
            }
          },
          error : function(request, status, error) {
            console.log("code:"
                + request.status + "\n"
                + "message:"
                + request.responseText
                + "\n" + "error:" + error);
          }
        });
    //JSON TYPE EDIT [E]
				// 3. 경로탐색 API 사용요청
				$("#btn_select")
						.click(
								function() {
		
									//기존 맵에 있던 정보들 초기화
									resettingMap();
		
									var searchOption = $("#selectLevel").val();
		
									var trafficInfochk = $("#year").val();

                  var PTbounds = new Tmapv2.LatLngBounds();
		
									//JSON TYPE EDIT [S]
									$
											.ajax({
												type : "POST",
												url : "https://apis.openapi.sk.com/tmap/routes?version=1&format=json&callback=result",
												async : false,
												data : {
													"appKey" : "l7xxdc2cafff3e344431b237973ca1c8c1a2",
													"startX" : start_lon,
													"startY" : start_lat,
													"endX" : goal_lon,
													"endY" : goal_lat,
													"reqCoordType" : "WGS84GEO",
													"resCoordType" : "EPSG3857",
													"searchOption" : searchOption,
													"trafficInfo" : trafficInfochk
												},
												success : function(response) {
		
													var resultData = response.features;
		
													var tDistance = "총 거리 : "
															+ (resultData[0].properties.totalDistance / 1000)
																	.toFixed(1) + "km,";
													var tTime = " 총 시간 : "
															+ (resultData[0].properties.totalTime / 60)
																	.toFixed(0) + "분,";
													var tFare = " 총 요금 : "
															+ resultData[0].properties.totalFare
															+ "원,";
													var taxiFare = " 예상 택시 요금 : "
															+ resultData[0].properties.taxiFare
															+ "원";
		
													$("#result").text(
															tDistance + tTime + tFare
																	+ taxiFare);
		
													//교통정보 표출 옵션값을 체크
													if (trafficInfochk == "Y") {
														for ( var i in resultData) { //for문 [S]
															var geometry = resultData[i].geometry;
															var properties = resultData[i].properties;
		
															if (geometry.type == "LineString") {
																//교통 정보도 담음
																chktraffic
																		.push(geometry.traffic);
																var sectionInfos = [];
																var trafficArr = geometry.traffic;
		
																for ( var j in geometry.coordinates) {
																	// 경로들의 결과값들을 포인트 객체로 변환 
																	var latlng = new Tmapv2.Point(
																			geometry.coordinates[j][0],
																			geometry.coordinates[j][1]);
																	// 포인트 객체를 받아 좌표값으로 변환
																	var convertPoint = new Tmapv2.Projection.convertEPSG3857ToWGS84GEO(
																			latlng);
																	sectionInfos.push(convertPoint);
                                  PTbounds.extend(convertPoint);
																}
																drawLine(sectionInfos,
																		trafficArr);
                                    map.fitBounds(PTbounds);
															} else {
		
																var markerImg = "";
																var pType = "";
		
																if (properties.pointType == "S") { //출발지 마커
																	markerImg = "http://tmapapi.sktelecom.com/upload/tmap/marker/pin_r_m_s.png";
																	pType = "S";
																} else if (properties.pointType == "E") { //도착지 마커
																	markerImg = "http://tmapapi.sktelecom.com/upload/tmap/marker/pin_r_m_e.png";
																	pType = "E";
																} else { //각 포인트 마커
																	markerImg = "http://topopen.tmap.co.kr/imgs/point.png";
																	pType = "P"
																}
		
																// 경로들의 결과값들을 포인트 객체로 변환 
																var latlon = new Tmapv2.Point(
																		geometry.coordinates[0],
																		geometry.coordinates[1]);
																// 포인트 객체를 받아 좌표값으로 다시 변환
																var convertPoint = new Tmapv2.Projection.convertEPSG3857ToWGS84GEO(
																		latlon);
		
																var routeInfoObj = {
																	markerImage : markerImg,
																	lng : convertPoint._lng,
																	lat : convertPoint._lat,
																	pointType : pType
																};
																// 마커 추가
																addMarkers(routeInfoObj);
															}
														}//for문 [E]
		
													} else {
		
														for ( var i in resultData) { //for문 [S]
															var geometry = resultData[i].geometry;
															var properties = resultData[i].properties;
		
															if (geometry.type == "LineString") {
																for ( var j in geometry.coordinates) {
																	// 경로들의 결과값들을 포인트 객체로 변환 
																	var latlng = new Tmapv2.Point(
																			geometry.coordinates[j][0],
																			geometry.coordinates[j][1]);
																	// 포인트 객체를 받아 좌표값으로 변환
																	var convertPoint = new Tmapv2.Projection.convertEPSG3857ToWGS84GEO(
																			latlng);
																	// 포인트객체의 정보로 좌표값 변환 객체로 저장
																	var convertChange = new Tmapv2.LatLng(
																			convertPoint._lat,
																			convertPoint._lng);
																	// 배열에 담기
																	drawInfoArr
																			.push(convertChange);
																}
																drawLine(drawInfoArr,
																		"0");
															} else {
		
																var markerImg = "";
																var pType = "";
		
																if (properties.pointType == "S") { //출발지 마커
																	markerImg = "http://tmapapi.sktelecom.com/upload/tmap/marker/pin_r_m_s.png";
																	pType = "S";
																} else if (properties.pointType == "E") { //도착지 마커
																	markerImg = "http://tmapapi.sktelecom.com/upload/tmap/marker/pin_r_m_e.png";
																	pType = "E";
																} else { //각 포인트 마커
																	markerImg = "http://topopen.tmap.co.kr/imgs/point.png";
																	pType = "P"
																}
		
																// 경로들의 결과값들을 포인트 객체로 변환 
																var latlon = new Tmapv2.Point(
																		geometry.coordinates[0],
																		geometry.coordinates[1]);
																// 포인트 객체를 받아 좌표값으로 다시 변환
																var convertPoint = new Tmapv2.Projection.convertEPSG3857ToWGS84GEO(
																		latlon);
		
																var routeInfoObj = {
																	markerImage : markerImg,
																	lng : convertPoint._lng,
																	lat : convertPoint._lat,
																	pointType : pType
																};
		
																// Marker 추가
																addMarkers(routeInfoObj);
															}
														}//for문 [E]
													}
												},
												error : function(request, status, error) {
													console.log("code:"
															+ request.status + "\n"
															+ "message:"
															+ request.responseText
															+ "\n" + "error:" + error);
												}
											});
									//JSON TYPE EDIT [E]
								});
			}
		
			function addComma(num) {
				var regexp = /\B(?=(\d{3})+(?!\d))/g;
				return num.toString().replace(regexp, ',');
			}
		
			//마커 생성하기
			function addMarkers(infoObj) {
				var size = new Tmapv2.Size(24, 38);//아이콘 크기 설정합니다.
		
				if (infoObj.pointType == "P") { //포인트점일때는 아이콘 크기를 줄입니다.
					size = new Tmapv2.Size(8, 8);
				}
		
				marker_p = new Tmapv2.Marker({
					position : new Tmapv2.LatLng(infoObj.lat, infoObj.lng),
					icon : infoObj.markerImage,
					iconSize : size,
					map : map
				});
		
				resultMarkerArr.push(marker_p);
			}
		
			//라인그리기
			function drawLine(arrPoint, traffic) {
				var polyline_;
		
				if (chktraffic.length != 0) {
		
					// 교통정보 혼잡도를 체크
					// strokeColor는 교통 정보상황에 다라서 변화
					// traffic :  0-정보없음, 1-원활, 2-서행, 3-지체, 4-정체  (black, green, yellow, orange, red)
		
					var lineColor = "";
		
					if (traffic != "0") {
						if (traffic.length == 0) { //length가 0인것은 교통정보가 없으므로 검은색으로 표시
		
							lineColor = "#06050D";
							//라인그리기[S]
							polyline_ = new Tmapv2.Polyline({
								path : arrPoint,
								strokeColor : lineColor,
								strokeWeight : 6,
								map : map
							});
							resultdrawArr.push(polyline_);
							//라인그리기[E]
						} else { //교통정보가 있음
		
							if (traffic[0][0] != 0) { //교통정보 시작인덱스가 0이 아닌경우
								var trafficObject = "";
								var tInfo = [];
		
								for (var z = 0; z < traffic.length; z++) {
									trafficObject = {
										"startIndex" : traffic[z][0],
										"endIndex" : traffic[z][1],
										"trafficIndex" : traffic[z][2],
									};
									tInfo.push(trafficObject)
								}
		
								var noInfomationPoint = [];
		
								for (var p = 0; p < tInfo[0].startIndex; p++) {
									noInfomationPoint.push(arrPoint[p]);
								}
		
								//라인그리기[S]
								polyline_ = new Tmapv2.Polyline({
									path : noInfomationPoint,
									strokeColor : "#06050D",
									strokeWeight : 6,
									map : map
								});
								//라인그리기[E]
								resultdrawArr.push(polyline_);
		
								for (var x = 0; x < tInfo.length; x++) {
									var sectionPoint = []; //구간선언
		
									for (var y = tInfo[x].startIndex; y <= tInfo[x].endIndex; y++) {
										sectionPoint.push(arrPoint[y]);
									}
		
									if (tInfo[x].trafficIndex == 0) {
										lineColor = "#06050D";
									} else if (tInfo[x].trafficIndex == 1) {
										lineColor = "#61AB25";
									} else if (tInfo[x].trafficIndex == 2) {
										lineColor = "#FFFF00";
									} else if (tInfo[x].trafficIndex == 3) {
										lineColor = "#E87506";
									} else if (tInfo[x].trafficIndex == 4) {
										lineColor = "#D61125";
									}
		
									//라인그리기[S]
									polyline_ = new Tmapv2.Polyline({
										path : sectionPoint,
										strokeColor : lineColor,
										strokeWeight : 6,
										map : map
									});
									//라인그리기[E]
									resultdrawArr.push(polyline_);
								}
							} else { //0부터 시작하는 경우
		
								var trafficObject = "";
								var tInfo = [];
		
								for (var z = 0; z < traffic.length; z++) {
									trafficObject = {
										"startIndex" : traffic[z][0],
										"endIndex" : traffic[z][1],
										"trafficIndex" : traffic[z][2],
									};
									tInfo.push(trafficObject)
								}
		
								for (var x = 0; x < tInfo.length; x++) {
									var sectionPoint = []; //구간선언
		
									for (var y = tInfo[x].startIndex; y <= tInfo[x].endIndex; y++) {
										sectionPoint.push(arrPoint[y]);
									}
		
									if (tInfo[x].trafficIndex == 0) {
										lineColor = "#06050D";
									} else if (tInfo[x].trafficIndex == 1) {
										lineColor = "#61AB25";
									} else if (tInfo[x].trafficIndex == 2) {
										lineColor = "#FFFF00";
									} else if (tInfo[x].trafficIndex == 3) {
										lineColor = "#E87506";
									} else if (tInfo[x].trafficIndex == 4) {
										lineColor = "#D61125";
									}
		
									//라인그리기[S]
									polyline_ = new Tmapv2.Polyline({
										path : sectionPoint,
										strokeColor : lineColor,
										strokeWeight : 6,
										map : map
									});
									//라인그리기[E]
									resultdrawArr.push(polyline_);
								}
							}
						}
					} else {
		
					}
				} else {
					polyline_ = new Tmapv2.Polyline({
						path : arrPoint,
						strokeColor : "#DD0000",
						strokeWeight : 6,
						map : map
					});
					resultdrawArr.push(polyline_);
				}
		
			}
		
			//초기화 기능
			function resettingMap() {
				//기존마커는 삭제
				marker_s.setMap(null);
				marker_e.setMap(null);
		
				if (resultMarkerArr.length > 0) {
					for (var i = 0; i < resultMarkerArr.length; i++) {
						resultMarkerArr[i].setMap(null);
					}
				}
		
				if (resultdrawArr.length > 0) {
					for (var i = 0; i < resultdrawArr.length; i++) {
						resultdrawArr[i].setMap(null);
					}
				}
				chktraffic = [];
				drawInfoArr = [];
				resultMarkerArr = [];
				resultdrawArr = [];
			}
    </script>
    <script >
    window.onpageshow = function (event) {
        // 새로고침: window.performance.navigation.type == 1
        // 뒤로가기: window.performance.navigation.type == 2
        if (event.persisted || (window.performance && (window.performance.navigation.type == 1 || window.performance.navigation.type == 2))) {
            // 현재 브라우저에서 WebStorage를 지원할 때
            if (('sessionStorage' in window) && window['sessionStorage'] !== null) {
                // sessionStorage로 데이터 다시 불러오기
                if (sessionStorage.getItem('DATA')) {
                    input_text.value = sessionStorage.getItem('DATA');
                }
                
            }
            
        }
        
    }
    </script>
</body>
</html>
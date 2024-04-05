<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Simple Map</title>
    <meta charset="utf-8"/>
    <link
            rel="stylesheet"
            href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css"
    />
    <style>
        #mapid {
            height: 680px;
        }
    </style>
</head>
<script type="text/javascript">
    window.history.forward();
    function noBack(){window.history.forward();}
</script>
<body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
<div id="mapid"></div>

<script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    var mymap = L.map("mapid",{
        center: [37.567, 126.975],
        zoom: 11,
        zoomControl: false,
        dragging: false
    }); // 서울 중심으로 예시

    L.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png", {
        attribution: "© OpenStreetMap contributors",
        maxZoom: 11,
        minZoom: 11,
    }).addTo(mymap);

    $(document).ready(function () {
        $.getJSON("./seoul_EPSG5179.json", function (data) {
            var geojson = L.geoJSON(data, {
                onEachFeature: function (feature, layer) {
                    layer.on({
                        mouseover: function (e) {
                            var layer = e.target;

                            // 보색으로 색 변경
                            layer.setStyle({
                                fillColor: "#e74c3c", // 예시 색상
                                fillOpacity: 1,
                            });

                            if (
                                !L.Browser.ie &&
                                !L.Browser.opera &&
                                !L.Browser.edge
                            ) {
                                layer.bringToFront();
                            }
                            // 여기서 텍스트 레이블(툴팁) 추가
                            var tooltip = L.tooltip({
                                permanent: false,
                                direction: "center",
                                className: "my-labels",
                            })
                                .setContent(feature.properties.nm)
                                .setLatLng(
                                    layer.getBounds().getCenter()
                                );

                            layer.bindTooltip(tooltip).openTooltip();
                        },
                        mouseout: function (e) {
                            geojson.resetStyle(e.target);
                            e.target.closeTooltip();
                        },
                        click: function (e) {
                            // 클릭 이벤트 추가
                            switch (feature.properties.nm) {
                                case "종로구":
                                    window.location.href = "seoul/jongrogu.jsp"; // 종로를 클릭하면 jongrogu.jsp로 이동
                                    break;
                                case "중구":
                                    window.location.href = "seoul/junggu.jsp";
                                    break;
                                case "용산구":
                                    window.location.href = "seoul/yongsangu.jsp";
                                    break;
                                case "성동구":
                                    window.location.href = "seoul/seongdonggu.jsp";
                                    break;
                                case "광진구":
                                    window.location.href = "seoul/gwangjingu.jsp";
                                    break;
                                case "동대문구":
                                    window.location.href = "seoul/dongdaemungu.jsp";
                                    break;
                                case "중랑구":
                                    window.location.href = "seoul/jungranggu.jsp";
                                    break;
                                case "성북구":
                                    window.location.href = "seoul/seongbukgu.jsp";
                                    break;
                                case "강북구":
                                    window.location.href = "seoul/gangbukgu.jsp";
                                    break;
                                case "도봉구":
                                    window.location.href = "seoul/dobonggu.jsp";
                                    break;
                                case "노원구":
                                    window.location.href = "seoul/nowongu.jsp";
                                    break;
                                case "은평구":
                                    window.location.href = "seoul/eunpyeonggu.jsp";
                                    break;
                                case "서대문구":
                                    window.location.href = "seoul/seodaemungu.jsp";
                                    break;
                                case "마포구":
                                    window.location.href = "seoul/mapogu.jsp";
                                    break;
                                case "양천구":
                                    window.location.href = "seoul/yangcheongu.jsp";
                                    break;
                                case "강서구":
                                    window.location.href = "seoul/gangseogu.jsp";
                                    break;
                                case "구로구":
                                    window.location.href = "seoul/gurogu.jsp";
                                    break;
                                case "금천구":
                                    window.location.href = "seoul/geumchungu.jsp";
                                    break;
                                case "영등포구":
                                    window.location.href = "seoul/yeongdeungpogu.jsp";
                                    break;
                                case "동작구":
                                    window.location.href = "seoul/dongjakgu.jsp";
                                    break;
                                case "관악구":
                                    window.location.href = "seoul/gwanakgu.jsp";
                                    break;
                                case "서초구":
                                    window.location.href = "seoul/seochogu.jsp";
                                    break;
                                case "강남구":
                                    window.location.href = "seoul/gangnamgu.jsp";
                                    break;
                                case "송파구":
                                    window.location.href = "seoul/songpagu.jsp";
                                    break;
                                case "강동구":
                                    window.location.href = "seoul/gangdonggu.jsp";
                                    break;
                                default:
                                    // 선택한 지역이 위의 case에 해당하지 않을 경우의 처리를 여기에 작성할 수 있습니다.
                                    break;
                            }
                        },
                    });
                },
                // 초기 스타일 설정
                style: function (feature) {
                    return {
                        fillColor: "#c0392b", // 기본 색상
                        weight: 1,
                        opacity: 1,
                        color: "white", // 경계선 색상
                        fillOpacity: 1,
                    };
                },
            }).addTo(mymap);
        });
    });
</script>
</body>
</html>


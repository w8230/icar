<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%if(session.getAttribute("ID")==null){ %>
 <script>
alert("로그인 후 이용하실 수 있습니다.");
location.href="index.jsp";
</script>
<%} %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.io.File" %>
<%@ page import="java.io.*" %>
<html>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>아이카+</title>
  
  <meta name="description" content="Free Bootstrap Theme by BootstrapMade.com">
  <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
  
  <link rel="icon" type="image/png" href="img/icon.png">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal">
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
  <!--banner-->
  <section id="banner" class="banner">
    <div class="bg-color">
      <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
          <div class="col-md-12">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				      </button>
              <a class="navbar-brand" href="#"><img src="img/logo.png" class="img-responsive" style="width: 140px; margin-top: -16px;"></a>
            </div>
            <div class="collapse navbar-collapse navbar-right" id="myNavbar">
              <ul class="nav navbar-nav">
                <li class="active"><a href="#banner">아이카</a></li>
                <li class=""><a href="#service">아이카존</a></li>
                <li class=""><a href="#about">예약</a></li> <li class="">
                <a href="boardList.bo" onclick="window.open(this.href,'','width=500, height=450, scrollbars=no, toolbar=no, menubar=no, resizable=no, top=200, left=600'); return false;">게시판</a>             
</li>	
                <li class=""><a data-toggle="modal" data-target="#myModal4" href="#">정보변경</a></li>
                <li class=""><a href="logout.jsp">로그아웃</a></li>
              </ul>
            </div>
          </div>
        </div>
      </nav>

      <!-- 로그인 모달#3 -->
     <div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	 <div class="modal-dialog modal-sm">
	 <div class="modal-content">
	 <div class="modal-header">
	 <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
	 <h4 class="modal-title" id="myModalLabel"><%=session.getAttribute("ID")%>님 정보입니다.</h4>
	 </div>
	 
	 <div class="modal-body">
	<form action="UpdateMemberAction.me" method="post">
	<p><input type="password" name="PASSWORD" class="form-control br-radius-zero" id="password" 
	placeholder="변경하실 비밀번호를 입력하세요." data-rule="minlen:4" data-msg="변경하실 비밀번호를 입력하세요." /></p>
	<p><input type="email" name="EMAIL" class="form-control br-radius-zero" id="email" 
	placeholder="변경하실 이메일을 입력하세요." data-rule="minlen:6" data-msg="변경하실 이메일을 입력하세요." /></p>
	<p><input type="text" name="TEL" class="form-control br-radius-zero" id="tel" 
	placeholder="변경하실 전화번호를 입력하세요." data-rule="minlen:6" data-msg="변경하실 전화번호를 입력하세요." /></p>
	 <div class="modal-footer">
	 <button id="updatebtn" onclick="return updatebtn_click();" class="btn btn-primary">변경</button>
     <script>
	function updatebtn_click() {
	if (password.value.length == 0){
	alert("빈 칸을 모두 입력하세요.");
	return false;
	}if (email.value == ""){
	alert("빈 칸을 모두 입력하세요.")
	return false
	}if (tel.value == ""){
	alert("빈 칸을 모두 입력하세요.")
	return false
										}
			}
	 </script>
	 <!-- <button onclick="location.href='logout.jsp'" class="btn btn-danger">로그아웃</button> -->
     </div>
     </form>
	 </div>
	 </div>
	 </div>
	 </div>

	
      <div class="container">
        <div class="row">
          <div class="banner-info">
            <div class="banner-logo text-center">
              <img src="img/logo.png" class="img-responsive">
            </div>
            <div class="banner-text text-center">
              <h1 class="white">지금 바로 아이카를 이용해보세요!</h1>
              <p>전국 1,000여 개의 아이카 보관소를 찾아보세요.</p>
              <a href="#service"><i class="fa fa-angle-down"></i></a><br/>
              <div class="container"> 
              <!-- 버튼 --> 
              <button type="button"class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" > 예약하기 </button> 
              <!-- 예약창 모달 팝업 --> 
              <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" > 
              <div class="modal-dialog"> 
              <div class="modal-content"> 
              <div class="modal-header"> 
              <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span>
              </button> <h4 class="modal-title" id="myModalLabel">차량 예약</h4> </div> 
              
              <div class="modal-body" style="color:black">
              <form action="resulb.do" method="post">   
			    <p><input type="text" name="name" class="form-control br-radius-zero" id="name" 
			    placeholder="예약자 이름을 입력하세요." data-rule="minlen:2" data-msg="이름을 2자 이상 입력하세요." /></p>
			    <p><input type="text" name="unjun" class="form-control br-radius-zero" id="unjun" 
			    placeholder="'-'를 뺀 면허증 번호를 입력하세요." pattern="[0-9]{10}[0-9]?" /></p>
			    <p>
			    <!-- 차량 선택 라디오 -->
			    <input type="radio" id="moning" name="myRadio" value="moning" checked="checked"/>
			    <label for="r1"><span></span>모닝</label>　
			    <input type="radio" id="k3" name="myRadio" value="k3"/>
			    <label for="r2"><span></span>K3</label>　
				<input type="radio" id="k5" name="myRadio" value="k5"/>
			    <label for="r3"><span></span>K5</label>　
			    <input type="radio" id="sptg" name="myRadio" value="sptg"/>
			    <label for="r4"><span></span>스포티지</label>
			    </p>
              <p>
              <button id="resulbtn" onclick="return resulbtn_click();" class="btn btn-primary">예약</button>
              <script>
				function resulbtn_click() {
					if (name.value.length == 0){
					alert("이름을 입력하세요.");
					return false;
					}if (unjun.value == ""){
					alert("면허증 번호를 입력하세요.")
					return false
					}
			}
			</script>
              </p>
              </form>
              </div>  
              </div>
              </div> 
              </div> 
              </div> 
            </div>
          </div>
        </div>
      </div>
      
              <!-- 게시판 모달 팝업 --> 
              <div class="modal fade" id="boardModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" > 
              <div class="modal-dialog"> <div class="modal-content"> <div class="modal-header"> 
              <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span>
              </button> <h4 class="modal-title" id="myModalLabel">아이카 게시판</h4> </div> 
              <!-- 게시판(boardModal1 메인 모달  -->
              <div class="modal-body" style="color:black">
		<div class="table-responsive">
		<table class="table table-bordered table-striped" >
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			</table>
			</div>
				<div class="modal-footer">
             <a data-toggle="modal" data-target="#boardModal2" href="boardWriteForm.bo">글쓰기</a>
              </div>
              </div>  
              </div>
              </div> 
              </div> 
              
               <!-- 글쓰기 모달 팝업 --> 
              <form action="#" method="post">
              <div class="modal fade" id="boardModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" > 
              <div class="modal-dialog"> <div class="modal-content"> <div class="modal-header"> 
              <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span>
              </button> <h4 class="modal-title" id="myModalLabel">글쓰기</h4> </div> 
              <!-- 게시판(boardModal2 모달  -->
            <div class="modal-body" style="color:black">
            <!-- 글쓰기 창 -->
			<table class="table table-striped">
		 	<tr>
		 		<td>작성자</td>
		 		<td><input type="text"  class="form-control" name="writer" value="<%=session.getAttribute("ID")%>" readonly="readonly"></td>
		 	</tr>
		 	<tr>
		 		<td>제목</td>
		 		<td><input type="text"  class="form-control" name="subject"></td>
		 	</tr>
		 	<tr>
		 		<td>이메일</td>
		 		<td><input type="email"  class="form-control" name="email"></td>
		 	</tr>
		 	
		 	<tr>
		 		<td>비밀번호</td>
		 		<td><input type="password"  class="form-control" name="password"></td>
		 	</tr>
		 	
		 	<tr>
		 		<td>글내용</td>
		 		<td><textarea rows="10" cols="50" name="content" class="form-control"></textarea></td>
		 	</tr>
		  	</table>
				<div class="modal-footer">
			  <input type="reset" value="다시작성" class="btn btn-warning">
              <button id="resulbtn" onclick="return resulbtn_click();" class="btn btn-primary">등록</button>
              </div>
              </div>  
              </div>
              </div> 
              </div> 
              </form>
      
  </section>
<section id="service" class="section-padding">
    <div class="container">
      <div class="row">
        <div class="col-md-4 col-sm-4">
          <h2 class="ser-title">아이카존</h2>
          <hr class="botm-line">
        <div id="map"  style="width:1130px; height:500px; "></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7249f1302f5f33b45c2078b444b58f4e&libraries=services"></script>
<script>
// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
var infowindow = new daum.maps.InfoWindow({zIndex:1});

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new daum.maps.LatLng(37.438885, 126.675092), // 지도의 중심좌표
        level: 4 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new daum.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps = new daum.maps.services.Places(); 

// 키워드로 장소를 검색합니다
ps.keywordSearch('학익동 주차장', placesSearchCB); 

// 키워드 검색 완료 시 호출되는 콜백함수 입니다
function placesSearchCB (data, status, pagination) {
    if (status === daum.maps.services.Status.OK) {

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        var bounds = new daum.maps.LatLngBounds();

        for (var i=0; i<data.length; i++) {
            displayMarker(data[i]);    
            bounds.extend(new daum.maps.LatLng(data[i].y, data[i].x));
        }       

        var iwContent = '<div style="padding:10px;">아이카+</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
        iwPosition = new daum.maps.LatLng(37.438885, 126.675092), //인포윈도우 표시 위치입니다
        iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

    // 인포윈도우를 생성하고 지도에 표시합니다
    var infowindow = new daum.maps.InfoWindow({
        map: map, // 인포윈도우가 표시될 지도
        position : iwPosition, 
        content : iwContent,        
        //removable : iwRemoveable
    });
      
    } 
}

// 지도에 마커를 표시하는 함수입니다
function displayMarker(place) {
    
    // 마커를 생성하고 지도에 표시합니다
    var marker = new daum.maps.Marker({
        map: map,
        position: new daum.maps.LatLng(place.y, place.x) 
    });

    // 마커에 클릭이벤트를 등록합니다
    daum.maps.event.addListener(marker, 'click', function() {
        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
        infowindow.open(map, marker);
    })
}
</script>
            </div>
          </div>
        </div>
    </section>
<!--   <section id="service" class="section-padding">
    <div class="container">
      <div class="row">
        <div class="col-md-4 col-sm-4">
          <h2 class="ser-title">아이카란?</h2>
          <hr class="botm-line">
          <p>365일 24시간 전국 어디서든 만날 수 있는 내 차!<br/>
		  어디서나 편리하게 아이카를 대여하실 수 있으며, <br/>
		  경차/승용차/SUV/전기차/승합차 등 다양한 차량을<br/>
		  사용 용도에 따라 선택하실 수 있습니다.</p>
        </div>
        <div class="col-md-4 col-sm-4">
          <div class="service-info">
            <div class="icon">
              <i class="fa fa-stethoscope"></i>
            </div>
            <div class="icon-info">
              <h4>24시간 고객 만족 서비스</h4>
              <p>24시간 언제든 고객님을 위한 고객센터!<br/>
            	  불편사항은 고객센터를 통해 언제든 문의주세요.</p>
            </div>
          </div>
          <div class="service-info">
            <div class="icon">
              <i class="fa fa-ambulance"></i>
            </div>
            <div class="icon-info">
              <h4>똑똑한 소비</h4>
              <p>차량 소유로 발생하는 각종 유지 비용이 절감됩니다.<br>
         	     새롭고 합리적인 방식으로 차량을 소비하세요.</p>
            </div>
          </div>
        </div>
        <div class="col-md-4 col-sm-4">
          <div class="service-info">
            <div class="icon">
              <i class="fa fa-user-md"></i>
            </div>
            <div class="icon-info">
              <h4>전국 곳곳에</h4>
              <p>우리동네/학교/회사/공항/터미널 등 <br>
              	여러분의 가까운 곳에 아이카가 기다리고 있습니다.</p>
            </div>
          </div>
          <div class="service-info">
            <div class="icon">
              <i class="fa fa-medkit"></i>
            </div>
            <div class="icon-info">
              <h4>편리한 방식</h4>
              <p>직원을 만나 계약서를 작성하지 않으셔도 됩니다.<br>
       		       예약 > 차량 탑승 > 스마트키로 도어오픈하세요.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section id="about" class="section-padding">
    <div class="container">
      <div class="row">
        <div class="col-md-3 col-sm-4 col-xs-12">
          <div class="section-title">
            <h2 class="head-title lg-line">나눔카 서비스</h2>
            <hr class="botm-line">
            <p class="sec-para">
            					나눔카는 공유경제 프로젝트의 일환으로, 필요한 시간만큼 10분 단위로 이용할 수 있는 차량 공유 서비스입니다.
								그린카는 공유서울 나눔카의 공식 사업자로서, 함께 사는 사회를
								만들어가는 데 기여합니다.</p>
            <a href="" style="color: #0cb8b6; padding-top:10px;">Know more..</a>
          </div>
        </div>
        <div class="col-md-9 col-sm-8 col-xs-12">
          <div style="visibility: visible;" class="col-sm-9 more-features-box">
            <div class="more-features-box-text">
              <div class="more-features-box-text-icon"> <i class="fa fa-angle-right" aria-hidden="true"></i> </div>
              <div class="more-features-box-text-description">
                <h3>대중교통 환승 포인트 적립</h3>
                <p> 혜택　대중교통 - 그린카 환승 시 300 포인트<br>
              	         대상　카드를 사용하여 대중교통 이용 후 그린카로 30분 이내 환승한 고객<br>
                	참고　카드 등록 후 환승 포인트 적립가능 (그린카 앱 이용 시 포인트 적립 불가)</p>
              </div>
            </div>
            <div class="more-features-box-text">
              <div class="more-features-box-text-icon"> <i class="fa fa-angle-right" aria-hidden="true"></i> </div>
              <div class="more-features-box-text-description">
                <h3>봉사활동 차량 지원</h3>
                <p>  
				혜택　 24시간 무료 이용쿠폰<br>
				대상　봉사활동단체 또는 개인 봉사활동자<br>
				참고　봉사활동 완료 후 후기 작성하여 제출
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section> -->
  <!--/ about-->
  <!--doctor team-->
  <section id="about" class="section-padding">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h2 class="ser-title">아이카 예약</h2>
          <hr class="botm-line">
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
          <div class="thumbnail">
            <a data-toggle="modal" data-target="#myModal" href="#"><img src="img/morning.png" alt="모닝" class="team-img"></a>
            <div class="caption">
              <h3>기아(KIA)</h3>
              <p>2018 모닝</p>
              <p>이용 금액 (km)당<br>
                               평일:780원~　주말:1,200원~
              </p>

            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
          <div class="thumbnail">
             <a data-toggle="modal" data-target="#myModal" href="#"><img src="img/k3.png" alt="k3" class="team-img"></a>
            <div class="caption">
              <h3>기아(KIA)</h3>
              <p>2018 K3</p>
              
              <p>이용 금액 (km)당<br>
                               평일:1,180원~　주말:1,690원~
              </p>
              
            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
          <div class="thumbnail">
             <a data-toggle="modal" data-target="#myModal" href="#"><img src="img/k5.png" alt="..." class="team-img"></a>
            <div class="caption">
              <h3>기아(KIA)</h3>
              <p>2018 K5</p>

              <p>이용 금액 (km)당<br>
                               평일:1,580원~　주말:2,180원~
              </p>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
          <div class="thumbnail">
             <a data-toggle="modal" data-target="#myModal" href="#"><img src="img/sptg.png" alt="..." class="team-img"></a>
            <div class="caption">
              <h3>기아(KIA)</h3>
              <p>2018 스포티지</p>
              
              <p>이용 금액 (km)당<br>
                               평일:2,410원~　주말:3,210원~
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--/ doctor team-->
  <!--testimonial-->
  <section id="testimonial" class="section-padding">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h2 class="ser-title">자주찾는 질문</h2>
          <hr class="botm-line">
        </div>
        <div class="col-md-4 col-sm-4">
          <div class="testi-details">
            <!-- Paragraph -->
            <h4>차량을 늦게 반납하면 어떻게 되나요?</h4>
            <p>다음 사용자 예약건이 대기 중인 상태에서<br>
			반납 시간 지연으로 인한 다음 사용자의<br> 
			피해가 발생한 경우,예약 건당 30,000원과<br> 
			추가 이용료가 과금 될 수 있습니다. </p>
          </div>
          <div class="testi-info">
            <!-- User Image -->
            <a href="#"><img src="img/mini.png" alt="" class="img-responsive"></a>

          </div>
        </div>
        <div class="col-md-4 col-sm-4">
          <div class="testi-details">
          <h4>차량 사용 후 반납 방법이 궁금합니다.</h4>
            <p>1. 대여존 반납 위치에 차량 주차 <br>
            2. 시동 OFF<br>
            3. 개인용품 및 쓰레기 수거<br>
            4. 1~2분 내에 반납처리 완료 상태 확인</p>
          </div>
          <div class="testi-info">
            <a href="#"><img src="img/mini.png" alt="" class="img-responsive"></a>
          </div>
        </div>
        <div class="col-md-4 col-sm-4">
          <div class="testi-details">
          <h4>결제카드 등록 되지 않습니다.</h4>
            <p>결제카드 등록이 불가능한 경우<br>
				고객센터(080-2000-3000)로<br>
				연락주시면 빠른 시일 내 고객님께 <br>
				도움드릴 수 있도록 하겠습니다.</p>
          </div>
          <div class="testi-info">
            <a href="#"><img src="img/mini.png" alt="" class="img-responsive"></a>
          </div>
        </div>
      </div>
    </div>
  </section>


  <!--푸터 영역-->
  <footer id="footer">
    <div class="footer-line">
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center">
		    <div class="footer-line">
		      <div class="container">
		        <div class="row">
		          <div class="col-md-12 text-center">
            Copyright © 2018 ICar. All Rights Reserved.
            <div class="credits">
              Designed by <a href="#">JerryKim</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>
    </div>
    </div>
    </div>
  </footer>

  <script src="js/jquery.min.js"></script>
  <script src="js/jquery.easing.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/custom.js"></script>
  <script src="contactform/contactform.js"></script>
  
</body>

</html>

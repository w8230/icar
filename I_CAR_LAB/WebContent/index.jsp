<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>아이카+</title>
  <!-- 부트스트랩 사용을 위한 폰트 및 css 적용 -->
  <meta name="description" content="Free Bootstrap Theme by BootstrapMade.com">
  <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
  <!-- 부트스트랩 사용을 위한 폰트 및 css 적용 -->
  <link rel="icon" type="image/png" href="img/icon.png">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal">
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
  <!--배너-->
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
                <li class=""><a href="#service">서비스</a></li>
                <li class=""><a href="#about">차량 정보</a></li>
                <li class="">
                <a data-toggle="modal" data-target="#myModal3" href="#">로그인</a>             
                </li>
                <li class=""><a data-toggle="modal" data-target="#myModal4" href="#">회원가입</a></li>
              </ul>
            </div>
          </div>
        </div>
      </nav>

      <!-- 로그인 타겟:모달#3 -->
     <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	 <div class="modal-dialog modal-sm">
	 <div class="modal-content">
	 <div class="modal-header">
	 <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
	 <h4 class="modal-title" id="myModalLabel">아이카 로그인 페이지</h4>
	 </div>
	 
	 <div class="modal-body">
	 <form action="./memberLoginAction.me" method="post">
	<p><input type="text" name="ID" class="form-control br-radius-zero" id="id" 
	placeholder="아이디를 입력하세요." data-rule="minlen:4" data-msg="아이디를 4자이상 입력하세요." /></p>
	<p><input type="password" name="PASSWORD" class="form-control br-radius-zero" id="password" 
	placeholder="비밀번호를 입력하세요." data-rule="minlen:6" data-msg="비밀번호를 6자이상 입력하세요." /></p>
	 <div class="modal-footer">
	 <p>
	 <button id="loginbtn" onclick="return loginbtn_click();" class="btn btn-primary">로그인</button>
	 <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#findModal1">암호찾기</button>
	 </p>
     <script>
	function loginbtn_click() {
	if (id.value.length == 0){
	alert("이름을 입력하세요.");
	return false;
	}if (password.value == ""){
	alert("면허증 번호를 입력하세요.")
	return false
					}
			}
	</script>
     </div>
     </form>
	 </div>
	 </div>
	 </div>
	 </div>
	 
	 <!-- 회원가입 모달창 -->
	 <div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	 <div class="modal-dialog modal-sm">
	 <div class="modal-content">
	 <div class="modal-header">
	 <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
	 <h4 class="modal-title" id="myModalLabel">아이카 멤버스 가입</h4>
	 </div>
	 
	 <div class="modal-body">
	 <form action="./memberJoinAction.me" method="post">
	<p><input class="form-control" name="ID" id="ID" type="text" placeholder="아이디를 입력하세요."></p>
	<p><input class="form-control" name="PASSWORD" id="PASSWORD" type="password" placeholder="비밀번호를 입력하세요. 입력해주세요."></p>
	<p><input class="form-control" name="NAME" id="NAME" type="text" placeholder="이름을 입력하세요."></p>
	<p><input class="form-control" name="EMAIL" id="EMAIL" type="email" placeholder="이메일을 입력하세요."></p>
	<p><input class="form-control" name="TEL" id="TEL" type="text" placeholder="휴대폰 번호를 입력하세요."></p>
	 <div class="modal-footer">
	 <p>
      <button id="joinbtn" onclick="return joinbtn_click();" class="btn btn-primary">회원가입<i class="fa fa-check spaceLeft"></i></button>
     <button class="btn btn-danger" type="submit">가입취소<i class="fa fa-times spaceLeft"></i></button>
	 </p>
	<script>
	function joinbtn_click() {
	if (id.value.length == 0){
	alert("이름을 입력하세요.");
	return false;
	}if (password.value == ""){
	alert("비밀번호를 입력하세요.")
	return false
					}
			}
	</script>
     </div>
     </form>
	 </div>
	 </div>
	 </div>
	 </div>
	 <form action="MemberSearchAction2.me" action="post">
	 <div class="modal fade" id="findModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
	      <div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
		<h4 class="modal-title" id="myModalLabel">비밀번호 찾기</h4>
	      </div>
	      <div class="modal-body">
			<p><input type="text" name="ID" class="form-control br-radius-zero" id="id" 
			placeholder="아이디를 입력하세요."/></p>
			<p><input type="EMAIL" name="EMAIL" class="form-control br-radius-zero" id="password" 
			placeholder="이메일을 입력하세요." /></p>
	      </div>
	      <div class="modal-footer">
			 <button id="findbtn" onclick="return findbtn_click();" class="btn btn-primary">찾기</button>
     <script>
	function findbtn_click() {
	if (id.value.length == 0){
	alert("아이디를 입력하세요.");
	return false;
	}if (email.value == ""){
	alert("이메일을 입력하세요.")
	return false
					}
			}
	</script>
	      </div>
	    </div>
	  </div>
	</div>
	</form>
	
      <div class="container">
        <div class="row">
          <div class="banner-info">
            <div class="banner-logo text-center">
              <img src="img/logo.png" class="img-responsive">
            </div>
            <div class="banner-text text-center">
              <h1 class="white">편리하고 저렴하게,</h1>
              <p>전국 어디서나 아이카를 편리하게 이용해보세요.</p>
              <!-- <a href="#contact" class="btn btn-appoint">예약하기</a> -->
            
              <a href="#service"><i class="fa fa-angle-down"></i></a><br/>
              <div class="container"> 
              <!-- 버튼 --> 
              <button id="btbt" onclick="btbt_click();" class="btn btn-primary btn-lg"> 예약하기 </button> 
				<script>
				function btbt_click() {
					alert("로그인 후 이용하실 수 있습니다.");
				}
				</script>
              </div>  
              </div>
              </div> 
              </div> 
              </div> 
            </div>

      
  </section>
  <!--/ banner-->
  <!--service-->
  <section id="service" class="section-padding">
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
            <!-- <a href="" style="color: #0cb8b6; padding-top:10px;">Know more..</a> -->
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
  </section>
  <!--/ about-->
  <!--doctor team-->
  <section id="doctor-team" class="section-padding">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h2 class="ser-title">차량 정보</h2>
          <hr class="botm-line">
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
          <div class="thumbnail">
            <img src="img/morning.png" alt="모닝" class="team-img">
            <div class="caption">
              <h3>기아</h3>
              <p>2018 모닝</p>
              <p>이용 금액 (km)당<br>
                               평일:780~　주말:1200~
              </p>

            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
          <div class="thumbnail">
            <img src="img/k3.png" alt="k3" class="team-img">
            <div class="caption">
              <h3>기아</h3>
              <p>2018 K3</p>
              
              <p>이용 금액 (km)당<br>
                               평일:1180~　주말:1690~
              </p>
              
            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
          <div class="thumbnail">
            <img src="img/k5.png" alt="..." class="team-img">
            <div class="caption">
              <h3>기아</h3>
              <p>2018 K5</p>

              <p>이용 금액 (km)당<br>
                               평일:1580~　주말:2180~
              </p>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-3 col-xs-6">
          <div class="thumbnail">
            <img src="img/sptg.png" alt="..." class="team-img">
            <div class="caption">
              <h3>기아</h3>
              <p>2018 스포티지</p>
              
              <p>이용 금액 (km)당<br>
                               평일:2410~　주말:3210~
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

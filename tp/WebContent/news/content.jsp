<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<script type="text/javascript" src="../js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<style>
body {
	background-image: url('image/back1.jpg');
	background-attachment: fixed
}

.container {
	background-color: rgba(35, 35, 35, 0.5);
}

body, a {
	color: #c9c9c9;
	font-size: 14px
}

.contentImage {
	margin: 15px;
}

.container-fluid {
	border: 1px solid #dedee0;
	padding: 10px 0;
}

.container-fluid .com_2 {
	margin: 10px 0;
}

hr {
	height: 1px;
	color: #dedee0;
	background-color: #dedee0;
	border: none
}

.contentText {
	padding: 10px;
}

ol, li {
	list-style: none;
}

.comment_form {
	margin: auto 20px;
}

.comment_content {
	margin-left: 100px;

}

.writer_img {
	text-align: center;
	margin: auto 10px;
}

</style>
</head>
<body>
	<div class="container">
		<div style="height: 50px"></div>
		<div class="newsPart">
			<div class="newsHead text-center">
				<h3>
					<span class="newsCategory">[뉴스]</span><span class="newsTitle">
						'베인글로리', ‘레이저'와 모바일 e스포츠 위한 제휴 체결</span>
				</h3>
				<br>
				<div class="topInfo text-right">
					<span class="t-writer">김홍제</span>&nbsp;<span>기자</span>&nbsp;&nbsp;
					| &nbsp; <span>기사입력 : </span><span class="newsDate">2017-12-08
						16:00</span>
				</div>
			</div>
			<hr>
			<div class="contentImage text-center">
				<img
					src="http://static.inven.co.kr/column/2017/12/08/news/i15653367474.jpg"
					style="width: 60%; height: 50%">
			</div>
			<br>
			<div class="contentText">
				<p>
					‘베인글로리’가 게이머를 위한 라이프 스타일 브랜드 ‘레이저(Razer)와 모바일 e스포츠 발전을 위한 전략적 제휴를
					체결했다고 8일 밝혔다.<br> <br> 이번 제휴를 통해 오는 10일 미국 뉴욕에 위치한
					마이크로소프트 스토어에서 게임에 특화된 ‘레이저’의 첫 스마트폰으로 베인글로리 오프라인 이벤트가 진행된다. 베인글로리
					오프라인 이벤트는 ‘트위치 ’ 레이저 페이지를 통해 실시간으로 스트리밍 될 예정이며, 매장 방문객은 무료로 관람할 수
					있다.<br> <br> 오는 14일부터 나흘간 싱가포르에서 개최되는 ‘베인글로리 월드 챔피언십’
					타이틀도 ‘레이저 2017 베인글로리 월드챔피언십’으로 확정됐다. ‘레이저 2017 베인글로리 월드 챔피언십’에서는
					그동안 베일에 쌓여있던 베인글로리의 ‘5V5 모드’가 최초 공개될 예정이다.<br> <br> ‘5V5
					모드’는 300만 개 폴리곤과 미니언, 영웅 등 200가지가 넘는 애니메이션이 가미된 오브젝트가 사용되었으며, 유저들은
					초당 120프레임 화질의 '베인글로리'를 즐길 수 있다.<br> <br> 슈퍼이블 메가코프의 CEO
					크리스티안 세거스트라일은 “‘레이저’와 우리는 게이머에게 최고의 경험을 선사하고자 하는 동일한 신념을 가지고 있다”며
					“이번 전략적 제휴를 통해 보다 나은 게임환경을 제공하도록 최선을 다하겠다”고 전했다.<br> <br>
					레이저의 CEO 겸 공동 창업자 민리앙 탄은 “ ‘레이저’에서 출시 된 게이밍 스마트폰은 120Hz UltraMotion
					디스플레이와 Dolby Atmos 및 THX 인증 오디오 하드웨어를 사용 해 베인글로리의 프레임 속도와 오디오 기능을
					완벽하게 구현할 수 있을 것”이라며 “전세계 게이머들이 즐기는 ’베인글로리’와 제휴를 체결하게 되어 매우 기쁘다”고
					말했다.<br> <br> 한편, 베인글로리는 최근 새로운 영웅 ‘바리야’를 추가하고, 새 시즌 난투
					경기 ‘맹공전’을 선보이는 등 다양한 업데이트를 진행했다.
				</p>
				<br> <span class="b-writer">김홍제(koer@inven.co.kr)</span>
			</div>
			<hr>
		</div>

		<div class="container-fluid col-md-12 ">
			<div class="comment_Total col-md-12">
				<span class="com_title">Comment</span>
				<textarea class="com_2 form-control text-left" placeholder="내용을 입력하세요." rows="3"></textarea>
				<button class="btn btn-primary btn-sm pull-right" type="button">댓글
					달기</button>
			</div>
		</div>

		<div class="container comment_list col-md-12">
			<div style="height: 40px"></div>
			<c:forEach var="i" begin="1" end="4">
				<div class="comment_form">
					<div class="writer_img pull-left">
						<img src="image/user.png">
					</div>
					<div class="comment_content">
						<div class="writer_info">
							<div class="w_nickName" style="color: #3689d1">ybr0971</div>
							<div class="w_time" style="font-size: 13px" >2017.09.21 00:27</div>
						</div>
						<div class="comment_body">
							<p>
								<br>감사합니다. 잘 쓰겠습니다. :-) <br> 감사합니다. 잘 쓰겠습니다. :-) <br>감사합니다.
								잘 쓰겠습니다. :-)
							</p>
						</div>
					</div>
				</div>
				<hr>
			</c:forEach>
			<center>
				<button class="btn btn-primary btn-block moreBtn" type="button">더보기</button>
			</center>
			
			<div style="height: 50px"></div>
		</div>
	</div>
</body>
</html>
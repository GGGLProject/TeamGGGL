<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="js/moment.js"></script>
<script type="text/javascript" src="js/moment-timezone-with-data.js"></script>
<script type="text/javascript" src="js/timer.js"></script>
<style type="text/css">
#img_a {
	width: 400px;
	height: 300px;
}

.start_box h3 {
	font-size: 3em;
	margin: 35px 0;
	text-transform: uppercase;
	letter-spacing: 4px;
	color: #fff;
	font-weight: 800;
	text-shadow: 2px 2px 3px rgb(12, 12, 12);
}

.timer {
	font-size: 80px;
	font-weight: 600;
	display: inline-block;
	vertical-align: top;
	color: #fff;
}

.clock .column {
	float: left;
	width: 20%;
}

.clock {
	margin-left: 16%;
	margin-top: 20px;
}

.main_teamN {
	font-size: 24px;
}

.clock .column .text {
	font-size: 14px;
}
</style>
</head>
<body>
	<div class="row">
		<div class="col-md-12 padding-0" style="background: url(gameMain/image/maingif_1.gif) no repeat center center">
			<img src="gameMain/image/maingif_1.gif" width="100%">
		</div>
	</div>

	<!-- Container (The Match Section) -->
	<div class="bg-1">
		<div class="container text-center">
			<c:set var="doneLoop" value="false" />
			<c:forEach var="vo" items="${list__1h }" varStatus="status">
				<c:if test="${not doneLoop}">
					<div class="start_box">
						<h3>THE BIG MATCH WILL START</h3>
					</div>
					<p class="text-center">
						<h2>
							<strong>${vo.match_name }</strong>
						</h2>
					</p><br>
					<div class="row">
						<div class="col-sm-4">
							<p class="text-center main_teamN">
								<strong>${vo.home_name }</strong>
							</p><br> 
							<a href="#demo" data-toggle="collapse"> 
								<img src="${vo.tvo.team_icon }" alt="Random Name" width="255" height="255">
							</a>
							<div id="demo" class="collapse">
								<p>홈팀 정보</p>
								<p>언제부터 시작되서 계속 우승했고 어쩌고 저쩌고~~~~~~</p>
								<p>언제부터 시작되서 계속 우승했고 어쩌고 저쩌고~~~~~~</p>
								<p>언제부터 시작되서 계속 우승했고 어쩌고 저쩌고~~~~~~</p>
							</div>
						</div>
						<div class="col-sm-4">
							<h4>
								<strong>${vo.match_day }</strong>&nbsp;<strong>${vo.match_time }</strong>
							</h4><br> 
							<img src="https://static.comicvine.com/uploads/original/11111/111119495/3299555-kickass12.png"
								alt="Random Name" width="155" height="155" style="margin-top: 30px">
						</div>
						<div class="col-sm-4">
							<p class="text-center main_teamN">
								<strong>${vo.away_name }</strong>
							</p>
							<br> <a href="#demo3" data-toggle="collapse"> <img
								src="${list__1a[status.index].away_icon }" alt="Random Name"
								width="255" height="255">
							</a>
							<div id="demo3" class="collapse">
								<p>어웨이팀 정보</p>
								<p>언제부터 시작되서 계속 우승했고 어쩌고 저쩌고~~~~~~</p>
								<p>언제부터 시작되서 계속 우승했고 어쩌고 저쩌고~~~~~~</p>
								<p>언제부터 시작되서 계속 우승했고 어쩌고 저쩌고~~~~~~</p>
							</div>
						</div>
					</div>
					<c:if test="${status.count == 1}">
						<c:set var="doneLoop" value="true" />
					</c:if>
				</c:if>
			</c:forEach>
			<div class="wrapper agileinfo text-center">
				<div class="clock">
					<div class="column w3l days" style="display: inline-block;">
						<div class="timer w3" id="days">31</div>
						<div class="aits text">DAYS</div>
					</div>
					<div class="column w3">
						<div class="timer w3layouts" id="hours">24</div>
						<div class="agileits text">HOURS</div>
					</div>

					<div class="column wthree">
						<div class="timer w3las" id="minutes">60</div>
						<div class="text aits">MINUTES</div>
					</div>

					<div class="column siteliga">
						<div class="timer stuoyal3w" id="seconds">60</div>
						<div class="text wthree">SECONDS</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>
	<div>
		<div class="container">
			<h3 class="text-center">e-Sport NEWS</h3>
			<p class="text-center">최신 이스포츠 뉴스입니다</p>

			<div class="row text-center">
				<c:forEach var="vo" items="${rlist }">
					<div class="col-sm-3">
						<div class="thumbnail"
							style="max-height: 600px; position: relative; vertical-align: middle">
							<a href="news_detail.do?no=${vo.news_no }"><img
								class="img-responsive" src="gameNews/image/${vo.news_no }.jpg"
								id="img_a"></a> <br>
							<p>
								<a href="news_detail.do?no=${vo.news_no }">${vo.news_title }</a>
							</p>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<!-- Video Section -->
	<div class="bg-1">
		<div class="text-center container">
			<h3 class="margin">League of Legends Streaming</h3>
			<br>
			<div class="col-sm-4">
				<p>KT T1 Faker Live Stream LOL - 27/12 Translation EN | Hide on
					bush | SK텔레콤 T1 / SK Telecom T1</p>
				<iframe width="260" src="https://www.youtube.com/embed/ot3wAWjCVsM"
					frameborder="0" gesture="media" allow="encrypted-media"
					allowfullscreen></iframe>
			</div>
			<div class="col-sm-4">
				<p>SKT T1 Bang Live Stream LOL 27/12 | Best ADC | SK텔레콤 T1 / SK
					Telecom T</p>
				<iframe width="260" src="https://www.youtube.com/embed/ExAOyavrXeA"
					frameborder="0" gesture="media" allow="encrypted-media"
					allowfullscreen></iframe>
			</div>
			<div class="col-sm-4">
				<p>Imaqtpie Live Stream LoL 24/7 | Best adc NA | Funny LoL</p>
				<iframe width="260" src="https://www.youtube.com/embed/mjxo1E6xlRM"
					frameborder="0" gesture="media" allow="encrypted-media"
					allowfullscreen></iframe>
			</div>
		</div>
	</div>
	<!-- Container (Event Section) -->
	<div>
		<div class="container">
			<div class="row">
				<h3 class="text-center">Event</h3>
				<p class="text-center">
					<em>대회에 참여하여 상금을 쟁취하세요!</em>
				</p>
				<div class="row text-center">
					<c:forEach var="vo" items="${elist }">
						<div class="col-sm-3">
							<div class="thumbnail"
								style="max-height: 600px; position: relative; vertical-align: middle">
								<a href="event_content.do?no=${vo.event_no }"><img
									class="img-responsive" src="${vo.event_image }" id="img_a"></a>
								<br>
								<p>
									<a href="event_content.do?no=${vo.event_no }">${vo.event_title }</a>
								</p>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
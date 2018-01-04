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
</head>
<body>
	<!-- <div class="row">
		<div class="col-md-12 padding-0"
			style="background: url(gameMain/image/maingif_1.gif) no repeat center center">
			<img src="gameMain/image/maingif_1.gif" width="100%">
		</div>
	</div> -->

	<!-- Container (The Match Section) -->
	<div class="bg-2">
		<div class="container text-center" style="height:900px"> 
			<c:set var="doneLoop" value="false" />
			<c:forEach var="vo" items="${list__2h }" varStatus="status">
				<c:if test="${not doneLoop}">
					<div class="start_box">
						<h3>THE BIG MATCH WILL START</h3>
					</div>
					<p class="text-center">
					<h2>
						<strong>${vo.match_name }</strong>
					</h2>
					</p>
					<br>
					<div class="row">
						<div class="col-sm-4">
							<p class="text-center main_teamN">
								<strong>${vo.home_name }</strong>
							</p>
							<br> <a href="#demo" data-toggle="collapse"> <img
								src="${vo.tvo.team_icon }" alt="Random Name" width="295"
								height="260">
							</a>
							<div id="demo" class="collapse">
								<p style="margin-top: 30px">${vo.home_name }팀 선수</p>
								<div class="detail_player_list">
									<c:set var="doneLoop" value="false" />
									<c:forEach var="vo" items="${h_list }" varStatus="s">
										<c:if test="${not doneLoop}">
											<div class="player_Img" style="float: left; margin-left: 5px">
												<img src="${vo.pvo.player_pic }"
													class="detail-player-list__img"> <span>${vo.pvo.player_name }</span>
											</div>
											<c:if test="${s.count == 5}">
												<c:set var="doneLoop" value="true" />
											</c:if>
										</c:if>
									</c:forEach>
								</div>
							</div>

						</div>
						<div class="col-sm-4">
							<h4>
								<strong>${list__2a[status.index].match_day }</strong>&nbsp;<strong>${list__2a[status.index].match_time }</strong>
							</h4>
							<br> <img
								src="gameMain/image/vs_icon.png"
								alt="Random Name" width="155" height="155"
								style="margin-top: 30px">
						</div>
						<div class="col-sm-4">
							<p class="text-center main_teamN">
								<strong>${list__2a[status.index].away_name }</strong>
							</p>
							<br> <a href="#demo3" data-toggle="collapse"> <img
								src="${list__2a[status.index].away_icon }" alt="Random Name"
								width="295" height="260">
							</a>
							<div id="demo3" class="collapse">
								<p style="margin-top: 30px">${list__2a[status.index].away_name }
									팀 선수</p>
								<div class="detail_player_list">
									<c:set var="doneLoop" value="false" />
									<c:forEach var="vo" items="${a_list }" varStatus="s">
										<c:if test="${not doneLoop}">
											<div class="player_Img" style="float: left; margin-left: 5px">
												<img src="${vo.pvo.player_pic }"
													class="detail-player-list__img"> <br> <span>${vo.pvo.player_name }</span>
											</div>
											<c:if test="${s.count == 5}">
												<c:set var="doneLoop" value="true" />
											</c:if>
										</c:if>
									</c:forEach>
								</div>
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
	<div class="bg-1">
		<div class="container">
			<div class="news_box">
				<h3 class="text-center" style="font-size:40px; margin-bottom: 25px; margin-top: -10px;">E-Sports 인기 뉴스</h3>
			</div>
			<p class="text-center" style="margin-bottom: 40px;">
				<a href="news_main.do" style="font-size: 18px; color: white; font-weight: bold;">뉴스 더 보기</a>
			</p>

			<div class="row text-center">
				<c:forEach var="vo" items="${rlist }">
					<div class="col-sm-3">
						<div class="thumbnail"
							style="max-height: 600px; position: relative; vertical-align: middle">
							<a href="news_detail.do?no=${vo.news_no }"> <img
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
	<div class="bg-3">
		<div class="text-center container">
			<div class="video_box">
				<h3 class="text-center" style="font-size: 40px; margin-bottom: 60px;">경기 하이라이트 영상</h3>
			</div>
			<br>
			<c:set var="doneLoop" value="false" />
			<c:forEach var="vo" items="${list }" varStatus="status">
				<c:if test="${not doneLoop}">
					<div class="col-sm-4 main_video_box">
						<iframe class="main_video" width="360" height="220"
							src="https://www.youtube.com/embed/${vo.match_videokey }"
							frameborder="0" gesture="media" allow="encrypted-media"
							allowfullscreen></iframe>
						<h4 style="margin-top: 20px; color: white;">
							<p>${vo.match_name }</p>
						</h4>
					</div>
					<c:if test="${status.count == 3}">
						<c:set var="doneLoop" value="true" />
					</c:if>
				</c:if>
			</c:forEach>
		</div>
	</div>
	<!-- Container (Event Section) -->
	<div class="bg-1">
		<div class="container">
			<div class="row">
				<div class="event_box">
					<h3 class="text-center" style="font-size: 45px; margin-bottom: 30px; margin-top: -10px;">Event</h3>
				</div>
				<p class="text-center" style="font-size: 17px; color: white; margin-bottom: 40px;">
					대회에 참여하여 상금을 쟁취하세요!
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
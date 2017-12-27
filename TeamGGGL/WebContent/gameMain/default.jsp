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
<style type="text/css">
#img_a {
	width: 400px;
	height: 300px;
}
</style>
</head>
<body>
	<!-- Slideshow -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
			<li data-target="#myCarousel" data-slide-to="4"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="gameMain/image/lol-1.jpg" alt="New York" width="1200"
					height="700">
			</div>
			<div class="item">
				<img src="gameMain/image/lol-2.jpg" alt="New York" width="1200"
					height="700">
			</div>
			<div class="item">
				<img src="gameMain/image/lol-3.jpg" alt="New York" width="1200"
					height="700">
			</div>
			<div class="item">
				<img src="gameMain/image/lol-4.jpg" alt="New York" width="1200"
					height="700">
			</div>
			<div class="item">
				<img src="gameMain/image/lol-5.jpg" alt="New York" width="1200"
					height="700">
			</div>

		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<!-- Container (The Match Section) -->
	<div class="bg-1">
		<div class="container text-center">
			<h1>THE BIG MATCH WILL START</h1>
			<p>
				<em>Coming soon...</em>
			</p>
			<br>
			<div class="row">
				<div class="col-sm-4">
					<p class="text-center">
						<strong>FNATIC</strong><br>HOME TEAM
					</p>
					<br> <a href="#demo" data-toggle="collapse"> <img
						src="https://www.fnatic.com/build/images/logos/fnatic.png"
						alt="Random Name" width="255" height="255">
					</a>
					<div id="demo" class="collapse">
						<p>Fnatic Gaming</p>
						<p>언제부터 시작되서 계속 우승했고 어쩌고 저쩌고~~~~~~</p>
						<p>언제부터 시작되서 계속 우승했고 어쩌고 저쩌고~~~~~~</p>
						<p>언제부터 시작되서 계속 우승했고 어쩌고 저쩌고~~~~~~</p>
					</div>
				</div>
				<div class="col-sm-4">
					<h5>
						<p class="text-center">
							<strong>12월 5일 17시 30분</strong>
						</p>
					</h5>
					<br>
					<div>
						<p>CSGOROLL Asian Masters</p>
					</div>
					<div>가능하면 여기 시간 카운터가 들어간다면 정말 멋질텐데</div>
					<img
						src="https://static.comicvine.com/uploads/original/11111/111119495/3299555-kickass12.png"
						alt="Random Name" width="155" height="155">
				</div>
				<div class="col-sm-4">
					<p class="text-center">
						<strong>Complexity</strong><br>AWAY TEAM
					</p>
					<br> <a href="#demo3" data-toggle="collapse"> <img
						src="http://wiki.teamliquid.net/commons/images/thumb/f/f4/Col_big_logo.png/600px-Col_big_logo.png"
						alt="Random Name" width="255" height="255">
					</a>
					<div id="demo3" class="collapse">
						<p>언제부터 시작되서 계속 우승했고 어쩌고 저쩌고~~~~~~</p>
						<p>언제부터 시작되서 계속 우승했고 어쩌고 저쩌고~~~~~~</p>
						<p>언제부터 시작되서 계속 우승했고 어쩌고 저쩌고~~~~~~</p>
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
				<p> KT T1 Faker Live Stream LOL - 27/12 Translation EN | Hide on bush | SK텔레콤 T1 / SK Telecom T1</p>
				<iframe width="260" src="https://www.youtube.com/embed/ot3wAWjCVsM"
					frameborder="0" gesture="media" allow="encrypted-media"
					allowfullscreen></iframe>
			</div>
			<div class="col-sm-4">
				<p>SKT T1 Bang Live Stream LOL 27/12 | Best ADC | SK텔레콤 T1 / SK Telecom T</p>
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
								class="img-responsive" src="${vo.event_image }"
								id="img_a"></a> <br>
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
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
.search_p {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	word-wrap: normal;
}

.news_box, .event_box {
	margin-bottom: 50px;
}

.news_box h1, .event_box h1 {
	color: white;
	font-weight: bold;
	font-size: 50px;
	margin-bottom: 20px;
}

.news_box h4, .event_box h4 {
	color: white;
	font-size: 25px;
}

.thumb_search {
	max-height: 600px; 
	position: relative; 
	vertical-align: middle; 
	padding: 10px;
}

.thumb_search:hover { 
	opacity: 0.75;
}

body {
	background-image: url('image/backimgg_2.jpg');
	background-attachment: fixed;
	background-size: 2000px 1200px;
	margin-top: 70px;
}
.bodybody {
	background-color: rgba(25,25,25, 0.6);
}
</style>
</head>
<body>
<div class="bodybody">
	<div style="height: 100px"></div>
	<div class="container-fluid" style="margin: 30px 50px;">
		<div class="news_box">
			<h1 class="text-center">NEWS</h1>
			<h4 class="text-center">'${key }'에 대한 검색 결과</h4>
		</div>

		<div class="row text-center">
		<c:if test="${rcount == 0 }">
		<span style="color:white; font-size:30px">"검색 결과가 없습니다"</span>
		</c:if>
		<c:if test="${rcount != 0 }">
			<c:forEach var="vo" items="${rlist }">
				<div class="col-sm-3">
					<div class="thumbnail thumb_search">
						<a href="news_detail.do?no=${vo.news_no }"> 
							<img class="img-responsive" src="gameNews/image/${vo.news_no }.jpg" id="img_a">
						</a><br>
						<p class="search_p">
							<a href="news_detail.do?no=${vo.news_no }">${vo.news_title }</a>
						</p>
					</div>
				</div>
			</c:forEach>
			</c:if>
		</div>
		<br>
		<hr>
		<br><br>

		<div class="row">
			<div class="event_box">
				<h1 class="text-center">Event</h1>
				<h4 class="text-center">'${key }'에 대한 검색 결과</h4>
			</div>
			
			<div class="row text-center">
			<c:if test="${ecount == 0 }">
			<span style="color:white; font-size:30px">"검색 결과가 없습니다"</span>
			</c:if>
			<c:if test="${ecount != 0 }">
				<c:forEach var="vo" items="${elist }">
					<div class="col-sm-3">
						<div class="thumbnail thumb_search">
							<a href="event_content.do?no=${vo.event_no }">
								<img class="img-responsive" src="${vo.event_image }" id="img_a">
							</a><br>
							<p>
								<a href="event_content.do?no=${vo.event_no }">${vo.event_title }</a>
							</p>
						</div>
					</div>
				</c:forEach>
				</c:if>
			</div>
		</div>
	</div>
	</div>
</body>
</html>
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
</head>
<body>
	<div class="news_box">
		<h3 class="text-center">E스포츠 뉴스 검색</h3>
	</div>
	<c:if test=""></c:if>
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

	<div class="row">
		<div class="event_box">
			<h3 class="text-center">Event 검색</h3>
		</div>
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




</body>
</html>
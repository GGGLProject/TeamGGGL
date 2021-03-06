<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>LOL 뉴스 - GG GL</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/newsMain.css" rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 	<div class="container_t"> -->
	<div class="container">
		<h1 class="news_head">
			<strong>NEWS</strong>
		</h1>
		<form method="post" class="form-inline text-center"
			style="padding: 10px;">
			<div class="form-group">
				<select class="form-control" name="category">
					<option value="news">뉴스</option>
					<option value="cover">취재</option>
					<option value="info">정보</option>
					<option value="patch">패치</option>
					<option value="interview">인터뷰</option>
					<option value="guide">가이드</option>
					<option value="target">공략</option>
					<option value="column">칼럼</option>
					<option value="planning">기획</option>
				</select>
			</div>
			<div class="form-group">
				<input type="text" class="form-control"
					placeholder="${newsTotalCount }개 등록됨 (2017-05-01 ~ 2017-12-30)"
					size=70 readonly>
			</div>
			<div class="form-group">
				<input type="text" class="form-control" placeholder="뉴스 검색" size=30>
			</div>
			<input type=button class="btn btn-default" value="검색">
		</form>

		<div style="height: 10px"></div>

		<div class="row">
			<div class="hotNews col-sm-12 col-md-6">
				<div class="thumbnail">
					<h5 class="hotNews_underline" style="margin: 0; padding: 10px">
						<strong><a href="#">HOT 뉴스</a></strong>
					</h5>
					<ul>
						<c:forEach var="i" begin="1" end="3">
							<li>&nbsp;&nbsp; <a href="#"><span>고려대 모상현, "지난
										시즌 아쉬워.. 이번엔 꼭 우승까지"</span></a></li>
							<li>&nbsp;&nbsp; <a href="#"><span>서울 다이너스티, 뉴욕과
										프리시즌 최고의 명승부 끝에 승리</span></a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="updateNews col-sm-12 col-md-6">
				<div class="thumbnail">
					<h5 class="updateNews_underline" style="margin: 0; padding: 10px">
						<strong><a href="#">이달의 NEW UPDATE 뉴스</a></strong>
					</h5>
					<ul>
						<c:forEach var="i" begin="1" end="3">
							<li>&nbsp;&nbsp; <a href="#"><span>디펜딩 챔피언 '우지',
										'프레이'의 3연 조이 꺾고 결승 진출</span></a></li>
							<li>&nbsp;&nbsp; <a href="#"><span>러스 퓨얼, 플로리다
										메이헴에 1패 후 3연승 거둬</span></a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
		<div style="height: 10px"></div>
		<div class="newsList">
			<c:forEach var="vo" items="${list }">
				<div class="row">
					<div class="row_img col-sm-3 col-md-2">
						<div class="news_img">
							<a href="news_detail.do?no=${vo.news_no }"> <img
								src="gameNews/image/${vo.news_no }.jpg" width="100%">
							</a>
						</div>
					</div>
					<div class="row_content col-sm-9 col-md-10">
						<div class="row_newsTitle">
							<h5>
								<strong class="news_title"> <a
									href="news_detail.do?no=${vo.news_no }"> ${vo.news_title }
								</a>
								</strong>
							</h5>
						</div>
						<span class="news_writer">${vo.news_name}</span>&nbsp;&nbsp;|&nbsp;&nbsp;<span
							class="news_date"><fmt:formatDate
								value="${vo.news_regdate }" pattern="yyyy-MM-dd" /></span>
						<div class="news_content">
							<p>
								<a href="news_detail.do?no=${vo.news_no }"> <c:out
										value="${fn:substring(vo.news_content,0,240)}" />....
								</a>
							</p>
						</div>
					</div>
				</div>
				<hr>
			</c:forEach>
		</div>

		<div style="height: 30px"></div>
		<!-- .pageNum-->
		<center>
			<div class="pageNum">
				<ul class="pagination">

					<li class="page-item"><a
						href="news_main.do?page=${curpage>1?curpage-1:curpage }"></a>이전</li>
					<li class="page-item"><a
						href="news_main.do?page=${curpage<totalpage?curpage+1:curpage }"></a>다음</li>

				</ul>
				${curpage } page / ${totalpage } pages
			</div>
		</center>
		<!-- /.pageNum-->
	</div>
	<!-- /.container -->
	<!-- 	</div> -->
</body>
</html>
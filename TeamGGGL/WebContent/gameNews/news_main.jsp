<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
	$(function() {
		$('#category').change(function() {
			$('#frm').submit();
		});
	});
</script>
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
<div class="bodybody">
	<!-- 	<div class="container_t"> -->
	<div class="container">
		<h1 class="news_head">
			<strong>NEWS</strong>
		</h1>
		<form method="post" class="form-inline text-center"
			action="news_main.do" style="padding: 10px;" id="frm">

			<div class="form-group">

				<select class="form-control" name="category" id="category">
					<option>전체</option>
					<option>뉴스</option>
					<option>취재</option>
					<option>정보</option>
					<option>패치</option>
					<option>인터뷰</option>
					<option>가이드</option>
					<option>공략</option>
					<option>칼럼</option>
					<option>기획</option>
				</select>
			</div>
			<div class="form-group">
				<input type="text" class="form-control"
					placeholder="${newsTotalCount }개 등록됨 (2017-05-01 ~ 2017-12-30)"
					size=130 readonly>
			</div>
		</form>

		<div style="height: 10px"></div>

		<div class="row">
			<div class="hotNews col-sm-12 col-md-6">
				<div class="thumbnail">
					<h5 class="hotNews_underline" style="margin: 0; padding: 10px">
						<strong><a href="#">HOT 뉴스</a></strong>
					</h5>
					<ul>
						<c:forEach var="rlist" items="${rlist }">
							<li>&nbsp;&nbsp; <a
								href="news_detail.do?no=${rlist.news_no }"><span>${rlist.news_title }</span></a></li>
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
						<c:forEach var="ulist" items="${ulist }">
							<li>&nbsp;&nbsp; <a
								href="news_detail.do?no=${ulist.news_no }"><span>${ulist.news_title }</span></a></li>

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
								<strong class="news_title"> 
									<a href="news_detail.do?no=${vo.news_no }"> ${vo.news_title }</a>&nbsp;&nbsp;
									<c:if test="${vo.count!=0 }">
              							(${vo.count })
             						</c:if>
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

					
				
				</ul>
				<br>
				
				<ul class="pagination pagination-centered">
						<li><a href="news_main.do?page=${curpage<11?curpage:curpage-10}">&laquo;</a></li>
						<li><a href="news_main.do?page=${curpage>1?curpage-1:curpage }">&lt;</span></a></li>
						<fmt:parseNumber var="num" value="${curpage/10}" integerOnly="true" />
						<c:set var="num" value="${num<=0?1:num*10}" />
						<c:forEach var="i" begin="${num}" end="${num==1?num+8:num+9}">
							<c:choose>
								<c:when test="${i > totalpage }"></c:when>
								<c:when test="${i==curpage}">
									<li class="active"><a href="news_main.do?page=${i}">${i}</a></li>
								</c:when>
								<c:when test="${i <= totalpage}">
									<li><a href="news_main.do?page=${i }">${i}</a></li>
								</c:when>
							</c:choose>
						</c:forEach>
							<li><a href="news_main.do?page=${curpage<totalpage?curpage+1:curpage }">&gt;</a></li>
						<li><a href="news_main.do?page=${curpage<=totalpage-10?curpage+10:curpage}">&raquo;</a></li>
					</ul>
			</div>
		</center>
		<!-- /.pageNum-->
	</div>
	<!-- /.container -->
	<!-- 	</div> -->
	</div>
</body>
</html>
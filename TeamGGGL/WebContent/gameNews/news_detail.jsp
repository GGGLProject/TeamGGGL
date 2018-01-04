<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>LOL 뉴스 - GG GL</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/newsDetail.css" rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function() {
	var u = 0;
	$('.modifyBtn').click(function() {
		var no = $(this).attr("value");
		var type = $(this).text();
		if (type == '수정') {
			$('#up' + no).show();
			$(this).text("취소");
		} else {
			$('#up' + no).hide();
			$(this).text("수정");
		}
	});
});
</script>
</head>
<body>
	<div class="container">
		<div class="newsPart">
			<div class="newsHead text-center">
				<h2>
					<span class="newsCategory">[ ${vo.news_category } ]</span><span
						class="newsTitle"> ${vo.news_title }</span>
				</h2>
				<br>
				<div class="topInfo text-right">
					<span class="t-writer">${vo.news_name }</span>&nbsp;<span>기자</span>&nbsp;&nbsp;
					| &nbsp; <span>기사입력 : </span>
					<span class="newsDate"> 
						<fmt:formatDate value="${vo.news_regdate }" pattern="yyyy-MM-dd" />
					</span>
				</div>
			</div>
			<hr>
			<div class="contentImage text-center">
				<img src="gameNews/image/${vo.news_no }.jpg" style="width: 60%; height: 50%">
			</div>
			<br>
			<div class="contentText" style="word-break: normal">
				${vo.news_content }
				<div class="b-writer">
					<span>${vo.news_name }</span>
				</div>
			</div>
			<hr>
		</div>

		<div class="container-fluid-news container-fluid col-md-12 ">
			<div class="comment_Total col-md-12">
				<h4>
					<span class="com_title"><b>Comment</b></span>
				</h4>
				<div class="reply_write">
					<form method=post action="news_reply_new_insert.do">
						<input type="hidden" name=bno value="${vo.news_no }">
						<textarea rows="3" class="com_2 form-control text-left" name="msg"></textarea>
						<input class="btn btn-primary btn-sm pull-right" type=submit
							value="댓글달기">
					</form>
				</div>
			</div>
		</div>

		<div id="comment_nav_menu">
			<div class="row commentrow">
				<div class="comment_list col-md-12">
					<!-- COMMENT 반복문 -->
					<div style="height: 40px"></div>
					<c:forEach var="rvo" items="${replylist }">
						<div class="comment_form">
							<div class="pull-right">
								<c:if test="${sessionScope.email == rvo.id}">
									<button class="btn btn-primary modifyBtn" value="${rvo.no }">수정</button>
									<div style="height: 10px"></div>
									<!-- <button	class="btn btn-primary" id="modifyBtn1" sytle="display:none">취소</button> -->
									<form method=post action="news_reply_delete.do">
										<input type="hidden" name=bno value="${vo.news_no }">
										<input type="hidden" name=no value="${rvo.no }">
										<button class="btn btn-primary" id="deleteBtn">삭제</button>
									</form>
								</c:if>
							</div>
							<div class="comment_content" style="margin-left : 5px;">
								<div class="writer_info">
									<div class="writer_img pull-left">
										<img src="image/co_user.png">
									</div>
									<div class="w_nickName">
										<strong>${rvo.name }</strong>
									</div>
									<div class="w_time" style="font-size: 12px; color: #9f9fa0">
										<fmt:formatDate value="${rvo.regdate }" pattern="yyyy-MM-dd hh:mm:ss" />
									</div>
								</div>
								<div class="comment_body">
									<p>${rvo.msg }</p>
								</div>
							</div>
							<div class="" id="up${rvo.no }" style="display: none">
								<form method=post action="news_reply_update.do">
									<input type="hidden" name=bno value="${vo.news_no }"> <input
										type="hidden" name=no value="${rvo.no }">
									<textarea rows="3" class="com_2 form-control text-left"
										style="float: left" name="msg">${rvo.msg }</textarea>
									&nbsp;&nbsp; 
									<input class="btn btn-primary btn-sm pull-right" type=submit value="수정하기">
								</form>
							</div>

						</div>

					</c:forEach>
					<%-- <center>
						<button class="btn btn-primary btn-block moreBtn" type="button">더보기
							▼</button>
					</center> --%>
					<div style="height: 40px"></div>
				</div>
				<br>
			</div>
		</div>

		<div style="height: 40px"></div>
	</div>
	<br>

</body>
</html>
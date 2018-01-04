<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>경기 기록 - GG GL</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/gameDetail.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
<body class="body">
	<!-- Container (The Match Section) -->
	<div id="band" class="container">
		<c:set var="doneLoop" value="false" />
		<c:forEach var="vo" items="${h_list }" varStatus="status">
			<c:if test="${not doneLoop}">
				<h2 class="text-center" style="font-size: 40px;">${vo.match_name }</h2>
				<p class="text-center">
					<strong>${vo.match_day }</strong>&nbsp;<strong>${vo.match_time }</strong>
				</p>
				<br>
				<div class="team_vs">
					<div class="row">
						<div class="col-sm-3 text-center">
							<p>
								<strong class="h_teamName">${vo.home_name }</strong><br>
							</p>
							<br> 
							<a href="#demo" data-toggle="collapse"> 
								<img src="${vo.tvo.team_icon }" alt="Random Name" width="180" height="180">
							</a>
						</div>

						<c:choose>
							<c:when test="${vo.home_score > vo.away_score }">
								<div class="col-sm-2 text-center">
									<h1 style="color: #FF4848; font-weight: bold;">${vo.home_score }</h1>
								</div>
								<div class="col-sm-2 text-center">
									<div>
										<h2 style="margin: 10px 0">Game Over</h2>
									</div>
									<img src="gameDetail/image/vs_icon.png" alt="Random Name"
										width="155" height="155" style="margin-top: 30px;">
								</div>
								<div class="col-sm-2 text-center">
									<h1 style="color: #0054FF; font-weight: bold;">${vo.away_score }</h1>
								</div>
							</c:when>

							<c:otherwise>
								<div class="col-sm-2 text-center">
									<h1 style="color: #FF4848; font-weight: bold;">${vo.home_score }</h1>
								</div>
								<div class="col-sm-2 text-center">
									<div>
										<h2 style="margin: 10px 0">Game Over</h2>
									</div>
									<img src="gameDetail/image/vs_icon.png" alt="Random Name"
										width="155" height="155" style="margin-top: 30px;">
								</div>
								<div class="col-sm-2 text-center">
									<h1 style="color: #0054FF; font-weight: bold;">${vo.away_score }</h1>
								</div>
							</c:otherwise>
						</c:choose>

						<div class="col-sm-3 text-center">
							<p>
								<strong class="a_teamName">${vo.away_name }</strong><br>
							</p>
							<br>
							<a href="#demo3" data-toggle="collapse"> 
								<img src="${a_list[status.index].away_icon }" alt="Random Name"	width="180" height="180">
							</a>
						</div>

					</div>
				</div>
				<c:if test="${status.count == 1}">
					<c:set var="doneLoop" value="true" />
				</c:if>
			</c:if>
		</c:forEach>

		<div class="player_vs text-center">
			<c:set var="doneLoop" value="false" />
			<c:forEach var="vo" items="${h_list }" varStatus="status">
				<c:if test="${not doneLoop}">
					<div class="row">
						<div class="col-sm-1"></div>
						<div class="col-sm-3 p_img">
							<img src="${vo.pvo.player_pic }" width="250">
						</div>

						<div class="col-sm-1 h_player1name">
							<div class="player1name" style="font-size: 20px; margin-top: 100px; text-align: left; margin-left: -31px">
								${vo.pvo.player_name }<br>
							</div>
						</div>

						<div class="col-sm-2"></div>
						<div class="col-sm-1">
							<div class="a_player1name" style="font-size: 20px; margin-top: 100px; text-align: right; padding-right: 5px">
								${a_list[status.index].a_player_name }<br>
							</div>
						</div>
						<div class="col-sm-3 p_img">
							<img src="${a_list[status.index].a_player_pic }" width="250">
						</div>
						<div class="col-sm-1"></div>
					</div>
					<c:if test="${status.count == 5}">
						<c:set var="doneLoop" value="true" />
					</c:if>
				</c:if>
			</c:forEach>
		</div>

		<h3 class="text-center">
			<strong>경기 영상</strong>
		</h3>
		<hr>
		<div class="col-lg-12 text-center">
			<c:set var="doneLoop" value="false" />
			<c:forEach var="vo" items="${h_list }" varStatus="status">
				<c:if test="${not doneLoop}">
					<div class="hi">
						<iframe width="800" height="450" src="https://www.youtube.com/embed/${vo.match_videokey }"
							frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
					</div>
					<c:if test="${status.count == 1}">
						<c:set var="doneLoop" value="true" />
					</c:if>
				</c:if>
			</c:forEach>
		</div>

		<div class="container-fluid-game container-fluid col-md-12 ">
			<div class="comment_Total col-md-12">
				<h4>
					<span class="com_title"><b>Comment</b></span>
				</h4>
				<div class="reply_write">
					<form method=post action="match_reply_new_insert.do">
						<input type="hidden" name=bno value="${h_list.get(0).match_no }">
						<textarea rows="3" class="com_2 form-control text-left" name="msg"></textarea>
						<input class="btn btn-primary btn-sm pull-right" type=submit value="댓글달기">
					</form>
				</div>
			</div>
		</div>
		<div id="comment_nav_menu">
			<div class="row commentrow">
				<div class="comment_list col-md-12">
					<div style="height: 40px"></div>
					<c:forEach var="rvo" items="${m_list }">
						<div class="comment_form">
							<div class="pull-right">
								<c:if test="${sessionScope.email == rvo.id}">
									<button class="btn btn-primary modifyBtn" value="${rvo.no }">수정</button>
									<div style="height: 5px"></div>
									<form method=post action="match_reply_delete.do">
										<input type="hidden" name=bno value="${h_list.get(0).match_no }"> 
										<input type="hidden" name=no value="${rvo.no }">
										<button class="btn btn-primary" id="deleteBtn">삭제</button>
									</form>
								</c:if>
							</div>
							<div class="comment_content">
								<div class="writer_info">
									<div class="w_nickName">
										<strong>${rvo.name }</strong>
									</div>
									<div class="w_time" style="font-size: 12px; color: #9f9fa0">${rvo.regdate }</div>
								</div>
								<div class="comment_body">
									<p>${rvo.msg }</p>
								</div>
							</div>
							<div id="up${rvo.no }" style="display: none">
								<form method=post action="match_reply_update.do">
									<input type="hidden" name=bno value="${h_list.get(0).match_no }"> 
									<input type="hidden" name=no value="${rvo.no }">
									<textarea rows="3" class="com_2 form-control text-left" style="float: left" name="msg">${rvo.msg }</textarea>
									<br> &nbsp;
									<input class="btn btn-primary btn-sm pull-right" type=submit value="수정하기">
								</form>
							</div>
						</div>
					</c:forEach>
					<div style="height: 40px"></div>
				</div>
				<br>
			</div>
		</div>
	</div>
</body>
</html>
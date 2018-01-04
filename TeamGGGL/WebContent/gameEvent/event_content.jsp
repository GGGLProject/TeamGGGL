<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Event 상세 내용 - GG GL</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/eventContent.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function() {
		//수정버튼
		$('#modifyBtn').click(function() {
			$('#modf').submit();
		});
		//삭제버튼
		$('#deleteBtn').click(function() {
			var result = confirm('정말 삭제 하시겠습니까?');
			if (result) {
				$('#delf').submit();
			} else {
				return;
			}
		});
		//코멘트
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
<style type="text/css">
	.container-fluid-event {
	margin-top: 50px;
	border: 1px solid #dedee0;
	padding: 10px 0;
}

.com_2 {
	margin: 10px 0;
} 
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<h2 class="text-center">
				<strong>EVENT</strong>
			</h2>
			<br>
			<div class="col content_board">
				<div class="col-lg-6">
					<table class="table">
						<tr>
							<th class="text-center" colspan=2>이벤트 / 대회</th>
						</tr>
						<tr>
							<th width=20% class="text-center">이벤트 일정</th>
							<td width=30% class="text-center"><fmt:formatDate
									value="${vo.event_day}" pattern="yyyy.MM.dd(E)" /></td>
						<tr>
							<th width=20% class="text-center">이벤트 장소</th>
							<td width=30% class="text-center">${vo.event_place }</td>
						</tr>
						<tr>
							<th class="text-center" colspan=2>대표 포스터</th>
						</tr>
						<tr>
							<td class="text-center" colspan=2><img
								src="${vo.event_image }" class="event-img" height=320></td>
						</tr>
						<tr>
							<th class="text-center" colspan=2>
								<center>주최자 : ${vo.event_id } / 대회 ${vo.event_category }
								</center>
							</th>
						</tr>
					</table>
				</div>

				<div class="col-lg-6">
					<table class="table event-table">
						<tr>
							<th width=20% class="text-right">분류</th>
							<td width=30% class="text-left">${vo.event_category }</td>
						</tr>
						<tr>
							<th width=20% class="text-right">지역</th>
							<td width=30% class="text-left">${vo.event_city }</td>
						</tr>
						<tr>
							<th width=20% class="text-right qna-td">제목</th>
							<td class="text" width=30% class="text-left qna-td">${vo.event_title }</td>
						</tr>
						<tr>
							<th class="input text-left qna-td" valign="top">내용</th>
							<td width=30% class="text-left qna-td"><pre class="input">
									<textarea class="input" rows="15" cols="65" name=content id="content">
										
 ${vo.event_content }

								</textarea> </pre></td>
						</tr>
					</table>
				</div>
			</div>
			<!--코멘트 시작-->
			<div class="comment" style="padding: 0px 15px;">
				<div class="container-fluid-event container-fluid col-md-12 ">
					<div class="comment_Total col-md-12">
						<h4>
							<span class="com_title"><b>Comment</b></span>
						</h4>
						<div class="reply_write">
							<form method=post action="event_reply_new_insert.do">
								<input type="hidden" name=bno value="${vo.event_no }">
								<textarea rows="3" class="com_2 form-control text-left" name="msg"></textarea>
								<input class="btn btn-primary btn-sm pull-right" type=submit value="댓글달기">
							</form>
						</div>
					</div>
				</div>

				<div id="comment_nav_menu">
					<div class="row commentrow" > 
						<div class="comment_list col-md-12">
							<div style="height: 40px"></div>
							<%-- <c:if test="${vo.count==0 }">
								<div class="text-center">
									<img src="noimage.gif">
									<span>첫번째 댓글을 남겨주세요.</span>
								</div>
       						</c:if>
       						<c:if test="${vo.count!=0 }"> --%>
							<c:forEach var="rvo" items="${e_list }">
								<div class="comment_form">
									<div class="pull-right" style="margin-right : 15px;">
										<c:if test="${sessionScope.email == rvo.id}">
											<button class="btn btn-primary modifyBtn" value="${rvo.no }">수정</button>
											<div style="height: 5px"></div>
											<form method=post action="event_reply_delete.do">
												<input type="hidden" name=bno value="${vo.event_no }"> 
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
									<div id="up${rvo.no }" style="display: none">
										<form method=post action="event_reply_update.do">
											<input type="hidden" name=bno value="${vo.event_no }"> 
											<input type="hidden" name=no value="${rvo.no }">
											<textarea rows="3" class="com_2 form-control text-left" style="float: left" name="msg">${rvo.msg }</textarea>
											<br> &nbsp;
											<input class="btn btn-primary btn-sm pull-right" type=submit value="수정하기">
										</form>
									</div>
								</div>
							</c:forEach>
							<%-- </c:if> --%>
							<%-- <center>
								<button class="btn btn-primary btn-block moreBtn" type="button">더보기▼</button>
							</center> --%>
							<div style="height: 30px"></div>
						</div>
						<br>
					</div>
				</div>
			</div>
			<!--코멘트끝  -->
			<p>
			<div class="text-right">
				<c:if test="${sessionScope.name!=vo.event_id }">
					<a href="event_list.do"><input type="button"
						class="btn btn-nm btn-success" value="목록"></a>
				</c:if>
				<c:if test="${sessionScope.name==vo.event_id }">
					<form method=post action="event_modify.do" id=modf
						style="display: inline-block;">
						<input type=hidden name=no value="${vo.event_no }"> <input
							type=hidden name=id value="${vo.event_id }"> <input
							type="button" value="수정" class="btn btn-nm btn-info"
							id="modifyBtn">
					</form>
					<a href="event_list.do"><input type="button"
						class="btn btn-nm btn-success" value="목록"></a>
					<form method=post action="event_delete.do" id=delf
						style="display: inline-block;">
						<input type=hidden name=no value="${vo.event_no }"> <input
							type=hidden name=id value="${vo.event_id }"> <input
							type="button" value="삭제" class="btn btn-nm btn-danger"
							id="deleteBtn">
					</form>
				</c:if>
			</div>
		</div>

	</div>
</body>
</html>
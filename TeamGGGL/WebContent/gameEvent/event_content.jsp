<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Event 상세 내용 - GG GL</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/eventContent.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<h2 class="text-center"><strong>이벤트 게시판</strong></h2>
			<br>
			<div class="col">
				<div class="col-lg-6">
					<table class="table">
						<tr>
							<td class="text-center" colspan=2>이벤트 / 대회</td>
						</tr>
						<tr>
							<td width=20% class="text-center">이벤트 일정</td>
							<td width=30% class="text-center"><fmt:formatDate value="${vo.event_day}" pattern="yyyy.MM.dd(E)" /></td>
						<tr>
							<td width=20% class="text-center">이벤트 장소</td>
							<td width=30% class="text-center">${vo.event_place }</td>
						</tr>
						<tr>
							<td class="text-center" colspan=2>대표 포스터</td>
						</tr>
						<tr>
							<td class="text-center" colspan=2>
								<img src="${vo.event_image }" class="event-img" height=350>
							</td>
						</tr>
						<tr>
							<td class="text-center" colspan=2>
								<center>${vo.event_place } / ${vo.event_category } 대회 </center>
							</td>
						</tr>
					</table>
				</div>

				<div class="col-lg-6">
					<table class="table event-table">
						<tr>
							<td width=10% class="text-right">분류</td>
							<td width=40% class="text-left">
									${vo.event_category }		
							</td>
						</tr>
						<tr>
							<td width=10% class="text-right">지역</td>
							<td width=40% class="text-left" >${vo.event_city }</td>
						</tr>
						<tr>
							<td width=10% class="text-right qna-td">제목</td>
							<td class="text" width=40% class="text-left qna-td">${vo.event_title }</td>
						</tr>						
						<tr>
							<td class="text-right qna-td" valign="top">내용</td>
							<td class="input text-left qna-td">
								<pre class="input">
		
		
 ${vo.event_content }


								</pre>
							</td>
						</tr>
					</table>
				</div>
				<div class="text-right">
					<input type="button" value="수정" class="btn btn-nm btn-info">
					<a href="event_list.do"><input type="button" class="btn btn-nm btn-success" value="목록"></a>
						<input type="button" value="삭제" class="btn btn-nm btn-danger">
				</div>
			</div>

		</div>

	</div>
</body>
</html>
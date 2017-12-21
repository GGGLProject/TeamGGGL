<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Event - GG GL</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/eventList.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<h2 class="text-center"><strong>이벤트 게시판</strong></h2><br>
				<table class="table table-hover" >
					<tr>
						<th class="text-center" width="5%">번호</th>
						<th class="text-center" width="5%">분류</th>
						<th class="text-center" width="15%">이미지</th>
						<th class="text-center" width="30%">제목</th>
						<th class="text-center" width="15%">이벤트일자</th>
						<th class="text-center" width="10%">장소</th>
						<th class="text-center" width="10%">게시자</th>
						<th class="text-center" width="5%">조회수</th>
					</tr>
				
					<c:forEach var="vo" items="${list }">
						<tr class ="text-link">
							<td  class="text-center td-top">${vo.event_no }</td>
							<td class="text-center td-top">${vo.event_category }</td>
							<td class="text-center"><a href="event_content.do"><img src="${vo.event_image }" width=100 height=50></a></td>
							<td class="text-center td-top"><a href="event_content.do">${vo.event_title }</a></td>
							<td class="text-center td-top"><fmt:formatDate
								value="${vo.event_day }" pattern="yyyy-MM-dd" /></td>
							<td class="text-center td-top">${vo.event_place }</td>
							<td class="text-center td-top">${vo.event_id }</td>
							<td class="text-center td-top">${vo.event_hit }</td>
						</tr>
					</c:forEach>
				</table>
				<center>
			<table>
			<tr>
			<td class="text-left"></td>
			<td class="text-right">
			<a href="event_list.do?page=${curpage>1?curpage-1:curpage }" class="btn btn-primary">◀</a>&nbsp;
			<c:forEach var="i" begin="1" end="${totalpage }">
			<a href="event_list.do?page=${i }" class="btn btn-primary">${i }</a>&nbsp;
			</c:forEach>
			<a href="event_list.do?page=${curpage<totalpage?curpage+1:curpage }" class="btn btn-primary">▶</a>&nbsp;&nbsp;
			${curpage }page / ${totalpage } pages
			</td>
			
			</tr>
			
			</table></center>
			</div>
		</div>
		<div class="text-right">
			<a href="event_write.do" class="btn btn-danger btn-nm">등록</a>
		</div>
	</div>
</body>
</html>
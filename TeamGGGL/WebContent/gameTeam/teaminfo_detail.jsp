<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, java.text.*"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�� ��</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/teaminfo_detail.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
.bodybody {
	background-color: rgba(30,30,30, 0.6);
}
</style>
</head>
<body>
<div class="bodybody"> 
	<div class="container">
		<c:set var="doneLoop" value="false" />
		<c:forEach var="vo" items="${list_teamdetail }" varStatus="status">
			<c:if test="${not doneLoop}">
				<h1 class="text-center subject">${vo.tvo.team_name }</h1>
				<div class="gilgil"><img src="${vo.tvo.team_icon }" alt="${vo.tvo.team_name }" class="teamimg"></div>
				<c:if test="${status.count == 1}">
					<c:set var="doneLoop" value="true" />
				</c:if>
			</c:if>
		</c:forEach>
		
		<div class="playerinfo">
			<div class="row">
				<c:forEach var="vo" items="${list_teamdetail }" varStatus="status">
					<div class="col-md-2 playerdiv">
						<div class="imgdiv"><img src="${vo.pvo.player_pic }"></div>
						<div class="pdiv"><p>${vo.pvo.player_name }</p></div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</div>
</body>
</html>


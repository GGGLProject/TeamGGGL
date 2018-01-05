<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>GGGL- 회원관리</title>

<link href="css/adminpage.css" rel="stylesheet" type="text/css">
 
</head>
<body>
<div class="bodybody">
	<div id="member_area">
		<center>
		 <h1>회원보기</h1>
		 	<table id="table_content" width=900>
		 		<tr>
		 			<th>회원 이메일</th>
		 			<th>회원 번호</th>
		 			<th>회원 닉네임</th>
		 			<th>회원 관심리그</th>
		 			<th>회원 핸드폰번호</th>
		 			<th>회원 등급</th>
		 			<th>회원 가입날짜</th>
		 			<th>회원 생년월일</th>
		 		</tr>
		 		 <c:forEach var="vo" items="${list }">
		 		 	<tr class="dataTr">
		 		 		<td>${vo.member_id }</td>
		 		 		<td>${vo.member_no }</td>
		 		 		<td>${vo.member_nickname }</td>
		 		 		<td>${vo.member_favor }</td>
		 		 		<td>${vo.member_phone }</td>
		 		 		<td>
		 		 			<c:if test="${vo.member_grade.trim()=='1' }">
		 		 				<span style="color:gray">관리자님</span>
		 		 			</c:if>
		 		 			
		 		 			<c:if test="${vo.member_grade.trim()=='2' }">
		 		 				<a href="member_ok.do?no=${vo.member_no }">일반회원</a>
		 		 			</c:if>
		 		 			<c:if test="${vo.member_grade.trim()=='3' }">
		 		 				<a href="member_iok.do?no=${vo.member_no }">우수회원</a>
		 		 			</c:if>
		 		 		</td>
		 		 		<td>
		 		 			<fmt:formatDate value="${vo.member_regdate }" pattern="yyyy-MM-dd"/>
		 		 		</td>
		 		 		<td>${vo.member_birthday }</td>
		 		 	</tr>
		 		 </c:forEach>
		 		 
		 	</table>
		 	<ul class="pagination pagination-centered">
							<li><a href="member_list.do?page=${curpage<11?curpage:curpage-10}">&laquo;</a></li>
							<fmt:parseNumber var="num" value="${curpage/10}"
								integerOnly="true" />
							<c:set var="num" value="${num<=0?1:num*10}" />
							<c:forEach var="i" begin="${num}" end="${num==1?num+8:num+9}">
								<c:choose>
									<c:when test="${i > totalpage }"></c:when>
									<c:when test="${i==curpage}">
										<li class="active"><a href="member_list.do?page=${i}">${i}</a></li>
									</c:when>
									<c:when test="${i <= totalpage}">
										<li><a href="member_list.do?page=${i }">${i}</a></li>
									</c:when>
								</c:choose>
							</c:forEach>

							<li><a href="member_list.do?page=${curpage<=totalpage-10?curpage+10:curpage}">&raquo;</a></li>
			</ul> 
		</center>
	</div>
	</div>
</body>
</html>
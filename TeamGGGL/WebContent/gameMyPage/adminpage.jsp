<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<link href="css/adminpage.css" rel="stylesheet" type="text/css">
 
</head>
<body>
	<div id="member_area">
		<center>
		 <h1 style="color:white">������Ȳ����</h1>
		 	<table id="table_content" width=900>
		 		<tr>
		 			<th>ȸ�� �̸���</th>
		 			<th>ȸ�� ��ȣ</th>
		 			<th>ȸ�� �г���</th>
		 			<th>ȸ�� ���ɸ���</th>
		 			<th>ȸ�� �ڵ�����ȣ</th>
		 			<th>ȸ�� ���</th>
		 			<th>ȸ�� ���Գ�¥</th>
		 			<th>ȸ�� �������</th>
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
		 		 				<span style="color:gray">�����ڴ�</span>
		 		 			</c:if>
		 		 			
		 		 			<c:if test="${vo.member_grade.trim()=='2' }">
		 		 				<a href="member_ok.do?no=${vo.member_no }">�Ϲ�ȸ��</a>
		 		 			</c:if>
		 		 			<c:if test="${vo.member_grade.trim()=='3' }">
		 		 				<a href="member_iok.do?no=${vo.member_no }">���ȸ��</a>
		 		 			</c:if>
		 		 		</td>
		 		 		<td>
		 		 			<fmt:formatDate value="${vo.member_regdate }" pattern="yyyy-MM-dd"/>
		 		 		</td>
		 		 		<td>${vo.member_birthday }</td>
		 		 	</tr>
		 		 </c:forEach>
		 	</table>
		</center>
	</div>
</body>
</html>
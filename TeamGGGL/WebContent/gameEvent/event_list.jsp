<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
				<h2 class="text-center"><strong>�̺�Ʈ �Խ���</strong></h2><br>
				<table class="table table-hover" >
					<tr>
						<th class="text-center" width="5%">��ȣ</th>
						<th class="text-center" width="5%">�з�</th>
						<th class="text-center" width="15%">�̹���</th>
						<th class="text-center" width="30%">����</th>
						<th class="text-center" width="15%">�̺�Ʈ����</th>
						<th class="text-center" width="10%">���</th>
						<th class="text-center" width="10%">�Խ���</th>
						<th class="text-center" width="5%">��ȸ��</th>
					</tr>
				
					<c:forEach var="i" begin="1" end="10">
						<tr class ="text-link">
							<td  class="text-center td-top">${i }</td>
							<td class="text-center td-top">PUBG</td>
							<td class="text-center"><a href="event_content.do"><img src="image/posterImage.png" width=100 height=50></a></td>
							<td class="text-center td-top"><a href="event_content.do">[����] ���̿� 3POP PC�� ��Ʋ�׶��� ��� ��ȸ</a></td>
							<td class="text-center td-top">2017.10.20</td>
							<td class="text-center td-top">���� 3POP PC��</td>
							<td class="text-center td-top">�ӵ���</td>
							<td class="text-center td-top">hit</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<div class="text-right">
			<a href="event_write.do" class="btn btn-danger btn-nm">���</a>
		</div>
	</div>
</body>
</html>
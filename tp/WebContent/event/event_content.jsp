<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<script type="text/javascript" src="../js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<style type="text/css">
body {
	background-image: url('image/csgo1.jpg');
	 background-repeat: no-repeat;
 	
	color:white;
}

.input {
background-color: rgba(0,0,0,0.8);
}


.text-link td>a {
	color: black;
	text-decoration: none;
}

.event-img {
	border: 1px solid black;
}

.event-table {
		
}
.category {
	color:black;
}
pre {
background-color: rgba(0,0,0,0.8);
	color:white;
}
.table {
	 background-color: rgba(0,0,0,0.9);
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">

			<h3 class="text-center">�̺�Ʈ �Խ���</h3>
			<br>
			<div class="col">
				<div class="col-lg-6">
					<table class="table">
						<tr>
							<td class="text-center" colspan=2>�̺�Ʈ / ��ȸ</td>
						</tr>
						<tr>
							<td width=20% class="text-center">�̺�Ʈ ����</td>
							<td width=30% class="text-center">$2020.12.22 ~ $2020.12.22
						<tr>
							<td width=20% class="text-center">�̺�Ʈ ���</td>
							<td width=30% class="text-center">$�̺�Ʈ���</td>
						</tr>
						<tr>
							<td class="text-center" colspan=2>��ǥ ������</td>
						</tr>

						<tr>
							<td class="text-center" colspan=2><img src="image/4.png"
								class="event-img" height=350></td>
						</tr>
						<tr>

							<td class="text-center" colspan=2><center>
									$��ȸ�̸�
									<center></td>
						</tr>
					</table>
				</div>

				<div class="col-lg-6">

					<table class="table event-table">
						<tr>
							<td width=10% class="text-right">�з�</td>
							<td class="category" width=40% class="text-left"><select name="category">
									<option value="�з�" >$�з�</option>
							</select>
							</td>
						
							</tr>
								<tr>
							<td width=10% class="text-right">����</td>
							<td class="category" width=40% class="text-left" ><select name="category">
									<option value="����">$����</option>
									
							</select></td>

						</tr>
						<tr>
							<td width=10% class="text-right qna-td">����</td>
							<td  class="input" width=90% class="text-left qna-td">�����Է�ĭ</td>
						</tr>
						<tr>
							<td width=10% class="text-right qna-td" valign="top">����</td>
							<td class="input" width=90% class="text-left qna-td">
		<pre class="input">
		
		
 Ÿ��Ʋ : ������� ��Ÿũ����Ʈ �ְ���

 ��ȸ�Ұ� : ������ �����̰� �����ϴ� ������� ��Ÿ2 ���θ�����

 �� ��ȸ ��¥ : 2017.12.39 18:20

 �� ���� �ȳ� : ���� ȫ�� �ֿ밭�ϱ�������

 �� ���� ��û : �����󿡰� ���θ��Ϸ� ������û�ٶ��ϴ�.

 �� ���� ��� : ���Ϸ� �����ǰ� ������ �����󿡰� ���� ����


	
 �� ��ȸ ��ǰ : �������� ���




					</pre>	</td>
						</tr>


					</table>
				</div>
				<div class="text-right">
					<input type="button" value="����" class="btn btn-nm btn-info">
					<input type="button" class="btn btn-nm btn-success" value="���"
						onclick="javascript:history.back()">
						<input type="button" value="����" class="btn btn-nm btn-danger">
				</div>
			</div>

		</div>

	</div>
</body>
</html>
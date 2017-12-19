<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Event �۾��� - GG GL</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="../css/eventWrite.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<h2 class="text-center"><strong>�̺�Ʈ �Խ���</strong></h2>
			<br>
			<div class="col">
				<div class="col-lg-6">
					<table class="table table-hover">
						<tr>
							<td class="text-center" colspan=2>�̺�Ʈ / ��ȸ</td>
						</tr>
						<tr>
							<td width=20% class="text-center">�̺�Ʈ ����</td>
							<td width=30% class="text-center"><input class="input" type=date name="day" size=30>~<input class="input" type=date name="day" size=30></td>
						</tr>
						<tr>
							<td width=20% class="text-center">�̺�Ʈ ���</td>
							<td width=30% class="text-right"><input type=text
								name=place size=50 id="place" class="input"></td>
						</tr>
						<tr>
							<td class="text-center" colspan=2>��ǥ ������</td>
						</tr>

						<tr>
							<td class="text-center" colspan=2><img src="../image/posterImage.png"
								class="event-img" height=350></td>
						</tr>
						<tr>
							<td class="text-center" colspan=2>
								<center><input type=file name=upload size=50 id="upload"></center>
							</td>
						</tr>
					</table>
				</div>

				<div class="col-lg-6">
					<table class="table event-table table-hover">
						<tr>
							<td width=10% class="text-right">�з�</td>
							<td class="category" width=40% class="text-left">
								<select name="category">
									<option value="general">�Ϲ�</option>
									<option value="schedule">����</option>
									<option value="result">���</option>
								</select>
							</td>
						</tr>
						<tr>
							<td width=10% class="text-right">����</td>
							<td class="category" width=40% class="text-left" >
								<select name="category">
									<option value="����">����</option>
									<option value="���">���</option>
									<option value="��õ">��õ</option>
									<option value="����">����</option>
									<option value="���">���</option>
									<option value="�泲">�泲</option>
									<option value="����">����</option>
									<option value="����">����</option>
									<option value="���">���</option>
									<option value="�泲">�泲</option>
									<option value="����">����</option>
									<option value="��Ÿ">��Ÿ</option>		
								</select>
							</td>
						</tr>
						<tr>
							<td width=10% class="text-right qna-td">����</td>
							<td width=90% class="text-left qna-td"><input class="input" type=text
								name=subject size=65 id="subject" ></td>
						</tr>
						<tr>
							<td width=10% class="text-right qna-td" valign="top">����</td>
							<td width=90% class="text-left qna-td">
								<textarea class="input" rows="20" cols="65" name=content id="content">
								
								
	Ÿ��Ʋ : 

	��ȸ�Ұ� : 

	�� ��ȸ ��¥ :

	�� ���� �ȳ� :

	�� ���� ��û :

	�� ���� ��� :


	�� ��ȸ ��ǰ :
								</textarea>
							</td>
						</tr>
					</table>
				</div>
				<div class="text-right">
					<input type="submit" value="���" class="btn btn-nm btn-danger">
					<input type="button" class="btn btn-nm btn-success" value="���"
						onclick="javascript:history.back()">
				</div>
			</div>
		</div>
	</div>
</body>
</html>
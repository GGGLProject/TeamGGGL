<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>LOL ���� - GG GL</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="../css/newsMain.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<!-- 	<div class="container_t"> -->
		<div class="container">
			<h1 class="news_head"><strong>NEWS</strong></h1>
			<form class="form-inline text-center" style="padding: 10px;">
				<div class="form-group">
					<select class="form-control" >
						<option value="news">����</option>
						<option value="cover">����</option>
						<option value="info">����</option>
						<option value="patch">��ġ</option>
						<option value="interview">���ͺ�</option>
						<option value="guide">���̵�</option>
						<option value="target">����</option>
						<option value="column">Į��</option>
						<option value="planning">��ȹ</option>
					</select>
				</div>
				<div class="form-group">
					<input type="text" class="form-control"
						placeholder="1040�� ��ϵ� (2017-05-01 ~ 2017-12-30)" size=70 readonly>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="���� �˻�" size=30>
				</div>
				<input type=button class="btn btn-default" value="�˻�">
			</form>

			<div style="height: 10px"></div>

			<div class="row">
				<div class="hotNews col-sm-12 col-md-6">
					<div class="thumbnail">
						<h5 class="hotNews_underline" style="margin: 0; padding: 10px">
							<strong><a href="#">HOT ����</a></strong>
						</h5>
						<ul>
							<c:forEach var="i" begin="1" end="3">
								<li>&nbsp;&nbsp; <a href="#"><span>�����
										�����, "���� ���� �ƽ���.. �̹��� �� ��±���"</span></a></li>
								<li>&nbsp;&nbsp; <a href="#"><span>����
										���̳ʽ�Ƽ, ����� �������� �ְ��� ��º� ���� �¸�</span></a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="updateNews col-sm-12 col-md-6">
					<div class="thumbnail">
						<h5 class="updateNews_underline" style="margin: 0; padding: 10px">
							<strong><a href="#">�̴��� NEW UPDATE ����</a></strong>
						</h5>
						<ul>
							<c:forEach var="i" begin="1" end="3">
								<li>&nbsp;&nbsp; <a href="#"><span>�����
											è�Ǿ� '����', '������'�� 3�� ���� ���� ��� ����</span></a></li>
								<li>&nbsp;&nbsp; <a href="#"><span>����
											ǻ��, �÷θ��� ������ 1�� �� 3���� �ŵ�</span></a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
			<div style="height: 10px"></div>
			<div class="newsList">
				<c:forEach var="i" begin="1" end="10">
					<div class="row">
						<div class="row_img col-sm-3 col-md-2">
							<div class="news_img">
								<a href="main.jsp?mode=5">
									<img src="http://cmg.ruliweb.com/data/news/tn/17/12/06/1602ab9dc97_osmfwz.jpg" height="80">
								</a>
							</div>
						</div>
						<div class="row_content col-sm-9 col-md-10">
							<div class="row_newsTitle">
								<h5>
									<strong class="news_title">
										<a href="main.jsp?mode=5">
											[����] �ϵ��ھ� ���̸Ӹ� ���� ������ ���κ��� ASUS ROG MAXIMUS X...
										</a>
									</strong>
								</h5>
							</div>
							<span class="news_writer">�ڹ�, ���ر�(esports@inven.co.kr)</span>&nbsp;&nbsp;|&nbsp;&nbsp;<span
								class="news_date">2017-12-05 00:27</span>
							<div class="news_content">
								<p>
									<a href="main.jsp?mode=5">ASUS ���κ��� ��ǰ���� ������ �����ϴ� �߿���Ƽ��ǻ��(����,
										STCOM)���� �ϵ��ھ� ���̸Ӹ� ���� ������ ���κ��� ASUS ROG MAXIMUS X CODE...</a>
								</p>
							</div>
						</div>
					</div>
					<hr>
				</c:forEach>
			</div>

			<div style="height: 30px"></div>
			<!-- .pageNum-->
			<center>
				<div class="pageNum">
					<ul class="pagination">
						<li class="page-item disabld"><a href="#">&laquo;</a></li>
						<li class="page-item"><a href="#">1</a></li>
						<li class="page-item"><a href="#">2</a></li>
						<li class="page-item"><a href="#">3</a></li>
						<li class="page-item"><a href="#">4</a></li>
						<li class="page-item"><a href="#">5</a></li>
						<li class="page-item"><a href="#">&raquo;</a></li>
					</ul>
				</div>
			</center>
			<!-- /.pageNum-->
		</div>
		<!-- /.container -->
<!-- 	</div> -->
</body>
</html>
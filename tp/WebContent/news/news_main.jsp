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
<!-- Custom styles for this template -->
<link href="css/shop-homepage.css" rel="stylesheet">
<style type="text/css">
body {
	background-image: url('image/back1.jpg');
	background-attachment: fixed
}

.row {
	padding: 0 15px;
}

.container_t {
	width: 100%;
	height: auto;
}

.hotNews, .updateNews {
	padding: 10px;
}

.thumbnail {
	background-color: rgba(35,35,35,0.5);
	padding : 15px 10px;
}

body, a {
	color: #adadad;
	font-size: 14px
}

a:hover {
	color: #3689d1
}

.news_writer, .news_date {
	color: #dbdcdd;
	font-size: 12px
}

.hotNews_underline a, .updateNews_underline a  {
	text-decoration: none;
	font-size: 15px;
}

hr {
	margin: 10px;
	height: 1px;
	color: #dedee0;
	background-color: #dedee0;
	border: none
}

.news_img a img {
	border: 2px solid #cfd2d6
}

.news_img {
	text-align: center;
	margin: 20px auto
}

.row_content {
	margin: 10px auto;
}

</style>
</head>
<body>
	<!-- Page Content -->
	<div class="container_t">
		<div class="container">
			<h2 class="news_head"><strong>NEWS</strong></h2>
			<div style="height: 20px"></div>
			<form class="form-inline" style="text-align: center">
				<div class="form-group">
					<select class="form-control">
						<option value="LOL">LOL</option>
						<option value="OverWatch">OverWatch</option>
						<option value="CounterStrike">Counter-Strike</option>
						<option value="StarCraft">StarCraft2</option>
					</select>
				</div>
				<div class="form-group">
					<input type="text" class="form-control"
						placeholder="1040�� ��ϵ� (2017-05-01 ~ 2017-12-30)" size=85 readonly>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="���� �˻�" size=25>
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
								<li><img src="image/lol.png">&nbsp;&nbsp; <a href="#"><span>�����
										�����, "���� ���� �ƽ���.. �̹��� �� ��±���"</span></a></li>
								<li><img src="image/ovw.png">&nbsp;&nbsp; <a href="#"><span>����
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
								<li><img src="image/lol.png">&nbsp;&nbsp; <a href="#"><span>�����
											è�Ǿ� '����', '������'�� 3�� ���� ���� ��� ����</span></a></li>
								<li><img src="image/ovw.png">&nbsp;&nbsp; <a href="#"><span>����
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
								<a href="content.jsp"><img
									src="http://cmg.ruliweb.com/data/news/tn/17/12/06/1602ab9dc97_osmfwz.jpg"
									height="80"></a>
							</div>
						</div>
						<div class="row_content col-sm-9 col-md-10">
							<div class="row_newsTitle">
								<h5>
									<strong class="news_title"><a href="content.jsp">[����]
											�ϵ��ھ� ���̸Ӹ� ���� ������ ���κ��� ASUS ROG MAXIMUS X...</a></strong>
								</h5>
							</div>
							<span class="news_writer">�ڹ�, ���ر�(esports@inven.co.kr)</span>&nbsp;&nbsp;|&nbsp;&nbsp;<span
								class="news_date">2017-12-05 00:27</span>
							<div class="news_content">
								<p>
									<a href="content.jsp">ASUS ���κ��� ��ǰ���� ������ �����ϴ� �߿���Ƽ��ǻ��(����,
										STCOM)���� �ϵ��ھ� ���̸Ӹ� ���� ������ ���κ��� ASUS ROG MAXIMUS X CODE...</a>
								</p>
							</div>
						</div>
					</div>
					<hr>
				</c:forEach>
			</div>

			<div style="height: 40px"></div>
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
	</div>
	<script type="text/javascript">
	$('#demo').pagination({
	    dataSource: [1, 2, 3, 4, 5, 6, 7, ... , 35],
	    pageSize: 5,
	    autoHidePrevious: true,
	    autoHideNext: true,
	    callback: function(data, pagination) {
	        // template method of yourself
	        var html = template(data);
	        dataContainer.html(html);
	    }
	})
	</script>
</body>
</html>
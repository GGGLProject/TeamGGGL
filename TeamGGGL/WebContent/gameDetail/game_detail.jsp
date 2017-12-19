<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��� ��� - GG GL</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="../css/gameDetail.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body class="body">
	<!-- Container (The Match Section) -->
	<div id="band" class="container text-center">
		<h1><strong>THE BIG MATCH WILL START</strong></h1>
		<p><em>Coming soon...</em></p>
		<br>
		<div class="team_vs">
			<div class="row">
				<div class="col-sm-4">
					<p class="text-center">
						<strong class="h_teamName">FNATIC</strong><br>HOME TEAM
					</p>
					<br>
					<a href="#demo" data-toggle="collapse">
						<img src="../gameDetail/image/team.png" alt="Random Name" width="255" height="255">
					</a>
				</div>
				<div class="col-sm-4">
					<h4>
						<p class="text-center">
							<strong> 12�� 5�� 17�� 30��</strong>
						</p>
					</h4>
					<br>

					<div>
						<h2 style="margin:15px 0">����� ��� �Դϴ�.</h2>
					</div>
					<img src="../gameDetail/image/vs_icon.png" alt="Random Name" width="155" height="155">
				</div>
				<div class="col-sm-4">
					<p class="text-center">
						<strong class="a_teamName">Complexity</strong><br>AWAY TEAM
					</p>
					<br>
					<a href="#demo3" data-toggle="collapse">
						<img src="../gameDetail/image/team.png" Random Name" width="255" height="255">
					</a>
				</div>
			</div>
		</div>
		
		<div class="player_vs">	
			<div class="row">
				<div class="col-sm-2">
					<img src="../gameDetail/image/player.png">
				</div>

				<div class="h_player1name col-sm-2">
					<div class="player1name">
						<img src="../gameDetail/image/nicname.png"> ������ <br>
					</div>
				</div>

				<div class="col-sm-2"></div>
				<div class="col-sm-2"></div>
				<div class="col-sm-2">
					<div class="a_player1name">
						<img src="../gameDetail/image/nicname.png"> ������ <br>
					</div>
				</div>
				<div class="col-sm-2">
					<img src="../gameDetail/image/player.png">
				</div>
			</div>

			<div class="row">
				<div class="col-sm-2">
					<img src="../gameDetail/image/player.png">
				</div>

				<div class="h_player1name col-sm-2">
					<div class="player1name">
						<img src="../gameDetail/image/nicname.png"> ������ <br>
					</div>
				</div>
				<div class="vs col-sm-4">
					<img src="../gameDetail/image/vs_icon.png" style="height: 130px;">
				</div>
				<div class="col-sm-2">
					<div class="a_player1name">
						<img src="../gameDetail/image/nicname.png"> ������ <br>
					</div>
				</div>
				<div class="col-sm-2">
					<img src="../gameDetail/image/player.png">
				</div>
			</div>

			<div class="row">
				<div class="col-sm-2">
					<img src="../gameDetail/image/player.png">
				</div>

				<div class="h_player1name col-sm-2">
					<div class="player1name">
						<img src="../gameDetail/image/nicname.png"> ������ <br>
					</div>
				</div>

				<div class="col-sm-2"></div>
				<div class="col-sm-2"></div>
				<div class="col-sm-2">
					<div class="a_player1name">
						<img src="../gameDetail/image/nicname.png"> ������ <br>
					</div>
				</div>
				<div class="col-sm-2">
					<img src="../gameDetail/image/player.png">
				</div>
			</div>
		</div>

			<h4 class="text-center"><strong>��� ����</strong></h4>
			<hr>
			<div class="col-lg-6">
				<div class="hi">
					<iframe width="460" height="315"
						src="https://www.youtube.com/embed/m2OEEfkIYgg" frameborder="0"
						gesture="media" allow="encrypted-media" allowfullscreen></iframe>
				</div>
			</div>

			<div class="col-lg-6">
				<div class="hi">
					<iframe class="hi2" width="460" height="315"
						src="https://www.youtube.com/embed/m2OEEfkIYgg" frameborder="0"
						gesture="media" allow="encrypted-media" allowfullscreen></iframe>
				</div>
			</div>

		<div class="container-fluid-news container-fluid col-md-12 ">
			<div class="comment_Total col-md-12">
				<h4 class="text-left">
					<span class="com_title "><b>Comment</b></span>
				</h4>
				<div class="reply_write">
					<textarea class="com_2 form-control text-left"
						placeholder="������ �Է��ϼ���." rows="3"></textarea>
				</div>
				<div class="reply_writer">
					<button class="btn btn-primary btn-sm pull-right" type="submit">��� �ޱ�</button>
				</div>
			</div>
		</div>

		<div class="comment_list col-md-12">
			<div style="height: 40px"></div>
			<c:forEach var="i" begin="1" end="4">
				<div class="comment_form text-left">
					<div class="writer_img pull-left">
						<img src="../image/co_user.png">
					</div>
					<div class="comment_content">
						<div class="writer_info">
							<div class="w_nickName">
								<strong>ybr0971</strong>
							</div>
							<div class="w_time" style="font-size: 12px; color: #9f9fa0">2017.09.21
								00:27</div>
						</div>
						<div class="comment_body">
							<p>
								<br>�����մϴ�. �� ���ڽ��ϴ�. :-) <br> �����մϴ�. �� ���ڽ��ϴ�. :-) <br>�����մϴ�.
								�� ���ڽ��ϴ�. :-)
							</p>
						</div>
					</div>
				</div>
			</c:forEach>
			<center>
				<button class="btn btn-primary btn-block moreBtn" type="button">������ ��</button>
			</center>
			<div style="height: 50px"></div>
		</div>
	</div>
</body>
</html>
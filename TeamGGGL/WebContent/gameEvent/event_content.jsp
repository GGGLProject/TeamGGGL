<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Event �� ���� - GG GL</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/eventContent.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function() {
		$(".comment_tab_content").hide();
		$(".comment_tab_content:first").show();
		$("ul.comment_nav_tabs li").click(function() {
			$("ul.comment_nav_tabs li").removeClass("active2");
			$(this).addClass("active2");
			$(".comment_tab_content").hide();
			var activeTab = $(this).attr("rel");
			$("#" + activeTab).fadeIn();
		});
	});
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<h2 class="text-center"><strong>�̺�Ʈ �Խ���</strong></h2>
			<br>
			<div class="col">
				<div class="col-lg-6">
					<table class="table">
						<tr>
							<td class="text-center" colspan=2>�̺�Ʈ / ��ȸ</td>
						</tr>
						<tr>
							<td width=20% class="text-center">�̺�Ʈ ����</td>
							<td width=30% class="text-center"><fmt:formatDate value="${vo.event_day}" pattern="yyyy.MM.dd(E)" /></td>
						<tr>
							<td width=20% class="text-center">�̺�Ʈ ���</td>
							<td width=30% class="text-center">${vo.event_place }</td>
						</tr>
						<tr>
							<td class="text-center" colspan=2>��ǥ ������</td>
						</tr>
						<tr>
							<td class="text-center" colspan=2>
								<img src="${vo.event_image }" class="event-img" height=350>
							</td>
						</tr>
						<tr>
							<td class="text-center" colspan=2>
								<center>${vo.event_place } / ${vo.event_category } ��ȸ </center>
							</td>
						</tr>
					</table>
				</div>

				<div class="col-lg-6">
					<table class="table event-table">
						<tr>
							<td width=10% class="text-right">�з�</td>
							<td width=40% class="text-left">
									${vo.event_category }		
							</td>
						</tr>
						<tr>
							<td width=10% class="text-right">����</td>
							<td width=40% class="text-left" >${vo.event_city }</td>
						</tr>
						<tr>
							<td width=10% class="text-right qna-td">����</td>
							<td class="text" width=40% class="text-left qna-td">${vo.event_title }</td>
						</tr>						
						<tr>
							<td class="text-right qna-td" valign="top">����</td>
							<td class="input text-left qna-td">
								<pre class="input">
		
		
 ${vo.event_content }


								</pre>
							</td>
						</tr>
					</table>
				
				</div>
				
			
			</div>
			<!--�ڸ�Ʈ ����-->
			<div class="comment">
		<div class="container-fluid-news container-fluid col-md-12 ">
			<div class="comment_Total col-md-12">
				<h4>
					<span class="com_title"><b>Comment</b></span>
				</h4>
				<div class="reply_write">
					<textarea class="com_2 form-control text-left"
						placeholder="������ �Է��ϼ���." rows="3"></textarea>
				</div>
				<div class="reply_writer">
					<button class="btn btn-primary btn-sm pull-right" type="submit">���
						�ޱ�</button>
				</div>
			</div>
		</div>

		<div id="comment_nav_menu">
			<ul class="comment_nav_tabs">
				<li class="active2" rel="tab1">��õ��</li>
				<li rel="tab2">�ֽż�</li>
				<li rel="tab3">���ż�</li>
			</ul>

			<div class="comment_tab_container">
				<div id="tab1" class="comment_tab_content">
					<div class="row commentrow">
						<div class="comment_list col-md-12">
							<c:forEach var="i" begin="1" end="4">
								<div class="comment_form">
									<div class="writer_img pull-left">
										<img src="image/co_user.png">
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
												<br>��õ���Դϴ�. :-) <br> �����մϴ�. �� ���ڽ��ϴ�. :-) <br>�����մϴ�.
												�� ���ڽ��ϴ�. :-)
											</p>
										</div>
									</div>
								</div>
							</c:forEach>
							<center>
								<button class="btn btn-primary btn-block moreBtn" type="button">������
									��</button>
							</center>
							<div style="height: 40px"></div>
						</div>
						<br>
					</div>
				</div>

				<div id="tab2" class="comment_tab_content">
					<div class="row commentrow">
						<div class="comment_list col-md-12">
							<c:forEach var="i" begin="1" end="4">
								<div class="comment_form">
									<div class="writer_img pull-left">
										<img src="image/co_user.png">
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
												<br>�ֽż��Դϴ�. <br> �����մϴ�. �� ���ڽ��ϴ�. :-) <br>�����մϴ�.
												�� ���ڽ��ϴ�. :-)
											</p>
										</div>
									</div>
								</div>
							</c:forEach>
							<center>
								<button class="btn btn-primary btn-block moreBtn" type="button">������
									��</button>
							</center>
							<div style="height: 40px"></div>
						</div>
						<br>
					</div>
				</div>

				<div id="tab3" class="comment_tab_content">
					<div class="row commentrow">
						<div class="comment_list col-md-12">
							<c:forEach var="i" begin="1" end="4">
								<div class="comment_form">
									<div class="writer_img pull-left">
										<img src="image/co_user.png">
									</div>
									<div class="comment_content">
										<div class="writer_info">
											<div class="w_nickName">
												<strong>ybr0971</strong>
											</div>
											<div class="w_time" style="font-size: 13px; color: #9f9fa0">2017.09.21
												00:27</div>
										</div>
										<div class="comment_body">
											<p>
												<br>���ż��Դϴ�. <br> �����մϴ�. �� ���ڽ��ϴ�. :-) <br>�����մϴ�.
												�� ���ڽ��ϴ�. :-)
											</p>
										</div>
									</div>
								</div>
							</c:forEach>
							<center>
								<button class="btn btn-primary btn-block moreBtn" type="button">������
									��</button>
							</center>
							<div style="height: 40px"></div>
						</div>
						<br>
					</div>
				</div>
			</div>
		</div>
		</div>
		<!--�ڸ�Ʈ��  -->
		<p>
			<div class="text-right">
					<input type="button" value="����" class="btn btn-nm btn-info">
					<a href="event_list.do"><input type="button" class="btn btn-nm btn-success" value="���"></a>
						<input type="button" value="����" class="btn btn-nm btn-danger">
				</div>
		</div>

	</div>
</body>
</html>
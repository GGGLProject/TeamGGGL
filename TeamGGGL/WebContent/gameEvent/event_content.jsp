<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Event �� ���� - GG GL</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/eventContent.css" rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function() {
		//������ư
		$('#modifyBtn').click(function() {
			$('#modf').submit();
		});
		//������ư
		$('#deleteBtn').click(function() {
			var result = confirm('���� ���� �Ͻðڽ��ϱ�?');
			if (result) {
				$('#delf').submit();
			} else {
				return;
			}
		});
		//�ڸ�Ʈ
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
			<h2 class="text-center">
				<strong>EVENT</strong>
			</h2>
			<br>
			<div class="col content_board">
				<div class="col-lg-6">
					<table class="table">
						<tr>
							<th class="text-center" colspan=2>�̺�Ʈ / ��ȸ</th>
						</tr>
						<tr>
							<th width=20% class="text-center">�̺�Ʈ ����</th>
							<td width=30% class="text-center"><fmt:formatDate
									value="${vo.event_day}" pattern="yyyy.MM.dd(E)" /></td>
						<tr>
							<th width=20% class="text-center">�̺�Ʈ ���</th>
							<td width=30% class="text-center">${vo.event_place }</td>
						</tr>
						<tr>
							<th class="text-center" colspan=2>��ǥ ������</th>
						</tr>
						<tr>
							<td class="text-center" colspan=2><img
								src="${vo.event_image }" class="event-img" height=320></td>
						</tr>
						<tr>
							<th class="text-center" colspan=2>
								<center>������ : ${vo.event_id } / ��ȸ ${vo.event_category }
								</center>
							</th>
						</tr>
					</table>
				</div>

				<div class="col-lg-6">
					<table class="table event-table">
						<tr>
							<th width=20% class="text-right">�з�</th>
							<td width=30% class="text-left">${vo.event_category }</td>
						</tr>
						<tr>
							<th width=20% class="text-right">����</th>
							<td width=30% class="text-left">${vo.event_city }</td>
						</tr>
						<tr>
							<th width=20% class="text-right qna-td">����</th>
							<td class="text" width=30% class="text-left qna-td">${vo.event_title }</td>
						</tr>
						<tr>
							<th class="input text-left qna-td" valign="top">����</th>
							<td width=30% class="text-left qna-td"><pre class="input">
									<textarea class="input" rows="15" cols="65" name=content id="content">
										
 ${vo.event_content }

								</textarea> </pre></td>

						</tr>
					</table>

				</div>


			</div>
			<!--�ڸ�Ʈ ����-->
			<div class="comment">
				<!-- <div class="container-fluid-news container-fluid col-md-12 ">
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
		</div> -->
				<div class="container-fluid-event container-fluid col-md-12 ">
					<div class="comment_Total col-md-12">
						<h4>
							<span class="com_title"><b>Comment</b></span>
						</h4>
						<div class="reply_write">
							<form method=post action="event_reply_new_insert.do">
								<input type="hidden" name=bno value="${rvo.event_no }">
								<textarea rows="3" class="com_2 form-control text-left"
									name="msg"></textarea>
								<input class="btn btn-primary btn-sm pull-right" type=submit
									value="��۴ޱ�">
							</form>
						</div>
					</div>
				</div>

				<div id="comment_nav_menu">
					<div class="row commentrow"> 
						<div class="comment_list col-md-12">
							<c:forEach var="rvo" items="${e_list }">
								<div class="comment_form">
									<!-- <div class="writer_img pull-left">
										<img src="image/co_user.png">
									</div> -->
									<div class="pull-right">
										<c:if test="${sessionScope.email == rvo.id}">
											<button class="btn btn-primary modifyBtn" value="${rvo.no }">����</button>
											<div style="height: 5px"></div>
											<form method=post action="event_reply_delete.do">
												<input type="hidden" name=bno value="${rvo.event_no }"> 
												<input type="hidden" name=no value="${rvo.no }">
												<button class="btn btn-primary" id="deleteBtn">����</button>
											</form>
										</c:if>
									</div>
									<div class="comment_content">
										<div class="writer_info">
											<div class="w_nickName">
												<strong>${rvo.name }</strong>
											</div>
											<div class="w_time" style="font-size: 12px; color: #9f9fa0">${rvo.regdate }</div>
										</div>
										<div class="comment_body">
											<p>${rvo.msg }</p>
										</div>
									</div>
									<div id="up${rvo.no }" style="display: none">
										<form method=post action="event_reply_update.do">
											<input type="hidden" name=bno value="${rvo.event_no }"> 
											<input type="hidden" name=no value="${rvo.no }">
											<textarea rows="3" class="com_2 form-control text-left" style="float: left" name="msg">${rvo.msg }</textarea>
											<br> &nbsp;
											<input class="btn btn-primary btn-sm pull-right" type=submit value="�����ϱ�">
										</form>
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
			<!--�ڸ�Ʈ��  -->
			<p>
			<div class="text-right">
				<c:if test="${sessionScope.name!=vo.event_id }">
					<a href="event_list.do"><input type="button"
						class="btn btn-nm btn-success" value="���"></a>
				</c:if>
				<c:if test="${sessionScope.name==vo.event_id }">
					<form method=post action="event_modify.do" id=modf
						style="display: inline-block;">
						<input type=hidden name=no value="${vo.event_no }"> <input
							type=hidden name=id value="${vo.event_id }"> <input
							type="button" value="����" class="btn btn-nm btn-info"
							id="modifyBtn">
					</form>
					<a href="event_list.do"><input type="button"
						class="btn btn-nm btn-success" value="���"></a>
					<form method=post action="event_delete.do" id=delf
						style="display: inline-block;">
						<input type=hidden name=no value="${vo.event_no }"> <input
							type=hidden name=id value="${vo.event_id }"> <input
							type="button" value="����" class="btn btn-nm btn-danger"
							id="deleteBtn">
					</form>
				</c:if>
			</div>
		</div>

	</div>
</body>
</html>
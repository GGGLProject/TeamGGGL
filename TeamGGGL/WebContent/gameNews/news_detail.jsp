<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>LOL 뉴스 - GG GL</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/newsDetail.css" rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
		<div class="newsPart">
			<div class="newsHead text-center">
				<h2>
					<span class="newsCategory">[ ${vo.news_category } ]</span><span
						class="newsTitle"> ${vo.news_title }</span>
				</h2>
				<br>
				<div class="topInfo text-right">
					<span class="t-writer">${vo.news_name }</span>&nbsp;<span>기자</span>&nbsp;&nbsp;
					| &nbsp; <span>기사입력 : </span><span class="newsDate"> <fmt:formatDate
							value="${vo.news_regdate }" pattern="yyyy-MM-dd" /></span>
				</div>
			</div>
			<hr>
			<div class="contentImage text-center">
				<img src="gameNews/image/${vo.news_no }.jpg"
					style="width: 60%; height: 50%">
			</div>
			<br>
			<div class="contentText">
						${vo.news_content }
				 <div class="b-writer"><span>${vo.news_name }</span></div>
				 
			</div>
			<hr>
		</div>

		<div class="container-fluid-news container-fluid col-md-12 ">
			<div class="comment_Total col-md-12">
				<h4>
					<span class="com_title"><b>Comment</b></span>
				</h4>
				<div class="reply_write">
					<textarea class="com_2 form-control text-left"
						placeholder="내용을 입력하세요." rows="3"></textarea>
				</div>
				<div class="reply_writer">
					<button class="btn btn-primary btn-sm pull-right" type="submit">댓글
						달기</button>
				</div>
			</div>
		</div>

		<div id="comment_nav_menu">
			<ul class="comment_nav_tabs">
				<li class="active2" rel="tab1">추천순</li>
				<li rel="tab2">최신순</li>
				<li rel="tab3">과거순</li>
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
												<br>추천순입니다. :-) <br> 감사합니다. 잘 쓰겠습니다. :-) <br>감사합니다.
												잘 쓰겠습니다. :-)
											</p>
										</div>
									</div>
								</div>
							</c:forEach>
							<center>
								<button class="btn btn-primary btn-block moreBtn" type="button">더보기
									▼</button>
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
												<br>최신순입니다. <br> 감사합니다. 잘 쓰겠습니다. :-) <br>감사합니다.
												잘 쓰겠습니다. :-)
											</p>
										</div>
									</div>
								</div>
							</c:forEach>
							<center>
								<button class="btn btn-primary btn-block moreBtn" type="button">더보기
									▼</button>
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
												<br>과거순입니다. <br> 감사합니다. 잘 쓰겠습니다. :-) <br>감사합니다.
												잘 쓰겠습니다. :-)
											</p>
										</div>
									</div>
								</div>
							</c:forEach>
							<center>
								<button class="btn btn-primary btn-block moreBtn" type="button">더보기
									▼</button>
							</center>
							<div style="height: 40px"></div>
						</div>
						<br>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
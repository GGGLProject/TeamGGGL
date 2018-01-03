<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, java.text.*"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>팀 정보</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/teaminfo.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
	var check;
	$('.rok').click(function(){
		var no = $(this).attr("value");
		if(check!=no){
			$('.leagueopen_team').hide();
			$('.leagueopen_team_'+no).show();
			check = no;
		} else {
			$('.leagueopen_team').hide();
			check = 0;
		}
		return false;
	});
});
</script>
</head>
<body>
	<div class="container">
		<h2 class="text-center subject">리그별 팀정보</h2>
		<div class="row">
			<a class="rok" href="#" value="1">
				<div class="col-md-3 leaguearea">
					<img class="ln" src="gameTeam/image/lck.png" alt="lck">
					<p>LCK</p>
				</div>
			</a>
			<a class="rok" href="#" value="2">
				<div class="col-md-3 leaguearea">
					<img class="ln" src="gameTeam/image/na-lcs.png" alt="nalcs">
					<p>NA LCS</p>
				</div>
			</a>
			<a class="rok" href="#" value="3">
				<div class="col-md-3 leaguearea">
					<img class="ln" src="gameTeam/image/eu-lcs.png" alt="eu-lcs">
					<p>EU LCS</p>
				</div>
			</a>
			<a class="rok" href="#" value="4">
				<div class="col-md-3 leaguearea">
					<img class="ln" src="gameTeam/image/cblol.png" alt="cblol">
					<p>CBLOL</p>
				</div>
			</a>
		</div>
		<div class="leagueopen_team leagueopen_team_1" style="display: none;">
			<div class="row">
				<c:forEach var="vo" items="${list_lck }" varStatus="status">
					<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }">
						<div class="col-md-2 leagueopen_show">
							<img src="${vo.tvo.team_icon }">
							<p>${vo.tvo.team_name }</p>
						</div>
					</a>
				</c:forEach>
			</div>
		</div>
		<div class="leagueopen_team leagueopen_team_2" style="display: none;">
			<div class="row">
				<c:forEach var="vo" items="${list_nalcs }" varStatus="status">
					<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }">
						<div class="col-md-2 leagueopen_show">
							<img src="${vo.tvo.team_icon }">
							<p>${vo.tvo.team_name }</p>
						</div>
					</a>
				</c:forEach>
			</div>
		</div>
		<div class="leagueopen_team leagueopen_team_3" style="display: none;">
			<div class="row">
				<c:forEach var="vo" items="${list_eulcs }" varStatus="status">
					<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }">
						<div class="col-md-2 leagueopen_show">
							<img src="${vo.tvo.team_icon }">
							<p>${vo.tvo.team_name }</p>
						</div>
					</a>
				</c:forEach> 
			</div>
		</div>
		<div class="leagueopen_team leagueopen_team_4" style="display: none;">
			<div class="row">
				<c:forEach var="vo" items="${list_cblol }" varStatus="status">
					<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }">
						<div class="col-md-2 leagueopen_show">
							<img src="${vo.tvo.team_icon }">
							<p>${vo.tvo.team_name }</p>
						</div>
					</a>
				</c:forEach>
			</div>
		</div>
		<br>
		<div class="row">
			<a class="rok" href="#" value="5">
				<div class="col-md-3 leaguearea">
					<img class="ln" src="gameTeam/image/lms.png" alt="lms">
					<p>lms</p>
				</div>
			</a>
			<a class="rok" href="#" value="6">
				<div class="col-md-3 leaguearea">
					<img class="ln" src="gameTeam/image/na-cs.png" alt="na-cs">
					<p>na-cs</p>
				</div>
			</a>
			<a class="rok" href="#" value="7">
				<div class="col-md-3 leaguearea">
					<img class="ln" src="gameTeam/image/eu-cs.png" alt="eu-cs">
					<p>eu-cs</p>
				</div>
			</a>
			<a class="rok" href="#" value="8">
				<div class="col-md-3 leaguearea">
					<img class="ln" src="gameTeam/image/lpl.png" alt="lpl">
					<p>lpl</p>
				</div>
			</a>
		</div>
		<div class="leagueopen_team leagueopen_team_5" style="display: none;">
			<div class="row">
				<c:forEach var="vo" items="${list_lms }" varStatus="status">
					<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }">
						<div class="col-md-2 leagueopen_show">
							<img src="${vo.tvo.team_icon }">
							<p>${vo.tvo.team_name }</p>
						</div>
					</a>
				</c:forEach>
			</div>
		</div>
		<div class="leagueopen_team leagueopen_team_6" style="display: none;">
			<div class="row">
				<c:forEach var="vo" items="${list_nacs }" varStatus="status">
					<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }">
						<div class="col-md-2 leagueopen_show">
							<img src="${vo.tvo.team_icon }">
							<p>${vo.tvo.team_name }</p>
						</div>
					</a>
				</c:forEach>
			</div>
		</div>
		<div class="leagueopen_team leagueopen_team_7" style="display: none;">
			<div class="row">
				<c:forEach var="vo" items="${list_eucs }" varStatus="status">
					<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }">
						<div class="col-md-2 leagueopen_show">
							<img src="${vo.tvo.team_icon }">
							<p>${vo.tvo.team_name }</p>
						</div>
					</a>
				</c:forEach>
			</div>
		</div>
		<div class="leagueopen_team leagueopen_team_8" style="display: none;">
			<div class="row">
				<c:forEach var="vo" items="${list_lpl }" varStatus="status">
					<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }">
						<div class="col-md-2 leagueopen_show">
							<img src="${vo.tvo.team_icon }">
							<p>${vo.tvo.team_name }</p>
						</div>
					</a>
				</c:forEach>
			</div>
		</div>
		<br>
		<div class="row">
			<a class="rok" href="#" value="9">
				<div class="col-md-3 leaguearea">
					<img class="ln" src="gameTeam/image/opl.png" alt="opl">
					<p>opl</p>
				</div>
			</a>
			<a class="rok" href="#" value="10">
				<div class="col-md-3 leaguearea">
					<img class="ln" src="gameTeam/image/wcs.png" alt="wcs">
					<p>wcs</p>
				</div>
			</a>
		</div>
		<div class="leagueopen_team leagueopen_team_9" style="display: none;">
			<div class="row">
				<c:forEach var="vo" items="${list_opl }" varStatus="status">
					<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }">
						<div class="col-md-2 leagueopen_show">
							<img src="${vo.tvo.team_icon }">
							<p>${vo.tvo.team_name }</p>
						</div>
					</a>
				</c:forEach>
			</div>
		</div>
		<div class="leagueopen_team leagueopen_team_10" style="display: none;">
			<div class="row">
				<c:forEach var="vo" items="${list_wcs }" varStatus="status">
					<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }">
						<div class="col-md-2 leagueopen_show">
							<img src="${vo.tvo.team_icon }">
							<p>${vo.tvo.team_name }</p>
						</div>
					</a>
				</c:forEach>
			</div>
		</div>
	</div>

</body>
</html>


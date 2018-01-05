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
<link rel="stylesheet" href="path/to/typicons.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript">
$(function(){
	var check;
	$('.rok').click(function(){
		var no = $(this).attr("value");
		if(check!=no){
			$('.leaguearea').css("background-color", "rgba(0,0,0,0.0)");
			$('#'+no).css("background-color", "rgba(0,0,0,0.6)");
			$('.down').hide();
			$('.leagueopen_team').hide();
			$('.leagueopen_team_'+no).show();
			$('#img'+no).show();
			
			check = no;
		} else {
			$('.leaguearea').css("background-color", "rgba(0,0,0,0.0)");
			$('.leagueopen_team').hide();
			$('.down').hide();
			check = 0;
		}
		return false;
	});
});
</script>
<style type="text/css">
.bodybody {
	background-color: rgba(30,30,30, 0.6);
}
</style>
</head>
<body>
<div class="bodybody">
	<div class="container">
		<h2 class="text-center subject">리그별 팀정보</h2>
		<div class="row">
			<a class="rok" href="#" value="1">
				<div class="col-md-3 leaguearea" id="1">
					<img class="ln" src="gameTeam/image/lck.png" alt="lck">
					<p>LCK</p>
					<img src="gameTeam/image/down.png" class="down" id="img1" style="display: none;">
				</div>
			</a>
			<a class="rok" href="#" value="2">
				<div class="col-md-3 leaguearea" id="2">
					<img class="ln" src="gameTeam/image/na-lcs.png" alt="nalcs">
					<p>NA LCS</p>
					<img src="gameTeam/image/down.png" class="down" id="img2" style="display: none;">
				</div>
			</a>
			<a class="rok" href="#" value="3">
				<div class="col-md-3 leaguearea"  id="3">
					<img class="ln" src="gameTeam/image/eu-lcs.png" alt="eu-lcs">
					<p>EU LCS</p>
					<img src="gameTeam/image/down.png" class="down" id="img3" style="display: none;">
				</div>
			</a>
			<a class="rok" href="#" value="4">
				<div class="col-md-3 leaguearea" id="4">
					<img class="ln" src="gameTeam/image/cblol.png" alt="cblol">
					<p>CBLOL</p>
					<img src="gameTeam/image/down.png" class="down" id="img4" style="display: none;">
				</div>
			</a>
		</div>
		<div class="leagueopen_team leagueopen_team_1" style="display: none;">
			<div class="row">
				<c:forEach var="vo" items="${list_lck }" varStatus="status">
					<div class="col-md-2 leagueopen_show">
						<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }"><figure><img src="${vo.tvo.team_icon }"></figure></a>
						<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }"><p>${vo.tvo.team_name }</p></a>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="leagueopen_team leagueopen_team_2" style="display: none;">
			<div class="row">
				<c:forEach var="vo" items="${list_nalcs }" varStatus="status">
					<div class="col-md-2 leagueopen_show">
						<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }"><figure><img src="${vo.tvo.team_icon }"></figure></a>
						<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }"><p>${vo.tvo.team_name }</p></a>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="leagueopen_team leagueopen_team_3" style="display: none;">
			<div class="row">
				<c:forEach var="vo" items="${list_eulcs }" varStatus="status">
					<div class="col-md-2 leagueopen_show">
						<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }"><figure><img src="${vo.tvo.team_icon }"></figure></a>
						<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }"><p>${vo.tvo.team_name }</p></a>
					</div>
				</c:forEach> 
			</div>
		</div>
		<div class="leagueopen_team leagueopen_team_4" style="display: none;">
			<div class="row">
				<c:forEach var="vo" items="${list_cblol }" varStatus="status">
					<div class="col-md-2 leagueopen_show">
						<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }"><figure><img src="${vo.tvo.team_icon }"></figure></a>
						<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }"><p>${vo.tvo.team_name }</p></a>
					</div>
				</c:forEach>
			</div>
		</div>
		<br>
		<div class="row">
			<a class="rok" href="#" value="5">
				<div class="col-md-3 leaguearea"  id="5">
					<img class="ln" src="gameTeam/image/lms.png" alt="lms">
					<p>lms</p>
					<img src="gameTeam/image/down.png" class="down" id="img5" style="display: none;">
				</div>
			</a>
			<a class="rok" href="#" value="6">
				<div class="col-md-3 leaguearea" id="6">
					<img class="ln" src="gameTeam/image/na-cs.png" alt="na-cs">
					<p>na-cs</p>
					<img src="gameTeam/image/down.png" class="down" id="img6" style="display: none;">
				</div>
			</a>
			<a class="rok" href="#" value="7">
				<div class="col-md-3 leaguearea"  id="7">
					<img class="ln" src="gameTeam/image/eu-cs.png" alt="eu-cs">
					<p>eu-cs</p>
					<img src="gameTeam/image/down.png" class="down" id="img7" style="display: none;">
				</div>
			</a>
			<a class="rok" href="#" value="8" >
				<div class="col-md-3 leaguearea" id="8">
					<img class="ln" src="gameTeam/image/lpl.png" alt="lpl">
					<p>lpl</p>
					<img src="gameTeam/image/down.png" class="down" id="img8" style="display: none;">
				</div>
			</a>
		</div>
		<div class="leagueopen_team leagueopen_team_5" style="display: none;">
			<div class="row">
				<c:forEach var="vo" items="${list_lms }" varStatus="status">
					<div class="col-md-2 leagueopen_show">
						<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }"><figure><img src="${vo.tvo.team_icon }"></figure></a>
						<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }"><p>${vo.tvo.team_name }</p></a>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="leagueopen_team leagueopen_team_6" style="display: none;">
			<div class="row">
				<c:forEach var="vo" items="${list_nacs }" varStatus="status">
					<div class="col-md-2 leagueopen_show">
						<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }"><figure><img src="${vo.tvo.team_icon }"></figure></a>
						<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }"><p>${vo.tvo.team_name }</p></a>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="leagueopen_team leagueopen_team_7" style="display: none;">
			<div class="row">
				<c:forEach var="vo" items="${list_eucs }" varStatus="status">
					<div class="col-md-2 leagueopen_show">
						<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }"><figure><img src="${vo.tvo.team_icon }"></figure></a>
						<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }"><p>${vo.tvo.team_name }</p></a>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="leagueopen_team leagueopen_team_8" style="display: none;">
			<div class="row">
				<c:forEach var="vo" items="${list_lpl }" varStatus="status">
					<div class="col-md-2 leagueopen_show">
						<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }"><figure><img src="${vo.tvo.team_icon }"></figure></a>
						<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }"><p>${vo.tvo.team_name }</p></a>
					</div>
				</c:forEach>
			</div>
		</div>
		<br>
		<div class="row">
			<a class="rok" href="#" value="9">
				<div class="col-md-3 leaguearea"  id="9">
					<img class="ln" src="gameTeam/image/opl.png" alt="opl" width=200>
					<p>opl</p>
					<img src="gameTeam/image/down.png" class="down" id="img9" style="display: none;">
				</div>
			</a>
			<a class="rok" href="#" value="10">
				<div class="col-md-3 leaguearea"  id="10">
					<img class="ln" src="gameTeam/image/wcs.png" alt="wcs">
					<p>wcs</p>
					<img src="gameTeam/image/down.png" class="down" id="img10" style="display: none;">
				</div>
			</a>
		</div>
		<div class="leagueopen_team leagueopen_team_9" style="display: none;">
			<div class="row">
				<c:forEach var="vo" items="${list_opl }" varStatus="status">
					<div class="col-md-2 leagueopen_show">
						<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }"><figure><img src="${vo.tvo.team_icon }"></figure></a>
						<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }"><p>${vo.tvo.team_name }</p></a>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="leagueopen_team leagueopen_team_10" style="display: none;">
			<div class="row">
				<c:forEach var="vo" items="${list_wcs }" varStatus="status">
					<div class="col-md-2 leagueopen_show">
						<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }"><figure><img src="${vo.tvo.team_icon }"></figure></a>
						<a href="teaminfo_detail.do?team_name=${vo.tvo.team_name }"><p>${vo.tvo.team_name }</p></a>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</div>
</body>
</html>


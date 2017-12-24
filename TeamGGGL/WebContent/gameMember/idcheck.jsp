<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.sist.member.dao.*"%>
<%
	MemberVO vo=new MemberVO();
	vo = (MemberVO) request.getAttribute("vo");
%>
<p>count = ${vo.count } </p>
<p>member_id = ${vo.member_id} </p>
<p>성공했습니다</p>
    
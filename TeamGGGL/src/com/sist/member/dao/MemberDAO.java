package com.sist.member.dao;

import java.io.*;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import org.apache.ibatis.session.SqlSessionFactory;

public class MemberDAO {

	
private static SqlSessionFactory ssf;
static {
	try {
		//XML 읽기
		Reader reader=Resources.getResourceAsReader("Config.xml");
		
		//XML 파싱
		ssf=new SqlSessionFactoryBuilder().build(reader);
	}catch(Exception ex) {
		System.out.println("SqlSessionFactory : "+ex.getMessage());
	}
}


// 아이디 체크 SQL 연결 카운트가져오는 부분
public static MemberVO memberidcheck(String id) {
	MemberVO vo = new MemberVO();
	SqlSession session=ssf.openSession();
	try {
		
		vo.setCount(session.selectOne("memberIdCheck",id));
		
	}catch(Exception ex) {
		System.out.println("memberidcheck : "+ex.getMessage());
	}finally {
		if(session!=null)
			session.close();
	}
	return vo;
}


// 이메일 체크 SQL 연결 카운트가져오는 부분
public static MemberVO memberEmailCheck(String email) {
	MemberVO vo = new MemberVO();
	SqlSession session=ssf.openSession();
	try {
		
		vo.setCount(session.selectOne("memberEmailCheck",email));
		
	}catch(Exception ex) {
		System.out.println("memberEmailCheck : "+ex.getMessage());
	}finally {
		if(session!=null)
			session.close();
	}
	return vo;
}

// 로그인처리
//아이디 가져오기
public static int memberEmailCount(String email) {
	int count=0;
	SqlSession session=ssf.openSession();
	try {
		count=session.selectOne("memberEmailCount",email);
	}catch(Exception ex) {
		System.out.println("memberEmailCount "+ex.getMessage());
	}finally {
		if(session!=null)
			session.close();
	}
	return count;
}

// id가 가지고있는 값을 가져온다
// 비밀번호가져오는곳
public static MemberVO memberGetPassword(String email) {
	MemberVO vo=new MemberVO();
	SqlSession session=ssf.openSession();
	try {
		vo=session.selectOne("memberGetPassword",email);
	}catch(Exception ex) {
		System.out.println("memberGetPassword "+ex.getMessage());
	}finally {
		if(session!=null)
			session.close();
	}
	return vo;
}

public static void memberJoin(MemberVO vo) {
	SqlSession session=ssf.openSession(true);
	session.insert("memberJoin",vo);
	session.close();
}
public static MemberVO passwordSelect(String recovery) {
	MemberVO vo=new MemberVO();
	SqlSession session=ssf.openSession();
	try {
		vo=session.selectOne("passwordSelect",recovery);
	}catch(Exception ex) {
		System.out.println("passwordSelect "+ex.getMessage());
	}finally {
		if(session!=null)
			session.close();
	}
	return vo;
}
//비밀번호찾기 이메일 체크
public static MemberVO passwordEmailCheck(String recoveryEmail) {
	MemberVO vo = new MemberVO();
	SqlSession session=ssf.openSession();
	try {
		
		vo.setMember_pwd(session.selectOne("passwordEmailCheck",recoveryEmail));
		
	}catch(Exception ex) {
		System.out.println("passwordEmailCheck : "+ex.getMessage());
	}finally {
		if(session!=null)
			session.close();
	}
	return vo;
}

}

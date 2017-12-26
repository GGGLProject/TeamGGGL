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
		//XML �б�
		Reader reader=Resources.getResourceAsReader("Config.xml");
		
		//XML �Ľ�
		ssf=new SqlSessionFactoryBuilder().build(reader);
	}catch(Exception ex) {
		System.out.println("SqlSessionFactory : "+ex.getMessage());
	}
}


// ���̵� üũ SQL ���� ī��Ʈ�������� �κ�
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


// �̸��� üũ SQL ���� ī��Ʈ�������� �κ�
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

}
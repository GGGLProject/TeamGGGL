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

// �α���ó��
//���̵� ��������
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

// id�� �������ִ� ���� �����´�
// ��й�ȣ�������°�
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
//��й�ȣã�� �̸��� üũ
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

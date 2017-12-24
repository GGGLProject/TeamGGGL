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
		//XML ÀÐ±â
		Reader reader=Resources.getResourceAsReader("Config.xml");
		
		//XML ÆÄ½Ì
		ssf=new SqlSessionFactoryBuilder().build(reader);
	}catch(Exception ex) {
		System.out.println("SqlSessionFactory : "+ex.getMessage());
	}
}

public static MemberVO memberidcheck(String id) {
	MemberVO vo = new MemberVO();
	SqlSession session=ssf.openSession();
	try {
		
		vo.setCount(session.selectOne("memberIdCheck",id));
		System.out.println("MemberDAO = > " + vo.getCount());
	}catch(Exception ex) {
		System.out.println("memberidcheck : "+ex.getMessage());
	}finally {
		if(session!=null)
			session.close();
	}
	return vo;
}
}

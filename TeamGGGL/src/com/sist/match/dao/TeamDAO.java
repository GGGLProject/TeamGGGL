package com.sist.match.dao;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class TeamDAO {
	private static SqlSessionFactory ssf;
	//XML파싱 내용 넘겨주기 
	static {
		try {
			//XML읽기
			Reader reader = Resources.getResourceAsReader("Config.xml");
			
			//XML파싱
			ssf = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}





















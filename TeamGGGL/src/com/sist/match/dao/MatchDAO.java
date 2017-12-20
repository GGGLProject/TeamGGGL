package com.sist.match.dao;

import java.io.*;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sist.match.dao.MatchVO;

public class MatchDAO {
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
	
	public static List<MatchVO> matchList(Map map) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList", map);
		} catch (Exception e) {
			System.out.println("matchList : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
			
		}
		return list;
	}
	

}

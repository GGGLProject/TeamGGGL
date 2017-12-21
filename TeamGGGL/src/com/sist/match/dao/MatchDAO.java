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
	//XML�Ľ� ���� �Ѱ��ֱ�
	static {
		try {
			//XML�б�
			Reader reader = Resources.getResourceAsReader("Config.xml");
			
			//XML�Ľ�
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
				session.close(); //��ȯ
			
		}
		return list;
	}
	

}

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
	
	public static List<TeamVO> TeamImageData(String team_name) {
		List<TeamVO> list = new ArrayList<TeamVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("TeamImageData", team_name);
		} catch (Exception e) {
			System.out.println("TeamImageData : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //��ȯ
			
		}
		return list;
	}

}

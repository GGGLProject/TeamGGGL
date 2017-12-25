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
	
	public static List<TeamVO> matchList_3_(String match_day) {
		List<TeamVO> list = new ArrayList<TeamVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList_3_", match_day);
		} catch (Exception e) {
			System.out.println("matchList_3_ : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	
	public static List<TeamVO> matchList_2_(String match_day) {
		List<TeamVO> list = new ArrayList<TeamVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList_2_", match_day);
		} catch (Exception e) {
			System.out.println("matchList_2_ : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	
	public static List<TeamVO> matchList_1_(String match_day) {
		List<TeamVO> list = new ArrayList<TeamVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList_1_", match_day);
		} catch (Exception e) {
			System.out.println("matchList_1_ : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	
	public static List<TeamVO> matchList_(String match_day) {
		List<TeamVO> list = new ArrayList<TeamVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList_", match_day);
		} catch (Exception e) {
			System.out.println("matchList_ : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	
	public static List<TeamVO> matchList__1_(String match_day) {
		List<TeamVO> list = new ArrayList<TeamVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList__1_", match_day);
		} catch (Exception e) {
			System.out.println("matchList__1_ : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	
	public static List<TeamVO> matchList__2_(String match_day) {
		List<TeamVO> list = new ArrayList<TeamVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList__2_", match_day);
		} catch (Exception e) {
			System.out.println("matchList__2_ : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	
	public static List<TeamVO> matchList__3_(String match_day) {
		List<TeamVO> list = new ArrayList<TeamVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList__3_", match_day);
		} catch (Exception e) {
			System.out.println("matchList__3_ : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	
	/*public static List<TeamVO> TeamImageData(String team_name) {
		List<TeamVO> list = new ArrayList<TeamVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("TeamImageData", team_name);
		} catch (Exception e) {
			System.out.println("TeamImageData : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}*/

}

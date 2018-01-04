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
	
	public static List<MatchVO> matchList_3h(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList_3h", match_day);
		} catch (Exception e) {
			System.out.println("matchList_3h : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	public static List<MatchVO> matchList_3a(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList_3a", match_day);
		} catch (Exception e) {
			System.out.println("matchList_3a : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}

	public static List<MatchVO> matchList_2h(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList_2h", match_day);
		} catch (Exception e) {
			System.out.println("matchList_2h : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	public static List<MatchVO> matchList_2a(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList_2a", match_day);
		} catch (Exception e) {
			System.out.println("matchList_2a : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	
	public static List<MatchVO> matchList_1h(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList_1h", match_day);
		} catch (Exception e) {
			System.out.println("matchList_1h : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	public static List<MatchVO> matchList_1a(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList_1a", match_day);
		} catch (Exception e) {
			System.out.println("matchList_1a : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	
	public static List<MatchVO> matchList_h(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList_h", match_day);
		} catch (Exception e) {
			System.out.println("matchList_h : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	public static List<MatchVO> matchList_a(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList_a", match_day);
		} catch (Exception e) {
			System.out.println("matchList_a : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	
	public static List<MatchVO> matchList__1h(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList__1h", match_day);
		} catch (Exception e) {
			System.out.println("matchList__1h : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	public static List<MatchVO> matchList__1a(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList__1a", match_day);
		} catch (Exception e) {
			System.out.println("matchList__1a : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	
	public static List<MatchVO> matchList__2h(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList__2h", match_day);
		} catch (Exception e) {
			System.out.println("matchList__2h : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	public static List<MatchVO> matchList__2a(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList__2a", match_day);
		} catch (Exception e) {
			System.out.println("matchList__2a : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	
	public static List<MatchVO> matchList__3h(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList__3h", match_day);
		} catch (Exception e) {
			System.out.println("matchList__3h : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	public static List<MatchVO> matchList__3a(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList__3a", match_day);
		} catch (Exception e) {
			System.out.println("matchList__3a : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	
	public static List<MatchVO> match_detail_h(int match_no) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("match_detail_h", match_no);
		} catch (Exception e) {
			System.out.println("match_detail_h : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // 반환
		}
		return list;
	}
	public static List<MatchVO> match_detail_a(int match_no) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("match_detail_a", match_no);
		} catch (Exception e) {
			System.out.println("match_detail_a : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // 반환
		}
		return list;
	}
	
	public static List<MatchVO> league_lck() {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("league_lck");
		} catch (Exception e) {
			System.out.println("league_lck : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // 반환
		}
		return list;
	}
	
	public static List<MatchVO> league_nalcs() {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("league_nalcs");
		} catch (Exception e) {
			System.out.println("league_nalcs : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // 반환
		}
		return list;
	}
	
	public static List<MatchVO> league_eulcs() {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("league_eulcs");
		} catch (Exception e) {
			System.out.println("league_eulcs : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // 반환
		}
		return list;
	}
	
	public static List<MatchVO> league_cblol() {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("league_cblol");
		} catch (Exception e) {
			System.out.println("league_cblol : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // 반환
		}
		return list;
	}
	
	public static List<MatchVO> league_lms() {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("league_lms");
		} catch (Exception e) {
			System.out.println("league_lms : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // 반환
		}
		return list;
	}
	
	public static List<MatchVO> league_nacs() {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("league_nacs");
		} catch (Exception e) {
			System.out.println("league_nacs : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // 반환
		}
		return list;
	}
	
	public static List<MatchVO> league_eucs() {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("league_eucs");
		} catch (Exception e) {
			System.out.println("league_eucs : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // 반환
		}
		return list;
	}
	
	public static List<MatchVO> league_lpl() {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("league_lpl");
		} catch (Exception e) {
			System.out.println("league_lpl : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // 반환
		}
		return list;
	}
	
	public static List<MatchVO> league_opl() {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("league_opl");
		} catch (Exception e) {
			System.out.println("league_opl : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // 반환
		}
		return list;
	}
	
	public static List<MatchVO> league_wcs() {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("league_wcs");
		} catch (Exception e) {
			System.out.println("league_wcs : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // 반환
		}
		return list;
	}
	
	/* 댓글 기능 */
	public static void m_replyNewInsert(MatchReplyVO vo) {
		SqlSession session = ssf.openSession(true);
		System.out.println(vo.getBno());
		System.out.println(vo.getId());
		System.out.println(vo.getMsg());
		System.out.println(vo.getName());
		try {
			session.insert("m_replyNewInsert", vo);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}
	
	public static List<MatchReplyVO> m_replyListData(int no) {
		List<MatchReplyVO> list = new ArrayList<MatchReplyVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("m_replyListData", no);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return list;
	}
	
	public static void m_replyUpdate(MatchReplyVO vo) {
		 SqlSession session = ssf.openSession(true);
		 try {
			 session.update("m_replyUpdate", vo);
		 } catch (Exception ex) {
			 System.out.println(ex.getMessage());
		 } finally {
			 if (session != null)
				 session.close();
		 }
	}
	
	public static void m_replyDelete(int no) {
		 SqlSession session = ssf.openSession();
		 try {
			 session.delete("m_replyDelete", no);
			 session.commit();
		 } catch (Exception ex) {
			 System.out.println(ex.getMessage());
		 } finally {
			 if (session != null)
				 session.close();
		 }
	}
	
	public static List<MatchVO> team_detail(String team_name) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("team_detail", team_name);
		} catch (Exception e) {
			System.out.println("team_detail : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // 반환
		}
		return list;
	}
	
	public static int m_ReplyCount(int bno){
		   int count=0;
		   SqlSession session=ssf.openSession();
		   try {
			   count=session.selectOne("m_ReplyCount", bno);
		   } catch(Exception ex){
			   System.out.println("m_ReplyCount" + ex.getMessage());
		   } finally {
			   if(session!=null)
				   session.close();
		   }
		   return count;
		}

}

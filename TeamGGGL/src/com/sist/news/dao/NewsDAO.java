package com.sist.news.dao;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.Reader;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sist.news.dao.*;

import sun.net.NetworkServer;

public class NewsDAO {
	private static SqlSessionFactory ssf;

	public static void main(String args[]) {
		newsRecommandData();

	}

	// XML 파싱내용을 전송
	static {
		try {
			// XML 읽기
			Reader reader = Resources.getResourceAsReader("Config.xml");

			// XML 파싱
			ssf = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
	}

	public static List<NewsVO> newsRecommandData() {

		SqlSession session = ssf.openSession();
		int rint[] = { 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 13, 15, 19, 41, 42, 45, 49, 50, 89, 94, 103, 230, 235, 381, 384,
				373, 370 };

		int rintNum[] = new int[5];
		for (int i = 0; i < 5; i++) {
			rintNum[i] = (int) ((Math.random() * 26) + 1);
			for (int j = 0; j < i; j++) {
				if (rintNum[i] == rintNum[j]) {
					rintNum[i] = (int) ((Math.random() * 26) + 1);
					i--;
				}
			}
		}
		List<NewsVO> rlist = new ArrayList<>();
		// no = (int) ((Math.random() * 70) + 1);
		for (int i = 0; i < 5; i++) {

			rlist.add(session.selectOne("newsRecommandData", rint[rintNum[i]]));
		}

		return rlist;
	}

	public static List<NewsVO> mainNewsRecommandData() {

		SqlSession session = ssf.openSession();
		int rint[] = { 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 13, 15, 19, 41, 42, 45, 49, 50, 89, 94, 103, 230, 235, 381, 384,
				373, 370 };
		//System.out.println(rint.length);
		int rintNum[] = new int[4];
		for (int i = 0; i < 4; i++) {
			rintNum[i] = (int) ((Math.random() * 26) + 1);
			for (int j = 0; j < i; j++) {
				if (rintNum[i] == rintNum[j]) {
					rintNum[i] = (int) ((Math.random() * 26) + 1);
					i--;
				}
			}
		}
		List<NewsVO> rlist = new ArrayList<>();
		// no = (int) ((Math.random() * 70) + 1);
		for (int i = 0; i < 4; i++) {

			rlist.add(session.selectOne("newsRecommandData", rint[rintNum[i]]));
		}

		return rlist;
	}

	public static List<NewsVO> newsListData(Map map) {
		List<NewsVO> list = new ArrayList<NewsVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("newsListData", map);
		} catch (Exception e) {
			System.out.println("NewsDAO:newsListData : " + e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return list;
	}
	public static List<NewsVO> newsSearchData(String searchkey) {
		List<NewsVO> list = new ArrayList<NewsVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("newsSearchData", searchkey);
		} catch (Exception e) {
			System.out.println("NewsDAO:newsSearchData : " + e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return list;
	}

	public static List<NewsVO> newsUpdateListData() {
		List<NewsVO> list = new ArrayList<NewsVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("newsUpdateListData");
		} catch (Exception e) {
			System.out.println("NewsDAO:newsListData : " + e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return list;
	}

	public static NewsVO newsDetailData(int no) {
		SqlSession session = ssf.openSession();
		NewsVO vo = session.selectOne("newsDetailData", no);

		session.close();
		return vo;

	}
	

	public static int newsTotalPage() {
		int total = 0;
		SqlSession session = null;
		try {
			// session : connection
			session = ssf.openSession();// autocommit(false)
			total = session.selectOne("newsTotalPage");
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			// 반환
			if (session != null)
				session.close();
		}
		return total;
	}

	public static int newsTotalCount() {
		int total = 0;
		SqlSession session = null;
		try {
			// session : connection
			session = ssf.openSession();// autocommit(false)
			total = session.selectOne("newsTotalCount");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return total;
	}

	public void imageDown() throws MalformedURLException {
		SqlSession session = null;

		try {
			// session : connection
			session = ssf.openSession();// autocommit(false)
			for (int i = 385; i <= 400; i++) {

				String imgUrl = "";
				imgUrl = session.selectOne("newsImageUrl", i);
				if (imgUrl.equals("")) {
					System.out.println("널값들어옴");
				} else {
					URL url = new URL(imgUrl);

					String fileName = Integer.toString(i); // 이미지 파일명 추출
					BufferedImage img = ImageIO.read(url);

					ImageIO.write(img, "jpg", new File("c:/saveImage/" + fileName));
					System.out.println(fileName + ".jpg 저장");
				}

			}

		} catch (Exception e) {
			System.out.println("에러이유 : " + e.getMessage());
		} finally {
			if (session != null)
				session.close();
		}

	}

	public static int newsReplyCount(int bno) {
		int count = 0;
		SqlSession session = ssf.openSession();
		try {
			count = session.selectOne("newsReplyCount", bno);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return count;
	}

	public static void replyUpdate(NewsReplyVO vo) {
		SqlSession session = ssf.openSession(true);
		try {
			session.update("replyUpdate", vo);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}

	public static List<NewsReplyVO> replyListData(int no) {
		List<NewsReplyVO> list = new ArrayList<NewsReplyVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("replyListData", no);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return list;
	}

	// 새로운 댓글 올리기
	public static void replyNewInsert(NewsReplyVO vo) {
		SqlSession session = ssf.openSession(true);
		System.out.println(vo.getBno());
		System.out.println(vo.getId());
		System.out.println(vo.getMsg());
		System.out.println(vo.getName());

		try {
			session.insert("replyNewInsert", vo);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}

	public static void replyDelete(int no) {
		SqlSession session = ssf.openSession();
		try {
			session.delete("replyDelete", no);
			session.commit();
		} catch (Exception ex) {
			session.rollback();
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}
	
	public static int n_ReplyCount(int bno){
		   int count=0;
		   SqlSession session=ssf.openSession();
		   try {
			   count=session.selectOne("n_ReplyCount", bno);
		   } catch(Exception ex){
			   System.out.println("n_ReplyCount" + ex.getMessage());
		   } finally {
			   if(session!=null)
				   session.close();
		   }
		   return count;
		}

}

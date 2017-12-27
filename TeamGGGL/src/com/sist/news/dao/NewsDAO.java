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

public class NewsDAO {
	private static SqlSessionFactory ssf;

	public static void main(String args[]) {
		NewsDAO nd = new NewsDAO();
		try {
			nd.imageDown();
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

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
		List<NewsVO> rlist = new ArrayList<>();
		// no = (int) ((Math.random() * 70) + 1);
		for (int i = 0; i < 5; i++) {
			int no = (int) ((Math.random() * 70) + 1);
			rlist.add(session.selectOne("newsRecommandData", no));
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

}

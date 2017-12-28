package com.sist.gallery.dao;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sist.gallery.dao.GalleryVO;

public class GalleryDAO {
	private static SqlSessionFactory ssf;
	static { 		// ���� ȣ������ �ʾƵ� �ڵ����� ȣ��
		try {
			// XML �б�
			Reader reader = Resources.getResourceAsReader("Config.xml");
			// XML �Ľ�
			ssf = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public static List<GalleryVO> galleryListAll(Map map) {
		List<GalleryVO> list = new ArrayList<GalleryVO>();
		SqlSession session = ssf.openSession();	// �ּҰ� ���� �� ���(getConnenction)
		try {
			list = session.selectList("galleryListAll", map);
		} catch (Exception e) {
			System.out.println("galleryListAll : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // ��ȯ
		}
		return list;
	}
	
	public static List<GalleryVO> galleryListTop(Map map) {
		List<GalleryVO> list = new ArrayList<GalleryVO>();
		SqlSession session = ssf.openSession();	// �ּҰ� ���� �� ���(getConnenction)
		try {
			list = session.selectList("galleryListTop", map);
		} catch (Exception e) {
			System.out.println("galleryListTop : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // ��ȯ
		}
		return list;
	}
	
	public static List<GalleryVO> galleryListMid(Map map) {
		List<GalleryVO> list = new ArrayList<GalleryVO>();
		SqlSession session = ssf.openSession();	// �ּҰ� ���� �� ���(getConnenction)
		try {
			list = session.selectList("galleryListMid", map);
		} catch (Exception e) {
			System.out.println("galleryListMid : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // ��ȯ
		}
		return list;
	}
	
	public static List<GalleryVO> galleryListJungle(Map map) {
		List<GalleryVO> list = new ArrayList<GalleryVO>();
		SqlSession session = ssf.openSession();	// �ּҰ� ���� �� ���(getConnenction)
		try {
			list = session.selectList("galleryListJungle", map);
		} catch (Exception e) {
			System.out.println("galleryListJungle : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // ��ȯ
		}
		return list;
	}
	
	public static List<GalleryVO> galleryListBottom(Map map) {
		List<GalleryVO> list = new ArrayList<GalleryVO>();
		SqlSession session = ssf.openSession();	// �ּҰ� ���� �� ���(getConnenction)
		try {
			list = session.selectList("galleryListBottom", map);
		} catch (Exception e) {
			System.out.println("galleryListBottom : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // ��ȯ
		}
		return list;
	}
	
	public static List<GalleryVO> galleryListSupport(Map map) {
		List<GalleryVO> list = new ArrayList<GalleryVO>();
		SqlSession session = ssf.openSession();	// �ּҰ� ���� �� ���(getConnenction)
		try {
			list = session.selectList("galleryListSupport", map);
		} catch (Exception e) {
			System.out.println("galleryListSupport : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // ��ȯ
		}
		return list;
	}
	
	public static int galleryTotalPage() {
		int total = 0;
		SqlSession session = ssf.openSession();
		try {
			total = session.selectOne("galleryTotalPage");
		} catch (Exception e) {
			System.out.println("galleryTotalPage : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // ��ȯ
		}
		return total;
	}
}

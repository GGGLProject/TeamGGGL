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
	
	public static List<GalleryVO> galleryListAll(GalleryVO vo) {
		List<GalleryVO> list = new ArrayList<GalleryVO>();
		SqlSession session = ssf.openSession();	// �ּҰ� ���� �� ���(getConnenction)
		try {
			list = session.selectList("galleryListAll", vo);
		} catch (Exception e) {
			System.out.println("galleryListAll : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // ��ȯ
		}
		return list;
	}
	
	public static List<GalleryVO> galleryListTop(GalleryVO vo) {
		List<GalleryVO> list = new ArrayList<GalleryVO>();
		SqlSession session = ssf.openSession();	// �ּҰ� ���� �� ���(getConnenction)
		try {
			list = session.selectList("galleryListTop", vo);
		} catch (Exception e) {
			System.out.println("galleryListTop : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // ��ȯ
		}
		return list;
	}
	
	public static List<GalleryVO> galleryListMid(GalleryVO vo) {
		List<GalleryVO> list = new ArrayList<GalleryVO>();
		SqlSession session = ssf.openSession();	// �ּҰ� ���� �� ���(getConnenction)
		try {
			list = session.selectList("galleryListMid", vo);
		} catch (Exception e) {
			System.out.println("galleryListMid : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // ��ȯ
		}
		return list;
	}
	
	public static List<GalleryVO> galleryListJungle(GalleryVO vo) {
		List<GalleryVO> list = new ArrayList<GalleryVO>();
		SqlSession session = ssf.openSession();	// �ּҰ� ���� �� ���(getConnenction)
		try {
			list = session.selectList("galleryListJungle", vo);
		} catch (Exception e) {
			System.out.println("galleryListJungle : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // ��ȯ
		}
		return list;
	}
	
	public static List<GalleryVO> galleryListBottom(GalleryVO vo) {
		List<GalleryVO> list = new ArrayList<GalleryVO>();
		SqlSession session = ssf.openSession();	// �ּҰ� ���� �� ���(getConnenction)
		try {
			list = session.selectList("galleryListBottom", vo);
		} catch (Exception e) {
			System.out.println("galleryListBottom : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // ��ȯ
		}
		return list;
	}
	
	public static List<GalleryVO> galleryListSupport(GalleryVO vo) {
		List<GalleryVO> list = new ArrayList<GalleryVO>();
		SqlSession session = ssf.openSession();	// �ּҰ� ���� �� ���(getConnenction)
		try {
			list = session.selectList("galleryListSupport", vo);
		} catch (Exception e) {
			System.out.println("galleryListSupport : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // ��ȯ
		}
		return list;
	}

}

package com.sist.match.dao;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class PlayerDAO {
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

}

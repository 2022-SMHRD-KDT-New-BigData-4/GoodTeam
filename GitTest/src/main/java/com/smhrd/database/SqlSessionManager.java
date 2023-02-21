package com.smhrd.database;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {
	public static SqlSessionFactory sqlSessionFactory;
	// 각 Service(기능)를 DB와 연동하기 위한 파일

	// 객체 생성하는 순간 실행되는 부분
	// : 어떤 객체를 생성하던지간에 동일한 내용을 공유하는 공간.
	static {
		String resource = "com/smhrd/database/mybatis-config.xml";
		// 읽어내는 스트림
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (IOException e) {

			e.printStackTrace();
		}

	}

	// DAO에서 sqlSessionFactory 를 가져갈 수 있게 할수있는 메서드 생성
	public static SqlSessionFactory getFactory() {

		return sqlSessionFactory;

	}

}

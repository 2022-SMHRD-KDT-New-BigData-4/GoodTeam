package com.smhrd.model;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.command.Command;
import com.smhrd.database.SqlSessionManager;

public class CustomersDAO {
	
	
	// 작업을 진행할 수 있는 Connection을 생성
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	int result = 0;
	public int JoinService(CustomersVO vo) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		try {
			// sql 문장 실행하기s
			System.out.println("여기까진 옴");
			result = sqlSession.insert("JoinService",vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		sqlSession.close();
		System.out.println("여기까진 옮");
		return result;
		
	}

}	


package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class JoinDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();

	public List<JoinVO> WishSelectAll(String cust_id) {
		List<JoinVO> result = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		try {
			result = sqlSession.selectList("wishSelectAll", cust_id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		sqlSession.close();
		return result;
	}

}

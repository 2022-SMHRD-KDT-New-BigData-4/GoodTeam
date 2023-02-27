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

	// 예약 정보들 조회
		public List<JoinVO> selectAll(String id) {
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			List<JoinVO> result = null;
			
			try {
				result = sqlSession.selectList("reserv_selectAll",id);
				// <> 제너릭 기법 :
				// 클래스 내부에서 사용 가능한 자료형을 욍부에서 지정할 수 있는 기법
//				List<MemberVO> memberList = new ArrayList<MemberVO>();
//	    읽는법     (Object 타입의 obj : 배열의 이름)
//				for (Object obj : result) {
//					memberList.add((MemberVO) obj);
//				}
			} finally {
				sqlSession.close();
			}
			
			return result;
		}
	
	
	
	
	
}

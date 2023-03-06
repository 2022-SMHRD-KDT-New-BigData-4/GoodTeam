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
			result = sqlSession.selectList("reserv_selectAll", id);
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

	public List<JoinVO> SelectAllRooms() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		List<JoinVO> result = null;
		try {
			result = sqlSession.selectList("SelectAllRooms");

		} finally {
			sqlSession.close();
		}

		return result;
	}

	// 지역별 숙소 전체선택
	public List<JoinVO> LocalAreaRooms(String ac_addr) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		List<JoinVO> roomlist = null;
		try {
			roomlist = sqlSession.selectList("LocalAreaRooms", ac_addr);

		} catch (Exception e) {
			e.printStackTrace();
		}
		sqlSession.close();
		return roomlist;

	}

	// 숙소 검색
	public List<JoinVO> Search(JoinVO vo) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		List<JoinVO> roomlist = null;
		try {
			roomlist = sqlSession.selectList("Search", vo);

		} catch (Exception e) {
			e.printStackTrace();
		}
		sqlSession.close();
		return roomlist;

	}
	public JoinVO choiceRoom(JoinVO vo) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		JoinVO result = null;
		try {
			result = sqlSession.selectOne("choiceRoom", vo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return result;
	}

}

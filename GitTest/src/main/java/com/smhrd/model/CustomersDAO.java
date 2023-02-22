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
			// sql 문장 실행하기
			System.out.println("여기까진 옴");
			result = sqlSession.insert("JoinService", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		sqlSession.close();
		System.out.println("여기까진 옮");
		return result;

	}

	// 로그인
	public CustomersVO login(CustomersVO vo) {
		CustomersVO result = null;
		// 1) DATA POOL에서 Connection 빌려오기-> 동적 로딩
		// 만들어진 Connection을 시작하겠습니다.
		// SqlSession 아파치.아이바티스.세션
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		// 2. sql 문장 실행 -> MemberMapper.xml
		// select / selectOne
		// selectOne mapper.xml에 보낼 데이터가 있으면 매개변수 2개
		try {

			result = sqlSession.selectOne("login", vo);
		} finally {

			sqlSession.close();
		}

		return result;

	}

	// 내 정보 조회
	public CustomersVO select(CustomersVO vo) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		// MembeVO타입의 result 선언
		CustomersVO result = null;
		
		try {
			// result 값에 emailCheck해서 얻어온 id 가져오기
			result = sqlSession.selectOne("cust_select", vo);
		} finally {
			sqlSession.close();
		}

		
		return result;
	}
	// 내 정보 수정
	public int update(CustomersVO vo) {
		int result = 0;
		// 통로 빌려오기
		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		// sql 문장 실행
		try {

			result = sqlSession.update("cust_update", vo);

		} finally {

			sqlSession.close();

		}

		return result;

	}

	// id체크
	public CustomersVO emailCheck(CustomersVO vo) {
		// 통로 빌려오는 단계
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		// MembeVO타입의 result 선언
		CustomersVO result = null;

		try {
			// result 값에 emailCheck해서 얻어온 id 가져오기
			result = sqlSession.selectOne("idCheck", vo);
		} finally {
			sqlSession.close();
		}

		return result;
	}

	

}

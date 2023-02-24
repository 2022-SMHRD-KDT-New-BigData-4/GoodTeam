package com.smhrd.model;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.command.Command;
import com.smhrd.database.SqlSessionManager;

public class QnasDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	int result = 0;
	
	
	// QnA 질문 작성
	public int qnas_q(QnasVO vo) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		try {
			// sql 문장 실행하기
			System.out.println("여기까진 옴");
			result = sqlSession.insert("qnas_q", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		sqlSession.close();
		System.out.println("여기까진 옮");
		return result;

	}
	
	// QnA 작성 답변
	public int qnas_a(QnasVO vo) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		try {
			// sql 문장 실행하기
			System.out.println("여기까진 옴");
			result = sqlSession.update("qnas_a", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		sqlSession.close();
		System.out.println("여기까진 옮");
		return result;

	}
	
	// QnA 조회
	public List<QnasVO> select(String vo) {
			
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			// VO타입의 result 선언
			List<QnasVO> result = null;
			
			try {
				result = sqlSession.selectList("qnas_select", vo);
			} finally {
				sqlSession.close();
			}
	
			
			return result;
		}
	
	// QnA 전체 조회
	public List<QnasVO> selectAll() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		List<QnasVO> qnaList = null;
		
		try {
			qnaList = sqlSession.selectList("qnas_selectAll");
			// <> 제너릭 기법 :
			// 클래스 내부에서 사용 가능한 자료형을 욍부에서 지정할 수 있는 기법
//			List<MemberVO> memberList = new ArrayList<MemberVO>();
//    읽는법     (Object 타입의 obj : 배열의 이름)
//			for (Object obj : result) {
//				memberList.add((MemberVO) obj);
//			}
		} finally {
			sqlSession.close();
		}
		
		return qnaList;
	}
	
	
	
	
}

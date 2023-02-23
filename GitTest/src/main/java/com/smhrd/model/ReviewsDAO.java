package com.smhrd.model;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.command.Command;
import com.smhrd.database.SqlSessionManager;

public class ReviewsDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	
	int result = 0;
	
	// 숙박업소 리뷰 조회
	public List<ReviewsVO> reviewAcSelect(ReviewsVO vo) {
		// 자동커밋
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		List<ReviewsVO> reviewAcSelect = null;
		
		try {
			reviewAcSelect =  sqlSession.selectList("reviewAcSelect",vo);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		sqlSession.close();
		
		return reviewAcSelect;
	}
	
	// 내 리뷰 조회
		public List<ReviewsVO> reviewCustSelect(ReviewsVO vo) {
			// 자동커밋
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			
			List<ReviewsVO> reviewCustSelect = null;
			
			try {
				reviewCustSelect =  sqlSession.selectList("reviewCustSelect",vo);
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			sqlSession.close();
			
			return reviewCustSelect;
		}
		
		
		// 리뷰 수정
		public int update(ReviewsVO vo) {
			int result = 0;
			// 통로 빌려오기
			SqlSession sqlSession = sqlSessionFactory.openSession(true);

			// sql 문장 실행
			try {

				result = sqlSession.update("reviewUpdate", vo);

			} finally {

				sqlSession.close();

			}

			return result;

		}
		
		// 리뷰 삭제
		public int delete(ReviewsVO vo) {
			int result = 0;
			// 통로 빌려오기
			SqlSession sqlSession = sqlSessionFactory.openSession(true);

			// sql 문장 실행
			try {

				result = sqlSession.update("reviewDelete", vo);

			} finally {

				sqlSession.close();

			}

			return result;

		}
		
		// 리뷰 작성
				public int insert(ReviewsVO vo) {
					int result = 0;
					// 통로 빌려오기
					SqlSession sqlSession = sqlSessionFactory.openSession(true);

					// sql 문장 실행
					try {

						result = sqlSession.update("reviewInsert", vo);

					} finally {

						sqlSession.close();

					}

					return result;

				}
		
	

}

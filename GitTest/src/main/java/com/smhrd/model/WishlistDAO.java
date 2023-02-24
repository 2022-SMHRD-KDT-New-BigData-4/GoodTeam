package com.smhrd.model;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.command.Command;
import com.smhrd.database.SqlSessionManager;

public class WishlistDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	int result = 0;

	// 위시리스트 조회
	public List<WishlistVO> selectAll(WishlistVO vo) {
		// 자동커밋
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		List<WishlistVO> result = null;
		try {
			result = sqlSession.selectList("wishSelectAll", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		sqlSession.close();

		return result;

	}

	// 위시리스트 추가
	public int insert(WishlistVO vo) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		try {
			// sql 문장 실행하기
			System.out.println("여기까진 옴");
			result = sqlSession.insert("wishAdd", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		sqlSession.close();
		System.out.println("여기까진 옮");
		return result;

	}

	// 위시리스트 삭제
	public int cancel(WishlistVO vo) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		try {
			// sql 문장 실행하기
			System.out.println("여기까진 옴");
			result = sqlSession.delete("wishDelete", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		sqlSession.close();
		System.out.println("여기까진 옮");
		return result;

	}

	// 작업을 진행할 수 이있는 파일

	// 위시리스트 추가 하는 메서드
	public int WistlistAdd(WishlistVO vo) {
		// 자동커밋
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int result = 0;
		try {
			// 쿼리문 실행
			result = sqlSession.insert("wishAdd", vo);

		} catch (Exception e) {
			e.printStackTrace();

		}
		// 경로 닫기
		sqlSession.close();

		return result;

	}

	public int WishDelete(Integer wish_seq) {
		// 자동커밋
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int result = 0;
		try {
			// 쿼리문 실행
			result = sqlSession.delete("wishDelete", wish_seq);

		} catch (Exception e) {
			e.printStackTrace();

		}
		// 경로 닫기
		sqlSession.close();

		return result;

	}

}

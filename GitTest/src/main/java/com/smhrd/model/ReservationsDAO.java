package com.smhrd.model;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.command.Command;
import com.smhrd.database.SqlSessionManager;

public class ReservationsDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	int result = 0;
	
	// 예약 1개 정보 조회
	public ReservationsVO select(ReservationsVO vo) {
			
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			// MembeVO타입의 result 선언
			ReservationsVO result = null;
			
			try {
				// result 값에 emailCheck해서 얻어온 id 가져오기
				result = sqlSession.selectOne("reserv_select", vo);
			} finally {
				sqlSession.close();
			}
	
			
			return result;
		}
	
	

	
	// 예약 하기
	public int reservation(ReservationsVO vo) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		try {
			// sql 문장 실행하기
			System.out.println("여기까진 옴");
			result = sqlSession.insert("reservation", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		sqlSession.close();
		System.out.println("여기까진 옮");
		return result;

	}
	
	// 예약 취소
	public int cancel(ReservationsVO vo) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		try {
			// sql 문장 실행하기
			System.out.println("여기까진 옴");
			result = sqlSession.delete("reserv_cancel", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		sqlSession.close();
		System.out.println("여기까진 옮");
		return result;

	}
	
}

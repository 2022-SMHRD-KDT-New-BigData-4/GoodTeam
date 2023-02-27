package com.smhrd.model;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.command.Command;
import com.smhrd.database.SqlSessionManager;

public class RoomsDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	int result = 0;

	// 전체 객실 조회
	public List<RoomsVO> selectAll(RoomsVO vo) {
		// 자동커밋
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		List<RoomsVO> roomlist = null;
		try {
			roomlist = sqlSession.selectList("RoomSelectAll", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		sqlSession.close();

		return roomlist;

	}

	// 객실 1개 조회
	public RoomsVO select(RoomsVO vo) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		// VO타입의 result 선언
		RoomsVO result = null;

		try {
			result = sqlSession.selectOne("RoomSelect", vo);
		} finally {
			sqlSession.close();
		}

		return result;
	}
	//가격 1개 가져오기
	public int price(String a) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		// VO타입의 result 선언
		int result = 0;

		try {
			result = sqlSession.selectOne("OnePrice", a);
		} finally {
			sqlSession.close();
		}

		return result;
	}

	// 객실 업로드
	public int upload(RoomsVO vo) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);

		try {
			// sql 문장 실행하기
			System.out.println("여기까진 옴");
			result = sqlSession.insert("RoomUpload", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		sqlSession.close();
		System.out.println("여기까진 옮");
		return result;

	}

	// 객실 수정

	public int update(RoomsVO vo) {

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		try {
			// sql 문장 실행하기
			System.out.println("여기까진 옴");
			result = sqlSession.update("RoomsVO", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		sqlSession.close();
		System.out.println("여기까진 옮");
		return result;

	}

	public List<RoomsVO> RoomPrice(RoomsVO vo) {
		List<RoomsVO> RoomPrice = null;
		// 자동커밋
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		try {
			RoomPrice = sqlSession.selectList("SelectRoomPrice", vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		sqlSession.close();

		return RoomPrice;
	}

}

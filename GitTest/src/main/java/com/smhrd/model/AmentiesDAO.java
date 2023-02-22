package com.smhrd.model;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.command.Command;
import com.smhrd.database.SqlSessionManager;

public class AmentiesDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getFactory();
	List<AmentiesVO> RoomAmen = null;

	public List<AmentiesVO> ChoiceRoom(AmentiesVO am_vo) {
		// 자동커밋
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		try {
			 RoomAmen =  sqlSession.selectList("SelectChoiceRoomAmen",am_vo);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		sqlSession.close();
		
		return RoomAmen;
	}
	
	

}

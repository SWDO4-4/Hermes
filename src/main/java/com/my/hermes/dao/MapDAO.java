package com.my.hermes.dao;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.hermes.vo.MapVO;
import com.my.hermes.vo.MemberVO;

@Repository
public class MapDAO {
	
	@Autowired
	private SqlSession session;
	
	// 지도 작성
	public void write(MapVO vo) {
		
		try {
			MapMapper mapper = session.getMapper(MapMapper.class);
			mapper.mapwrite(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	

}

package com.my.hermes.dao;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.hermes.vo.MemberVO;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSession session;
	
	// 로그인 기능
	public MemberVO login(MemberVO vo) {
		MemberVO result = null;
		try {
			MemberMapper mapper = session.getMapper(MemberMapper.class);
			result = mapper.login(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	// 회원가입 기능
	public int sign(MemberVO vo) {
		int result = 0;
		try {
			MemberMapper mapper = session.getMapper(MemberMapper.class);
			result = mapper.sign(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// 로그아웃
	public boolean logout(HttpSession session) {
		session.invalidate();
		return true;
	}
	
	// 카카오 로그인 기능
		public String kakaologin(MemberVO vo) {
			String result = null;
			try {
				MemberMapper mapper = session.getMapper(MemberMapper.class);
				result = mapper.kakaologin(vo);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return result;
		}
}

package com.my.hermes.dao;

import java.util.ArrayList;

import com.my.hermes.vo.MemberVO;

public interface MemberMapper {

	// 로그인 기능
	public ArrayList<MemberVO> login(MemberVO vo);
	
	// 회원가입 기능
	public int sign(MemberVO vo);
	
	//카카오로그인
	public ArrayList<MemberVO> kakaologin(MemberVO vo);
	
	// 비밀번호 업데이트
	public int pwdUpdate(MemberVO vo);
}

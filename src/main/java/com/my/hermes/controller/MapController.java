package com.my.hermes.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.my.hermes.dao.MapDAO;
import com.my.hermes.dao.MemberDAO;
import com.my.hermes.vo.MapVO;

@Controller
public class MapController {
	@Autowired
	private MapDAO dao;
	// 지도 메인화면 이동
	@RequestMapping(value = "/map/mapmain", method = RequestMethod.GET)
	public String mapmain() {
		return "/map/mapmain";
	}
	// 지도 정보 받아오기
	@RequestMapping(value = "/map/mapwrite", method = RequestMethod.POST)
	public String mapwrite(MapVO vo,HttpSession session) {
		String userid = (String)session.getAttribute("userid");
		vo.setUser_id(userid);
		dao.write(vo);
		
		return "redirect:/map/mapmain";
	}
}

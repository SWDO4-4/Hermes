package com.my.hermes.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.my.hermes.dao.EventDAO;
import com.my.hermes.dao.KakaoDAO;
import com.my.hermes.dao.MemberDAO;
import com.my.hermes.dao.PapagoDAO;
import com.my.hermes.vo.EventVO;
import com.my.hermes.vo.MemberVO;

@Controller
public class EventController {

	@RequestMapping(value = "/eventForm", method = RequestMethod.GET)
	@ResponseBody
	public String eventForm(Date eventDate) {
		SimpleDateFormat format1 = new SimpleDateFormat("yyyyMMdd");
		String date = format1.format(eventDate).trim();
		return date;
	}

	@Autowired
	EventDAO dao;
	PapagoDAO papago;
	
	@RequestMapping(value = "/event", method = RequestMethod.GET)
	public String event(String date, Model model) {
		

		int page = dao.getPage(date);
		
		ArrayList<EventVO> list = dao.getEvent(page,date);
		
		ArrayList<EventVO> result = papago.trans(list);
		
		
		model.addAttribute("list", result);
		
		return "event";
	}
}

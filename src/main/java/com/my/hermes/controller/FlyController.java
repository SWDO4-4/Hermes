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

import com.my.hermes.dao.EventDAO;
import com.my.hermes.dao.KakaoDAO;
import com.my.hermes.dao.MemberDAO;
import com.my.hermes.dao.PapagoDAO;
import com.my.hermes.vo.EventVO;
import com.my.hermes.vo.FlyVO;
import com.my.hermes.vo.MemberVO;

@Controller
public class FlyController {
	

	@RequestMapping(value = "/fly", method = RequestMethod.GET)
	public String fly() {
		
		return "/fly";
	}
	
	@RequestMapping(value = "/flySearch", method = RequestMethod.GET)
	public String flyDate(FlyVO vo,Model model) {
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy.MM.dd");
		String sDate = format1.format(vo.getStartDate()).trim();
		String eDate = format1.format(vo.getEndDate()).trim();
		vo.setSDate(sDate);
		vo.setEDate(eDate);
		String url = 
	    "https://flight.naver.com/flights/v2/results?trip=RT&scity1="+vo.getGo()+"&scity2="+vo.getArrive()+"&ecity1="+vo.getArrive()+"&ecity2="+vo.getGo()+"&sdate1="+vo.getSDate()+".&sdate2="+vo.getEDate()+".&adult=1&child=0&infant=0&fareType=Y";
		vo.setUrl(url);
		model.addAttribute("fly", vo);
		return "/fly";
	}

	
}

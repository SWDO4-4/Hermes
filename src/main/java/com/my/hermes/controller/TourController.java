package com.my.hermes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TourController {

	
	// 여행지 화면 이동
	@RequestMapping(value = "/tour", method = RequestMethod.GET)
	public String tour() {
		return "tour";
	}
	
	// 여행정보 상세 확인
	@RequestMapping(value = "/tour/tourinfo", method = RequestMethod.GET)
	public String tourinfo() {
		return "/tour/tourinfo";
	}
}

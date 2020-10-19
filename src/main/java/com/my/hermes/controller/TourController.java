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
	
	@RequestMapping(value = "/tour/tokyo", method = RequestMethod.GET)
	public String tokyo() {
		return "/tour/tokyo";
	}
	
	@RequestMapping(value = "/tour/osaka", method = RequestMethod.GET)
	public String osaka() {
		return "/tour/osaka";
	}
	
	@RequestMapping(value = "/tour/kyoto", method = RequestMethod.GET)
	public String kyoto() {
		return "/tour/kyoto";
	}
}

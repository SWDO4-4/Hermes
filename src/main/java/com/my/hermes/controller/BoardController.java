package com.my.hermes.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.my.hermes.dao.BoardDAO;
import com.my.hermes.vo.BoardVO;

@Controller
public class BoardController {

	@Autowired
	private BoardDAO dao;
	
	// 게시판 이동 및 목록
	@RequestMapping(value = "/board/boardmain", method = RequestMethod.GET)
	public String boardmain(Model model) {
		ArrayList<BoardVO> list = dao.boardList();
		model.addAttribute("list", list);
		return "/board/boardmain";
	}
	
	// 게시판 글 읽기
	@RequestMapping(value = "/board/boardRead", method = RequestMethod.GET)
	public String boardRead(int board_num, Model model) {
		BoardVO vo = dao.read(board_num);
		model.addAttribute("vo", vo);
		return "/board/boardRead";
	}

	// 글 수정 화면 이동
	@RequestMapping(value = "/board/boardUpdate", method = RequestMethod.GET)
	public String boardUpdate() {
		return "/board/boardUpdate";
	}
	
	// 글쓰기 화면 이동
	@RequestMapping(value = "/board/boardWrite", method = RequestMethod.GET)
	public String boardWrite() {
		return "/board/boardWrite";
	}
	
	// 게시판 글 쓰기
	@RequestMapping(value = "/board/write", method = RequestMethod.POST)
	public String write(BoardVO vo, MultipartFile uploadFile) {
		int result = dao.write(vo, uploadFile);
		if(result != 1) {
			return "/board/boardWrite";
		}
		return "redirect:/board/boardmain";
	}
	
	// 게시판 파일 다운로드
	@RequestMapping(value = "/board/download", method = RequestMethod.GET)
	public void download(int board_num, HttpServletResponse response) {
		dao.download(board_num, response);
	}
	
	// 게시판 파일 다운로드
	@RequestMapping(value = "/board/replyWrite", method = RequestMethod.POST)
	public String replyWrite(int board_num, HttpServletResponse response) {
		dao.download(board_num, response);
		
		return "";
	}
}

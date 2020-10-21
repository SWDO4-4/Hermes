package com.my.hermes.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import com.my.hermes.vo.BoardVO;
import com.my.hermes.vo.ReplyVO;

@Repository
public class BoardDAO {
	
	@Autowired
	private SqlSession session;
	
	public ArrayList<BoardVO> boardList(String searchText) {
		ArrayList<BoardVO> result = null;
		HashMap<String, String> map = new HashMap<>();
		map.put("searchText", searchText);
		try {
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			result = mapper.boardList(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int write(BoardVO vo, MultipartFile uploadFile) {
		int result = 0;
		
		if(uploadFile.isEmpty() == false) {
			String board_orifile = uploadFile.getOriginalFilename();
			String board_savedfile = UUID.randomUUID().toString();
			vo.setBoard_orifile(board_orifile);
			vo.setBoard_savedfile(board_savedfile);
			
			try {
				uploadFile.transferTo(new File("C:/test/"+board_savedfile));
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		
		try {
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			result = mapper.write(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public BoardVO read(int board_num) {
		BoardVO result = null;
		try {
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			result = mapper.read(board_num);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public void download(int board_num, HttpServletResponse response) {
		try {
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			BoardVO vo = mapper.read(board_num);
			String board_orifile = vo.getBoard_orifile();
			String board_savedfile = vo.getBoard_savedfile();
			
			File file = new File("C:/test/"+board_savedfile);
			response.setHeader("Content-Disposition", "attachment;filename="+URLEncoder.encode(board_orifile, "UTF-8"));
			response.setContentLength((int)file.length());
			
			FileCopyUtils.copy(new FileInputStream(file), response.getOutputStream());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int replyWrite(ReplyVO vo) {
		int result = 0;
		try {
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			result = mapper.replyWrite(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public ArrayList<ReplyVO> replyList(int board_num) {
		ArrayList<ReplyVO> result = null;
		try {
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			result = mapper.replyList(board_num);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}

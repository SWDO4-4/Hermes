package com.my.hermes.dao;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.UUID;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.my.hermes.vo.BoardVO;

@Repository
public class BoardDAO {
	
	@Autowired
	private SqlSession session;
	
	public ArrayList<BoardVO> boardList() {
		ArrayList<BoardVO> result = null;
		try {
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			result = mapper.boardList();
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

}

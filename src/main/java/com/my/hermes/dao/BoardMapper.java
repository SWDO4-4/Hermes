package com.my.hermes.dao;

import java.util.ArrayList;

import com.my.hermes.vo.BoardVO;

public interface BoardMapper {
	
	public ArrayList<BoardVO> boardList();
	
	public int write(BoardVO vo);
	
	public BoardVO read(int board_num);
	

}

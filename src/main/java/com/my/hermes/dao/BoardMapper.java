package com.my.hermes.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.my.hermes.vo.BoardVO;
import com.my.hermes.vo.ReplyVO;

public interface BoardMapper {
	
	public ArrayList<BoardVO> boardList(HashMap<String, String> map);
	
	public int write(BoardVO vo);
	
	public BoardVO read(int board_num);
	
	public int replyWrite(ReplyVO vo);
	
	public ArrayList<ReplyVO> replyList(int board_num);

}

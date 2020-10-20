package com.my.hermes.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ReplyVO {
	
	private int board_num;
	private int reply_num;
	private String user_id;
	private String reply_content;
	private String reply_inputdate;
}

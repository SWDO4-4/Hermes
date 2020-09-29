package com.my.hermes.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class BoardVO {
	private int board_num;
	private String user_id;
	private String board_title;
	private String board_content;
	private String board_orifile;
	private String board_savedfile;
	private String board_inputdate;
}
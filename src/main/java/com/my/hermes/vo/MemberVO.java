package com.my.hermes.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class MemberVO {

	private String user_id;
	private String user_pwd;
	private String user_email;
	
}

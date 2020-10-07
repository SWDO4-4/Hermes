package com.my.hermes.vo;


import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class FlyVO {
	private Date startDate;
	private Date endDate;
	private String go;
	private String arrive;
	private String sDate;
	private String eDate;
	private String url;
	
}
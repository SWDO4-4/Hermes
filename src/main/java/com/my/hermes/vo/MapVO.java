package com.my.hermes.vo;

import java.util.ArrayList;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class MapVO {

	 private String map_title;
	 private String map_inputdate;
	 private String map_origin;
	 private String map_destination;
	 private String waypoints_input;
	 private String user_id;
	
}

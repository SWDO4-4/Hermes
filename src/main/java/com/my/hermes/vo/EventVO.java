package com.my.hermes.vo;

import org.springframework.stereotype.Repository;

@Repository
public class EventVO {
	private String title;
	private String period;
	private String content;
	private String location;
	private String img;
	public EventVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public EventVO(String title, String period, String content, String location, String img) {
		super();
		this.title = title;
		this.period = period;
		this.content = content;
		this.location = location;
		this.img = img;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	@Override
	public String toString() {
		return "EventVO [title=" + title + ", period=" + period + ", content=" + content + ", location=" + location
				+ ", img=" + img + "]";
	}
	
    	

}

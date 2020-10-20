package com.my.hermes.dao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.hermes.vo.EventVO;

@Service
public class EventDAO {
	

		public int getPage(String date) {
		String url = "https://www.walkerplus.com/event_list/"+date.trim()+"/eg0135/";
		Document doc = null;
		int totalPageNum = 0;
		try {
			doc = Jsoup.connect(url).get();
			Elements element = doc.select("p.m-pager__txt");
			String page = element.text().trim();
			int startNum = page.indexOf("/") + 1;
			int endNum = page.indexOf("全") - 1;
			String pageNum = page.substring(startNum, endNum).trim();
			totalPageNum = Integer.valueOf(pageNum);
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return totalPageNum;

	}
	@Autowired EventVO event;
	public ArrayList<EventVO> getEvent(int totalPage,String date) {
		ArrayList<EventVO> eventList = new ArrayList<EventVO>();
		
		for (int i = 1; i <= totalPage; i++) {
			String url = "https://www.walkerplus.com/event_list/"+date+"/eg0135/"+i+".html";
			Document doc = null;
			try {
				doc = Jsoup.connect(url).get();
				Elements element = doc.select("div.m-mainlist__main");
				
				
//				Elements el_title = element.select("span.m-mainlist-item__ttl");
//				Elements el_map = element.select("p.m-mainlist-item__map");
//				Elements el_img = element.select("a.m-mainlist-item__img > span > img");
				Iterator<Element> ie1 = element.select("span.m-mainlist-item__ttl").iterator();
					
				Iterator<Element> ie2 = element.select("p.m-mainlist-item__map").iterator();
				Iterator<Element> ie3 = element.select("p.m-mainlist-item-event__period").iterator();
				Iterator<Element> ie4 = element.select("a.m-mainlist-item__img > span > img").iterator();
				Iterator<Element> ie5 = element.select("a.m-mainlist-item__txt").iterator();
		
//				
//				int number = 0;
//				for (Element title : el_title) {
//					event_title.put(number, title.text());
//					
//					number++;
//				}
//				

				
				
				EventVO test;
				while (ie1.hasNext()) {
					test = new EventVO();
					test.setTitle(ie1.next().text());
					test.setLocation(ie2.next().text());
					test.setPeriod(ie3.next().text());
					test.setImg(ie4.next().attr("src"));
					test.setContent(ie5.next().text());
					eventList.add(test);
					
					
				}
				
				
			
					
				
					
//				 Elements eImg = element.select("a.m-mainlist-item__img > span > img");
//				 
//				 for (Element et5 : eImg) { // 필요없음
//						System.out.println(eImg.size());
//					        if(eImg.size() == 0) {
//					         System.out.println("안뇽");
//					        }else {
//					        	System.out.println(eImg.get(0).attr("src"));
//					        	
//					        }
//					   }// 필요없음
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
			return eventList;
	}
}
		
			
					
					
				
			
				
			
				
				
				
				

					
				
				
				
				
				
					
					
				
				
					
				
				
				

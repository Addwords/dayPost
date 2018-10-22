package com.day.post.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.day.post.service.DiPostService;
import com.day.post.vo.DiPostVO;

@Controller(value="com.day.post.controller.DiPostController")
public class DiPostController {

	//log
	protected Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private DiPostService diPostService;
	
	//게시글 건수와 게시글 뿌리기
	@RequestMapping(value="/di/selectPostList.day", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> selectPostList(){
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		try {
			map.put("errorYn", "N");
			map.put("result", diPostService.selectPostList());
			
		}catch(Exception e) {
			log.debug("{}",e.getMessage());
			map.put("errorYn", "Y");
			map.put("result", "ERROR");
		}
		
		
		return map;
	}
	
	@RequestMapping(value="/di/insertPost.day", method = RequestMethod.POST)
	public String insertPost(@ModelAttribute DiPostVO diPostVO){
		
		log.info("입력을 시작합니다.");
		diPostService.insertPost(diPostVO);
		log.info("입력완료.");
		return "/home.day";
	}
}

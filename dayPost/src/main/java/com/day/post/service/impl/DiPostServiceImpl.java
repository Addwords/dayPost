package com.day.post.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.day.post.mapper.DiPostMapper;
import com.day.post.service.DiPostService;
import com.day.post.vo.DiPostVO;

@Service(value="com.day.post.service.impl.DiPostServiceImpl")
public class DiPostServiceImpl implements DiPostService{

	@Autowired
	private DiPostMapper diPostMapper;
	
	
	//게시글 list
	@Override
	public Map<String, Object> selectPostList() {
		
		//log.debug();
		
		
		return diPostMapper.selectPostList();
	}
	
	
	
}

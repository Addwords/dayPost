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
	
	@Override
	public List<DiPostVO> selectPostList() {
		return diPostMapper.selectPostList();
	}

	
}

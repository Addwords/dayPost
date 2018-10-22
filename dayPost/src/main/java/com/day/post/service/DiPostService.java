package com.day.post.service;

import java.util.Map;

import com.day.post.vo.DiPostVO;

public interface DiPostService {

	
	//전체 게시글 List
	Map<String,Object> selectPostList();
	
	//게시글 등록
	int insertPost(DiPostVO diPostVO);
}

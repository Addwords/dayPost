package com.day.post.service;

import java.util.List;

import com.day.post.vo.DiPostVO;

public interface DiPostService {

	//전체 게시글 건수
	
	
	//전체 게시글 List
	List<DiPostVO> selectPostList();
	
}

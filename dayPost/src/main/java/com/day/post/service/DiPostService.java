package com.day.post.service;

import java.util.List;

import com.day.post.vo.DiPostVO;

public interface DiPostService {

	//게시글 List
	List<DiPostVO> selectPostList();
	
}

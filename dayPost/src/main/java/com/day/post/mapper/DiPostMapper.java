package com.day.post.mapper;

import java.util.List;

import com.day.post.vo.DiPostVO;

public interface DiPostMapper {
	
	//게시글 list
	List<DiPostVO> selectPostList();
	
}

package com.day.post.mapper;

import java.util.List;

import com.day.post.vo.DiPostVO;

public interface DiPostMapper {
	
	//게시글 건수
	int selectPostCnt();
	
	//게시글 list
	List<DiPostVO> selectPostList();
	
	//게시글 등록
	int insertPost(DiPostVO diPostVO);
}

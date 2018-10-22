package com.day.post.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.day.post.mapper.DiPostMapper;
import com.day.post.service.DiPostService;
import com.day.post.vo.DiPostVO;

@Service(value="com.day.post.service.impl.DiPostServiceImpl")
public class DiPostServiceImpl implements DiPostService{

	protected Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private DiPostMapper diPostMapper;
	
	
	//게시글 list
	@Override
	public Map<String, Object> selectPostList() {
		
		log.debug("selectPostList : {}", diPostMapper.toString());
		
		Map<String,Object> resultMap = new HashMap<String, Object>();
		
		int listcnt = diPostMapper.selectPostCnt();
		
		List<DiPostVO> resultlist = diPostMapper.selectPostList();
		
		resultMap.put("listcnt", listcnt);
		resultMap.put("resultlist", resultlist);
		
		return resultMap;
	}

	@Override
	public int insertPost(DiPostVO diPostVO) {

		int insertCnt = diPostMapper.insertPost(diPostVO);
		int postID = diPostVO.getDayid();
		log.debug("게시글번호 {}",postID);
	
		return insertCnt;
	}

	
	
}

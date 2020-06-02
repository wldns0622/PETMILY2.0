package com.petmily.noti.service;


import java.util.List;

import org.springframework.stereotype.Service;

import com.petmily.common.domain.CodeVO;
import com.petmily.noti.domain.NotiVO;
import com.petmily.pettalk.domain.BoardVO;
import com.petmily.pettalk.domain.ReplyVO;
import com.petmily.pettalk.domain.ReportVO;
import com.petmily.pettalk.domain.SearchVO;

public interface NotiService {

	
	public List<NotiVO> listNoti();
	public void insertNoti(NotiVO notiVO);
	public void deleteNoti(NotiVO notiVO);
	
}

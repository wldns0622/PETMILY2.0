package com.petmily.noti.service;


import java.util.List;

import com.petmily.noti.domain.NotiVO;

public interface NotiService {

	
	public List<NotiVO> listNoti(NotiVO notiVO);
	public void insertNoti(NotiVO notiVO);
	public void deleteNoti(NotiVO notiVO);
	
}

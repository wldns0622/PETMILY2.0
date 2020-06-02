package com.petmily.noti.persistence;

import java.util.List;

import com.petmily.noti.domain.NotiVO;

public interface NotiMapper {

	public List<NotiVO> listNoti();
	public void insertNoti(NotiVO notiVO);
	public void deleteNoti(NotiVO notiVO);
	
	
}

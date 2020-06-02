package com.petmily.noti.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.petmily.noti.domain.NotiVO;
import com.petmily.noti.persistence.NotiMapper;

import lombok.AllArgsConstructor;


@AllArgsConstructor
@Service
public class NotiServiceImpl implements NotiService {
	
	private NotiMapper notiMapper;

	@Override
	public List<NotiVO> listNoti(NotiVO notiVO) {
		return notiMapper.listNoti(notiVO);
	}

	@Override
	public void insertNoti(NotiVO notiVO) {
		
		System.out.println("어디서나는널포이느야");
		notiMapper.insertNoti(notiVO);
		
	}

	@Override
	public void deleteNoti(NotiVO notiVO) {
		notiMapper.deleteNoti(notiVO);
	}

	
	

}

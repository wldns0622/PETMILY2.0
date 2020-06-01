package com.petmily.pettalk.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.petmily.common.domain.CodeVO;
import com.petmily.pettalk.domain.BoardVO;
import com.petmily.pettalk.domain.SearchVO;
import com.petmily.pettalk.persistance.PettalkMapper;

import lombok.AllArgsConstructor;


@AllArgsConstructor
@Service
public class PettalkServiceImpl implements PettalkService {
	
	private PettalkMapper pettalkMapper;

	
	@Override
	public List<BoardVO> listBoard(SearchVO cmd) {
		return pettalkMapper.getListPettalk(cmd);
	}


	@Override
	public List<CodeVO> listPettalkCode() {
		return pettalkMapper.listPettalkCode();
	}

}
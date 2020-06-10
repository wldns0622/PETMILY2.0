package com.petmily.mypet.persistence;

import java.util.List;

import com.petmily.mypet.domain.ImmuVO;

public interface HealthMapper {
	int insertBasicImmu(ImmuVO immuVO);
	List<ImmuVO> selectBasicImmu(int petNo);
}

package com.petmily.pettalk.domain;

import java.util.Comparator;

public class CompareNameDesc implements Comparator<BoardVO> {

	@Override
	 public int compare(BoardVO o1, BoardVO o2) {
        return o1.getLikeCnt() * o1.getBoardHitcount() > o2.getLikeCnt() * o2.getBoardHitcount() ? -1 : o1.getLikeCnt() * o1.getBoardHitcount() < o2.getLikeCnt() * o2.getBoardHitcount() ? 1:0;



	}

}

package com.petmily.reservation.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petmily.reservation.domain.ReservationVO;
import com.petmily.reservation.persistence.ReservationMapper;

import lombok.Setter;

@Service
public class ReservationServiceImpl implements ReservationService {

	@Setter(onMethod_ = {@Autowired})
	private ReservationMapper mapper;
	
	@Override
	public void insertReservation(ReservationVO reservation) {
		int result = mapper.insertReservation(reservation);
	}

}

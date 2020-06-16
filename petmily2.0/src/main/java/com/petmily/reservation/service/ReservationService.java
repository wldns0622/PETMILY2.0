package com.petmily.reservation.service;

import java.util.List;

import com.petmily.reservation.domain.ReservationVO;

public interface ReservationService {
	public void insertReservation(ReservationVO reservation);
	public List<ReservationVO> reservationList(String memId);
	public void reservationFail(int reservationNo);
}
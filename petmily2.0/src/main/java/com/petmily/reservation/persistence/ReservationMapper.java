package com.petmily.reservation.persistence;

import com.petmily.reservation.domain.ReservationVO;

public interface ReservationMapper {
	public int insertReservation(ReservationVO reservation);
}

package com.petmily.reservation.persistence;

import org.apache.ibatis.annotations.Mapper;

import com.petmily.reservation.domain.ReservationVO;

@Mapper
public interface ReservationMapper {
	public int insertReservation(ReservationVO reservation);
}

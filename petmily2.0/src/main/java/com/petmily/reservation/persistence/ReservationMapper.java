package com.petmily.reservation.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.petmily.reservation.domain.ReservationVO;

@Mapper
public interface ReservationMapper {
	public int insertReservation(ReservationVO reservation);
	public List<ReservationVO> reservationList(String memId);
	public void reservationFail(int reservationNo);
}

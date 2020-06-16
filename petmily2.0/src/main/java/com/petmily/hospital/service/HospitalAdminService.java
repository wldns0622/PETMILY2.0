package com.petmily.hospital.service;

import java.util.List;

import com.petmily.hospital.domain.HospitalOperationVO;
import com.petmily.member.domain.HospitalMemberVO;
import com.petmily.reservation.domain.ReservationVO;

public interface HospitalAdminService {
	public HospitalOperationVO getOper(String hsptId);
	public List<ReservationVO> getReservation(String hsptId);
	public void statusUpdate(int reservationNo);
}

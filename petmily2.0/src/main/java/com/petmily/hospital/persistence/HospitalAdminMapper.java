package com.petmily.hospital.persistence;

import java.util.List;

import com.petmily.hospital.domain.HospitalOperationVO;
import com.petmily.member.domain.HospitalMemberVO;
import com.petmily.reservation.domain.ReservationVO;

public interface HospitalAdminMapper {
	public HospitalOperationVO getOper(String hsptId);
	public List<ReservationVO> getReservation(String hsptId);
}

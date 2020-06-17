package com.petmily.hospital.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.petmily.hospital.domain.HospitalMedRecordsVO;
import com.petmily.hospital.domain.HospitalOperationVO;
import com.petmily.hospital.persistence.HospitalAdminMapper;
import com.petmily.reservation.domain.ReservationVO;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class HospitalAdminServiceImpl implements HospitalAdminService {

	private HospitalAdminMapper mapper;

	@Override
	public HospitalOperationVO getOper(String hsptId) {
		return mapper.getOper(hsptId);
	}

	@Override
	public List<ReservationVO> getReservation(String hsptId) {
		return mapper.getReservation(hsptId);
	}

	@Override
	public void statusUpdate(int reservationNo) {
		System.out.println(reservationNo + "서비스");
		mapper.statusUpdate(reservationNo);
	}

	@Override
	public void insertMedRecords(HospitalMedRecordsVO records) {
		mapper.insertMedRecords(records);
	}

	@Override
	public void statusMedUpdate(int reservationNo) {
		mapper.statusMedUpdate(reservationNo);
	}
}

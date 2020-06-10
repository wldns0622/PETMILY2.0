package com.petmily.reservation.domain;

import lombok.Data;

@Data
public class ReservationVO {
	
	private int reservationNo;
	private String memberId;
	private String reservationPetName;
	private String reservationDate;
	private String reservation_status;
	private String reservationKind;
	private String reservationSymptom;
	private String reservationPeriod;
	private String reservationInoculationType;
}

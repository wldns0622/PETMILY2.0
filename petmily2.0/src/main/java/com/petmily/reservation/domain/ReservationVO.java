package com.petmily.reservation.domain;

import lombok.Data;

@Data
public class ReservationVO {
	
	private int reservationNo;
	private String memberId;
	private String reservationDate;
	private String reservationPetName;
	private String reservationKind;
	private String reservationSymptom;
	private String reservationPeriod;
	private String reservationInoculationType;
}

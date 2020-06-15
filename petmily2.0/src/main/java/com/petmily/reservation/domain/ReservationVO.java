package com.petmily.reservation.domain;

import lombok.Data;


@Data
public class ReservationVO {
	
	private int reservationNo;
	private String reservationMemberId;
	private String reservationPetNO;
	private String reservationDate;
	private String reservationStatus;
	private String reservationKind;
	private String reservationSymptom;
	private String reservationPeriod;
	private String reservationInoculationType;
	private String reservationHospitalId;
}

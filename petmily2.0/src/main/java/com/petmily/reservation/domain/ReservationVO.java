package com.petmily.reservation.domain;

import java.io.Serializable;

import lombok.Data;


@Data
public class ReservationVO implements Serializable {
	
	private int reservationNo;
	private String reservationMemberId;
	private int reservationPetNO;
	private String reservationDate;
	private String reservationStatus;
	private String reservationKind;
	private String reservationSymptom;
	private String reservationPeriod;
	private String reservationInoculationType;
	private String reservationHospitalId;
}

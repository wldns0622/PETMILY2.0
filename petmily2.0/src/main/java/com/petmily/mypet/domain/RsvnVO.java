package com.petmily.mypet.domain;

import java.io.Serializable;

import lombok.Data;

@Data
public class RsvnVO implements Serializable {	
	private int reservationNo;
	private String reservationMemberId;
	private String reservationPetNo;
	private String petName;
	private String reservationDate;
	private String reservationStatus;
	private String reservationKind;
	private String reservationSymptom;
	private String reservationPeriod;
	private String reservationInoculationType;
	private String reservationHospitalId;
	private String hsptName;
}

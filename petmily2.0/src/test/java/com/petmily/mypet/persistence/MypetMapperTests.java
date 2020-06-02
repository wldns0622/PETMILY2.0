package com.petmily.mypet.persistence;

import static org.junit.Assert.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.petmily.mypet.domain.PetVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MypetMapperTests {

	@Setter(onMethod_ = @Autowired)
	private MypetMapper mapper;

	// @Test
	// public void list() {
	// mapper.listPetAll("c").forEach(pet -> log.info(pet));
	// }

	// // 품종명 검색
	// @Test
	// public void lastNo() {
	// int no = mapper.selectLastPetNO("c");
	// log.info(no);
	// }

	// 펫 등록
	@Test
	public void insertPet() throws Exception{
		PetVO petVO = new PetVO();

		SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
		Date to = null;
		try {
			to = fm.parse("2020-06-02");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		petVO.setMemId("c");
		petVO.setPetNm("테스트");
		petVO.setPetBirth(to);
		petVO.setPetSex("F".charAt(0));
		petVO.setPetSpecies(4001);
		petVO.setBreedNo(1);
		petVO.setPetSt("함께 있어요");
		petVO.setPetBasicVaccination("모름");
		petVO.setPetNeutral("N".charAt(0));
		petVO.setFileNo(23);
		petVO.setPetOdrNo(5);
		int no = mapper.insertPet(petVO);
		log.info(no);
	}

}

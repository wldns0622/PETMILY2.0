package com.petmily.mypet.service;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.petmily.mypet.persistence.MypetMapper;
import com.petmily.mypet.persistence.MypetMapperTests;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MypetServiceTests {
	
	@Setter(onMethod_ = @Autowired)
	private MypetService service;
	
	@Test
	public void service() {
		log.info(service.petList("c"));
	}

}

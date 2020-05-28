package org.zerock.persistence;

import static org.junit.Assert.fail;

import java.sql.Connection;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml") //설정파일이 어디있는지 알려줌
@Log4j
public class DataSourceTests {

	@Setter(onMethod_= {@Autowired})
	private DataSource datasource;
	
	@Setter(onMethod_ ={@Autowired})
	private SqlSessionFactory sqlsessionFactory;
	
	@Test
	public void testMybatis() {
		try (SqlSession session = sqlsessionFactory.openSession();
			Connection con = session.getConnection();
			){
			log.info(session);
			log.info(con);
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}

}

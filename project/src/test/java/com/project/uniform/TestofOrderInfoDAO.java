package com.project.uniform;

import static org.junit.Assert.assertNotNull;

import java.util.ArrayList;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.project.uniform.dao.OrderInfoIDao;
import com.project.uniform.dto.OrderInfo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
"file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class TestofOrderInfoDAO {
	
	@Inject
	private SqlSession sqlSession;
	private OrderInfoIDao caDao;
	
	
	@Before
	public void setUp() throws Exception {
		caDao = sqlSession.getMapper(OrderInfoIDao.class);
	}

	@After
	public void tearDown() throws Exception {
	}
	
	@Test
	public void allTest() {
		ArrayList<OrderInfo> listed1 = caDao.selectAll();
		assertNotNull(listed1);
	}
	
	
	public void unitTest() {
		ArrayList<OrderInfo> listed2 = caDao.selectMember("admin");
		System.out.println(listed2);
		assertNotNull(listed2);
	}

}

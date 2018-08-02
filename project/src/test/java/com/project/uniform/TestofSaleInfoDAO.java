package com.project.uniform;

import static org.junit.Assert.*;

import java.util.ArrayList;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.project.uniform.dao.BoardIDAO;
import com.project.uniform.dao.InputIDAO;
import com.project.uniform.dao.SaleInfoIDAO;
import com.project.uniform.dto.SaleInfo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
"file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class TestofSaleInfoDAO {

	@Inject
	private SqlSession sqlSession;
	
	
	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void test() {
		SaleInfoIDAO dao = sqlSession.getMapper(SaleInfoIDAO.class);
		ArrayList<SaleInfo> list = dao.selectAll();
		int salecode = 0;
		for(SaleInfo x : list) {
			if (salecode < x.getSale_Code()) {
				salecode = x.getSale_Code();
			}
		}
		System.out.println(list);
		System.out.println(salecode);
	}

}

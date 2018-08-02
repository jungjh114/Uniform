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

import com.project.uniform.dao.MemberIDAO;
import com.project.uniform.dto.Member;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
"file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class TestofMemberDAO {

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
		MemberIDAO dao = sqlSession.getMapper(MemberIDAO.class);
		dao.insert("jjh", "1234", "정진혁", "jjh@naver.com", "010-1111-2222", "대전 선화동", "19900114");
	}

}

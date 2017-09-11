package com.zd.carbarn;

import com.zd.carbarn.service.impl.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CarbarnApplicationTests {

	@Autowired
	private UserService userService;

	@Test
	public void contextLoads() {


		System.out.println(userService.getUserList().toString());


	}

}

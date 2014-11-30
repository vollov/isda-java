package ca.isda.service;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.TestExecutionListeners;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.support.DependencyInjectionTestExecutionListener;
import org.springframework.test.context.support.DirtiesContextTestExecutionListener;
import org.springframework.test.context.transaction.TransactionalTestExecutionListener;

import ca.isda.domain.Event;

import com.github.springtestdbunit.DbUnitTestExecutionListener;
import com.github.springtestdbunit.annotation.DatabaseSetup;

@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(classes = {PersistenceContext.class})
@ContextConfiguration("classpath:test-jpa-context.xml")
@TestExecutionListeners({ DependencyInjectionTestExecutionListener.class,
      DirtiesContextTestExecutionListener.class,
      TransactionalTestExecutionListener.class,
      DbUnitTestExecutionListener.class })
@DatabaseSetup("dataset.xml")
public class EventServiceTest {
	private static final Logger logger = Logger.getLogger(EventServiceTest.class);
	
	@Autowired
	private EventService eventService;
	
	@Test
	public void testFind(){
		
		logger.debug("testing EventService->find()");
		
		Event event = eventService.findById(1);
		
//		List<Staff> staffs = staffService.findAll();
//		assertNotNull(staffs);
//		//assertTrue(categories.size() == 4);
//		
//		for (Staff staff: staffs) {
//			System.out.println(staff);
//		}
	}
}

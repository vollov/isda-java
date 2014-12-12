package ca.isda.lab;

import java.io.IOException;

import org.apache.log4j.Logger;
import org.junit.Test;

import ca.isda.web.exceptions.PageNotFoundException;

public class TestException {
	private static final Logger logger = Logger.getLogger(TestException.class);
	
	@Test
	public void testThrow(){
		try {
			logger.info("[testThrow] try clouse");
			throw new PageNotFoundException();
			
		} catch(Exception e) {
			e.printStackTrace();
			logger.info("[testThrow] after throw exceptions in catch clouse");
		}
	}
	
	@Test
	public void caller() {
		try {
			logger.info("[caller] try clouse");
			testThrows();
		} catch (IOException e) {
			logger.error("[call] exceptions catched in caller");
			e.printStackTrace();
		}
	}
	
	private void testThrows() throws IOException {
		logger.info("[testThrows] start");
		throw new IOException("Error in [testThrows]");	
	}
}

package testing;

import static org.junit.Assert.*;

import org.junit.Test;

public class JunitTest1 {
	@Before
	public void setUp() throws Exception{
		
		
		
	}
	@Test
	public void test() {
		
		JunitTesting jt = new JunitTesting();
		
		boolean b = jt.containStr("ss", "mam");
		assertEquals(true, b);
	}

}

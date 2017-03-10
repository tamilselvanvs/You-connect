package testing;

import static org.junit.Assert.*;

import org.junit.Test;

public class JunitTest1 {

	@Test
	public void test() {
		
		JunitTesting jt = new JunitTesting();
		
		boolean b = jt.containStr("Prasanna", "mam");
		assertEquals(true, b);
	}

}

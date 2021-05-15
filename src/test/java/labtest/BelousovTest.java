package labtest;

import static org.junit.Assert.*;

import org.junit.Assert;
import org.junit.Test;

import laba4.Inter1;

public class BelousovTest implements Inter1 {
	double expected = xsum2(0,0,0,0,0,0,0,0);
	@Test
	public void testToDouble() throws Exception {
		   

        Assert.assertNotNull(expected);
    

}

}

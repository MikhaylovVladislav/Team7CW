package labtest;

import static org.junit.Assert.*;

import org.junit.Assert;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import laba4.Level2;

public class BogolyubovTest{

    Level2 tes = new Level2(2);
    double k = tes.getKf();

	@Test
	public void testToDouble() {
		 Assert.assertEquals(k,3,1);
	}

}

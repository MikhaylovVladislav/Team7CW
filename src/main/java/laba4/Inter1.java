package laba4;

public interface Inter1 {
default double xsum2(double pr5,double pr6,double pr7,double pr8,double pr9,double pr10,double pr11,double pr12) {
		
		double sum5=((pr5*120)+(pr6*500)+(pr7*120)+(pr8*250)+(pr9*300)+(pr10*850)+(pr11*500)+(pr12*200));
	
		return sum5;
		
	}
default double xsum3(double sum5,double sum4) {

int s1=(int)((((sum5)+(sum4)-(sum4))));
return s1;
}
}

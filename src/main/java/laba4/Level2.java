package laba4;

public class Level2 extends Level {
	//�������� ����������
	
	public Level2(double kf){
		setKf(kf);
	}

	
	
	@Override
	public void check() {
	
		
	int [] mass = {10,20,30,40,50,60,70,800};
		
		
	}

	@Override
	public double promo(String promo, String Kfpromo) {
		double x =1.0;
		String x1 = null;
	//	String[] mass = {"USATU", "123"};
		int a = 123;
		int b;
		int c;
		
		try {b = Integer.parseInt(promo);} catch (NumberFormatException e) {b=0;}
		try {c = Integer.parseInt(Kfpromo);} catch (NumberFormatException e) {c = 1;}
		 
		//if ((promo == mass[0]) | (promo == mass[1])) {

		if (b == a ) {
				x=c;
			//	if (c != 1) {
			//		x=c;
			//		}	
				
			}


		return x;
	}
}

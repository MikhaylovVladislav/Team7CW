package laba4;

public class Level2 extends Level {
	//Создание экземпляра
	
	public Level2(double kf){
		setKf(kf);
	}

	
	
	@Override
	public void check() {
	
		
	int [] mass = {10,20,30,40,50,60,70,800};
		
		
	}




	@Override
	public double promo(String promo) {
		double x =1.0;
		String x1 = null;
	//	String[] mass = {"USATU", "123"};
		String a = "123";
		//if ((promo == mass[0]) | (promo == mass[1])) {
		if (promo == a) {
		x=0.7;	
		}
		return x;
	}
}

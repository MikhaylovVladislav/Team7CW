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
	public double promo() {
		double x =1.0;
		String x1 = "USATU";
		String[] mass = {"USATU", "PI-221"};
		if ((x1 == mass[0]) | (x1 == mass[1])) {
		x=0.5;	
		}
		return x;
	}
}

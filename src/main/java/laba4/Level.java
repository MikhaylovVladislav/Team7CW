package laba4;
public abstract class Level {
	private double kf = 1.0;

	public double getKf() {
		return kf;
	}
	
	public void setKf(double kf) {
		this.kf = kf;
	}
	
	//Абстрактный метод, которому нужна реализация в другом классе. Данный метод определяет цену за кв.м. работы
	public abstract void check();
	
	

	

	void kf(double s){
		kf = kf*s;
	}
}
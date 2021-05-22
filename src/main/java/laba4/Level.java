package laba4;
public abstract class Level {
	// Переменная для определения начального кэфа.
	private double kf = 1.0;
	
	// Геттер и сеттер для определения коэфицентов состояния строения, класса-ремонта, срока ремонта.
	public double getKf() {
		return kf;
	}
	
	public void setKf(double kf) {
		this.kf = kf;
	}
	
	//Абстрактный метод, которому нужна реализация в другом классе. Данный метод определяет цену за кв.м. работыы
	public abstract void check();
	
	
	//Метод для переопределения для создания промокода
	public abstract double promo(String promo, String Kfpromo);

	
	
	
	
	
	
	
	
	
	
	
}

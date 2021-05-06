package laba4;
public abstract class LvlState {
	private double kf = 1.0;


/*// Безполезны для веееба
//методы гет и сет для переменной name, чтобы использовать экземлпярах
	public String getName() {
		return name;
	}
	public void setName(String name) {
		if(name !=null && name.length()>1){
			this.name=name;   
		}else{
			System.out.println("Error");	
    }
}
*/
	public double getKf() {
		return kf;
	}
	
	public void setKf(double kf) {
		this.kf = kf;
	}
	
	//Абстрактный метод, которому нужна реализация в другом классе. Данный метод определяет цену за кв.м. работы
	public abstract void check();
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
/*// хз, что с этим методом пока делать
Метод kf, нужно будет переопределять в классах - наследниках, для получения определенного
кэфа, в зависимости от состояния здания или уровня ремонта
*/
	void kf(double s){
		kf = kf*s;
	}
}
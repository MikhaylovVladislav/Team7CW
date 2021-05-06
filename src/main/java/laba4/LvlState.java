package laba4;
public abstract class LvlState {
	//Создание имени и кэфа для переопределения в классах-наследниках
	private String name = "name";
	double kf = 1.0;



//методы гет и сет для переменной name, чтобы использовать экземлпярах
	public String getName() {
		return name;
	}
	public void setName(String name) {
		if(name !=null && name.length()>1){
			this.name=name;   
		}else{
			System.out.println("Erroпоr");	
    }
}

/*
Метод kf, нужно будет переопределять в классах - наследниках, для получения определенного
кэфа, в зависимости от состояния здания или уровня ремонта
*/
	void kf(double s){
		kf = kf*s;
	}
}
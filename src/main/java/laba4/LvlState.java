package laba4;
public abstract class LvlState {
	//—оздание имени и кэфа дл€ переопределени€ в классах-наследниках
	private String name = "name";
	double kf = 1.0;



//методы гет и сет дл€ переменной name, чтобы использовать экземлп€рах
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

/*
ћетод kf, нужно будет переопредел€ть в классах - наследниках, дл€ получени€ определенного
кэфа, в зависимости от состо€ни€ здани€ или уровн€ ремонта
*/
	void kf(double s){
		kf = kf*s;
	}
}
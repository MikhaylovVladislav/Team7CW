package laba4;
public abstract class LvlState {
	private double kf = 1.0;


/*// ���������� ��� ������
//������ ��� � ��� ��� ���������� name, ����� ������������ �����������
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
	
	//����������� �����, �������� ����� ���������� � ������ ������. ������ ����� ���������� ���� �� ��.�. ������
	public abstract void check();
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
/*// ��, ��� � ���� ������� ���� ������
����� kf, ����� ����� �������������� � ������� - �����������, ��� ��������� �������������
����, � ����������� �� ��������� ������ ��� ������ �������
*/
	void kf(double s){
		kf = kf*s;
	}
}
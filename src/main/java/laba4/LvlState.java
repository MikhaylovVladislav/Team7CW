package laba4;
public abstract class LvlState {
	//�������� ����� � ���� ��� ��������������� � �������-�����������
	private String name = "name";
	double kf = 1.0;



//������ ��� � ��� ��� ���������� name, ����� ������������ �����������
	public String getName() {
		return name;
	}
	public void setName(String name) {
		if(name !=null && name.length()>1){
			this.name=name;   
		}else{
			System.out.println("Erro��r");	
    }
}

/*
����� kf, ����� ����� �������������� � ������� - �����������, ��� ��������� �������������
����, � ����������� �� ��������� ������ ��� ������ �������
*/
	void kf(double s){
		kf = kf*s;
	}
}
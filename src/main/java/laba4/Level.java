package laba4;
public abstract class Level {
	// ���������� ��� ����������� ���������� ����.
	private double kf = 1.0;
	
	// ������ � ������ ��� ����������� ����������� ��������� ��������, ������-�������, ����� �������.
	public double getKf() {
		return kf;
	}
	
	public void setKf(double kf) {
		this.kf = kf;
	}
	
	//����������� �����, �������� ����� ���������� � ������ ������. ������ ����� ���������� ���� �� ��.�. �������
	public abstract void check();
	
	
	//����� ��� ��������������� ��� �������� ���������
	public abstract double promo(String promo, String Kfpromo);

	
	
	
	
	
	
	
	
	
	
	
}

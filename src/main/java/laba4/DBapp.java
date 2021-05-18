package laba4;

public class DBapp {
	
    private static boolean tema;

    DBapp (boolean tema) {
        this.tema = tema;
       
    }

    public static boolean getTema() {
        return tema;
    }

    public void setTema(boolean tema) {
        this.tema = tema;
    }
}
